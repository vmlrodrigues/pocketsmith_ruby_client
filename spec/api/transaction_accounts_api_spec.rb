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

# Unit tests for PocketsmithClient::TransactionAccountsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TransactionAccountsApi' do
  before do
    # run before each test
    @api_instance = PocketsmithClient::TransactionAccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionAccountsApi' do
    it 'should create an instance of TransactionAccountsApi' do
      expect(@api_instance).to be_instance_of(PocketsmithClient::TransactionAccountsApi)
    end
  end

  # unit tests for transaction_accounts_id_get
  # Get transaction account
  # Gets a transaction account by its ID.
  # @param id The unique identifier of the transaction account.
  # @param [Hash] opts the optional parameters
  # @return [TransactionAccount]
  describe 'transaction_accounts_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for transaction_accounts_id_put
  # Update transaction account
  # Updates the transaction account by its ID.
  # @param id The unique identifier of the transaction account.
  # @param [Hash] opts the optional parameters
  # @option opts [TransactionAccountsIdPutRequest] :transaction_accounts_id_put_request 
  # @return [TransactionAccount]
  describe 'transaction_accounts_id_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for users_id_transaction_accounts_get
  # List transaction accounts in user
  # List all transaction accounts belonging to a user.
  # @param id The unique identifier of the user.
  # @param [Hash] opts the optional parameters
  # @return [Array<TransactionAccount>]
  describe 'users_id_transaction_accounts_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
