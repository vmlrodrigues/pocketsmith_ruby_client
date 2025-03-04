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

# Unit tests for PocketsmithClient::UsersIdCategoriesPostRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe PocketsmithClient::UsersIdCategoriesPostRequest do
  let(:instance) { PocketsmithClient::UsersIdCategoriesPostRequest.new }

  describe 'test an instance of UsersIdCategoriesPostRequest' do
    it 'should create an instance of UsersIdCategoriesPostRequest' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(PocketsmithClient::UsersIdCategoriesPostRequest)
    end
  end

  describe 'test attribute "title"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "colour"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "parent_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "is_transfer"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "is_bill"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "roll_up"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "refund_behaviour"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["debits_are_deductions", "credits_are_refunds"])
      # validator.allowable_values.each do |value|
      #   expect { instance.refund_behaviour = value }.not_to raise_error
      # end
    end
  end

end
