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

# Unit tests for PocketsmithClient::CurrenciesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CurrenciesApi' do
  before do
    # run before each test
    @api_instance = PocketsmithClient::CurrenciesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CurrenciesApi' do
    it 'should create an instance of CurrenciesApi' do
      expect(@api_instance).to be_instance_of(PocketsmithClient::CurrenciesApi)
    end
  end

  # unit tests for currencies_get
  # List currencies
  # Lists currencies supported by PocketSmith.
  # @param [Hash] opts the optional parameters
  # @return [Array<Currency>]
  describe 'currencies_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for currencies_id_get
  # Get currency
  # Gets a particular currency by its ID.
  # @param id The unique identifier of the currency.
  # @param [Hash] opts the optional parameters
  # @return [Currency]
  describe 'currencies_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
