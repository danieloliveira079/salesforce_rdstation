require 'salesforce_rdstation'

RSpec.describe Salesforce, "setup api keys" do
  context "Initial setup for Salesforce API" do
    it "client keys should be equal after setup" do
      client_keys = {
          "api_version" => "32.0",
          "oauth_token" => "dummy",
          "refresh_token" => "dummy",
          "instance_url" => "dummy",
          "client_id" => "dummy",
          "client_secret" => "dummy"
        }

      obj = Salesforce::Base.new(client_keys)
      expect(obj.client_keys).to eq client_keys
    end

    it "client keys should not be equal after initializes without client keys" do
      client_keys = {
          "api_version" => "32.0",
          "oauth_token" => "dummy",
          "refresh_token" => "dummy",
          "instance_url" => "dummy",
          "client_id" => "dummy",
          "client_secret" => "dummy"
        }

      obj = Salesforce::Base.new
      expect(obj.client_keys).not_to eq client_keys
    end
  end

  context "Restforce Integration" do
    it "should create a new lead on Salesforce" do
      client_keys = {
          "api_version" => "32.0",
          "oauth_token" => "00D61000000eBTd!AREAQP626jDXLEGK08IgZ3_k2u24PiDydggcs.rFDYqf5xeLBkPhU0Dkz_MYMEt8joxnZzA0LyId0XNJr_h.5L99i4y2wjdJ",
          "refresh_token" => nil,
          "instance_url" => "https://na34.salesforce.com",
          "client_id" => "3MVG9KI2HHAq33RxE3uJ6fN7r8Ni2mAGzpVhlQeKePV7GxYdNGe65yXkxVk.ySXzgy8KZ52i0QRhlTOpBCkXb",
          "client_secret" => "915198885628210263"
        }

      opts = {
        :name => "Teste Spec",
        :middleName => "Middle Name",
        :lastName => "Last Name",
        :status => "New",
        :company => "Octops",
        :email => "octops@octops.com",
        :website => "http://www.octops.com",
        :phone => "+44 553434",
        :jobTitle => "Engineer"
      }

      obj = Salesforce::Lead.new(client_keys)
      obj.create(opts)

      expect(obj.client_keys).to eq client_keys
    end
  end

end
