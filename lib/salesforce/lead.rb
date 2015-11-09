module Salesforce
  class Lead < Base
      def create(opts={})
        post(opts)
      end

      def getAllLeads()
        getAll
      end
  end
end
