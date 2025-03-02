=begin
#PocketSmith

#The PocketSmith API

The version of the OpenAPI document: 2.0
Contact: api@pocketsmith.com
Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PocketsmithRubyClient::AccountsIdPutRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe PocketsmithRubyClient::AccountsIdPutRequest do
  let(:instance) { PocketsmithRubyClient::AccountsIdPutRequest.new }

  describe 'test an instance of AccountsIdPutRequest' do
    it 'should create an instance of AccountsIdPutRequest' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(PocketsmithRubyClient::AccountsIdPutRequest)
    end
  end

  describe 'test attribute "title"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "currency_code"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["bank", "credits", "cash", "loans", "mortgage", "stocks", "vehicle", "property", "insurance", "other_asset", "other_liability"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "is_net_worth"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
