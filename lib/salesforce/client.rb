require 'restforce'

module Salesforce
  class Client

      def createLead(auth_keys = {}, opts = {})
        client = setRestfoceClient(auth_keys)
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

      def getLeads(auth_keys)
        client = setRestfoceClient(auth_keys)
        leads = client.query("select id, firstname, middlename , lastname, status, company, email, website, phone, title from Lead");
      end

      protected

      def setRestfoceClient(opts = {})
        Restforce.new :api_version => opts["api_version"],
                  :oauth_token => opts["oauth_token"],
                  :refresh_token => opts["refresh_token"],
                  :instance_url  => opts["instance_url"],
                  :client_id     => opts["client_id"],
                  :client_secret => opts["client_secret"]
      end
  end
end
