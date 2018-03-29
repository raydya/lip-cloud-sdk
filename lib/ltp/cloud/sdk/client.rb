require 'rest-client'
require 'json'

module Ltp
  module Cloud
    module Sdk
      class Client
        attr_accessor :api_key

        END_POINT = 'https://api.ltp-cloud.com/'.freeze

        def initialize(api_key)
          self.api_key = api_key
        end

        def self.with(api_key)
          new(api_key)
        end

        def request_payload(data)
          {
            api_key: api_key,
            format:  'plain'
          }.merge data
        end

        def request(service, payload, timeout)
          res = RestClient::Request.execute(method:  :get,
                                            url:     uri(service),
                                            timeout: timeout,
                                            headers: { params: payload }
          )
          res.body
        end

        def uri(service)
          "#{END_POINT}#{service}"
        end

        def analysis(text, timeout = 5)
          payload = request_payload({ text: CGI::escape(text), pattern: 'ws' })
          res     = request 'analysis', payload, timeout
          res.split(' ')
        end
      end
    end
  end
end