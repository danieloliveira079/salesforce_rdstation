module Salesforce
  class Lead < Base
      def create(opts={})
        post(opts)
      end
  end
end
