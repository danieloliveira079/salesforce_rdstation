require 'restforce'

module Salesforce
  class Base

    @client_keys = {
      "api_version" => "32.0",
      "oauth_token" => "",
      "refresh_token" => "",
      "instance_url" => "",
      "client_id" => "",
      "client_secret" => ""
    }

    NEW_STATUS = "New"

    def initialize(opts=nil)
      setup_client_keys(opts)
    end

    def client_keys
      @client_keys
    end

    protected
    def setup_client_keys(client_keys)
        if !client_keys.nil?
          @client_keys = client_keys
        end
    end

    def restforceClient

      Restforce.new :api_version => client_keys["api_version"],
                :oauth_token => client_keys["oauth_token"],
                :refresh_token => client_keys["refresh_token"],
                :instance_url  => client_keys["instance_url"],
                :client_id     => client_keys["client_id"],
                :client_secret => client_keys["client_secret"]
    end

    def post(opts={})
        client = restforceClient;
        newLead = client.create('Lead',
                  FirstName: opts[:name],
                  MiddleName: opts[:middleName],
                  LastName: opts[:lastName],
                  Status: 'New',
                  Company: opts[:company],
                  Email: opts[:email],
                  Website: opts[:website],
                  Phone: opts[:phone],
                  Title: opts[:jobTitle]);
    end

  end
end
