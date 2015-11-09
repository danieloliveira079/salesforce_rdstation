require 'minitest/autorun'
require 'salesforce_rdstation'

class SailsforceRdStationTest < Minitest::Test

=begin

  def test_setup_client_keys
    client_keys = {
      "api_version" => "32.0",
      "oauth_token" => "asd",
      "refresh_token" => "",
      "instance_url" => "",
      "client_id" => "",
      "client_secret" => ""
    }

    assert_equal client_keys,
          Salesforce::Base.new(client_keys).client_keys

  end
=end

end
