$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'sequel'
require 'sequel/plugins/sluggable'
require 'rspec'

# Create model to test on
DB = Sequel.sqlite
DB.create_table :items do
  primary_key :id
  String :name
  String :slug
  String :sluggie
end

class Item < Sequel::Model; end

RSpec.configure do |config|
  config.after(:each)  { DB[:items].delete }
  config.expect_with(:rspec) { |c| c.syntax = :should }
end
