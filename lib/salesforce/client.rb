require 'restforce'

module Salesforce
  class Client
      def self.client(opts={})
          Restforce.new :api_version => opts["api_version"],
                    :oauth_token => opts["oauth_token"],
                    :refresh_token => opts["refresh_token"],
                    :instance_url  => opts["instance_url"],
                    :client_id     => opts["client_id"],
                    :client_secret => opts["client_secret"]
        end
  end
end
