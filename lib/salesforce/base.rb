module Salesforce
  class Base
    CLIENT_KEYS = {
      "api_version" => "32.0",
      "oauth_token" => "",
      "refresh_token" => "",
      "instance_url" => "",
      "client_id" => "",
      "client_secret" => ""
    }

    def initialize(client_keys=nil)
      setup_client_keys(client_keys)
    end

    def self.hola
      puts "Olá"
    end

    protected

    def setup_client_keys(client_keys)
        if !client_keys.nil?
          CLIENT_KEYS[:api_version] = client_keys[:api_version]
        end
    end

  end
end
