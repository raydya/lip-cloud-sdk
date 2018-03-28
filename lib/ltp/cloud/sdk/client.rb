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

        def request(service, payload)
          res = RestClient.get(uri(service), params: payload)
          res.body
        end

        def uri(service)
          "#{END_POINT}#{service}"
        end

        def analysis(text)
          payload = request_payload({ text: URI::encode(text), pattern: 'ws' })
          res = request 'analysis', payload
          res.split(' ')
        end
      end
    end
  end
end