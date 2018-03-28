require "ltp/cloud/sdk/version"
require 'ltp/cloud/sdk/client'

module Ltp
  module Cloud
    module Sdk
      class << self
        attr_accessor :api_key

        def configure
          yield self if block_given?
        end

        def client
          @client ||= Client.with(api_key)
        end
      end
    end
  end
end
