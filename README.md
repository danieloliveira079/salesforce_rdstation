# Salesforce RD Station
A small gem that can be used to import Leads from [Railsforce App](https://github.com/danieloliveira079/railsforce-app) project into [Salesforce](http://www.salesforce.com).

Features include:

* List all Leads from Salesforce website
* Create new Leads on Salesforce by importing from RD Station 

###Install

You can install the latest code for the salesforce_rdstation gem in a project by including this line in your Gemfile

```ruby
$ gem 'salesforce_rdstation', :git => "git://github.com/danieloliveira079/salesforce_rdstation.git"
```

And then execute bundle to get the fresh added gem installed on your local machine

```ruby
$ bundle
```

###Usage

Salesforce RD Station is pretty simple and easy to be used. All you have to do when calling Create or GetAllLeads methods is to provide all the OAuth details used by your application to connect to Salesforce. There are many good middlewares available on the internet. One of them is [Omniauth](https://github.com/intridea/omniauth). 

### How to instantiate the Salesforce client

```ruby
   client = Salesforce::Lead.new(client_keys)
```

### How to create and submit a Lead to Salesforce

```ruby
client_keys = {
   "api_version" => "32.0",
   "oauth_token" => current_user.oauth_token, # authentication middleware info
   "refresh_token" => current_user.refresh_token, # authentication middleware info
   "instance_url" => current_user.instance_url, # authentication middleware info
   "client_id" => appSettings.client_id, # provided by Salesforce when you create a Connected App
   "client_secret" => appSettings.client_secret # provided by Salesforce when you create a Connected App
 }
 
 client = Salesforce::Lead.new(client_keys)
 
 payload = {
            :name => lead.name,
            :middleName => lead.middle_name,
            :lastName => lead.last_name,
            :status => "New",
            :company => lead.company,
            :email => lead.email,
            :website => lead.website,
            :phone => lead.phone,
            :jobTitle => lead.job_title
          }
          
  newLead = @client.create(payload)
     
     
```

### How to retrive all Leads from Salesforce

```ruby
client_keys = {
   "api_version" => "32.0",
   "oauth_token" => current_user.oauth_token, # authentication middleware info
   "refresh_token" => current_user.refresh_token, # authentication middleware info
   "instance_url" => current_user.instance_url, # authentication middleware info
   "client_id" => appSettings.client_id, # provided by Salesforce when you create a Connected App
   "client_secret" => appSettings.client_secret # provided by Salesforce when you create a Connected App
 }
 
 client = Salesforce::Lead.new(client_keys)
          
  leads = @client.getAllLeads
```

### Test

Run gem tests using [RSpec](http://rspec.info/)

```ruby
$ rspec --format doc
```
