require 'salesforce/client'

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


    def post(opts={})
        Salesforce::Client.new.createLead(client_keys, opts);
    end

    def getAll()
        Salesforce::Client.new.getLeads(client_keys)
    end

  end
end
