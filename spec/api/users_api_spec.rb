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

# Unit tests for OpenapiClient::UsersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UsersApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::UsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersApi' do
    it 'should create an instance of UsersApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::UsersApi)
    end
  end

  # unit tests for me_get
  # Get the authorised user
  # Gets the user that corresponds to the access token used in the request.
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'me_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for users_id_get
  # Get user
  # Gets a user by ID. You must be authorised as the target user in order to make this request.
  # @param id The unique identifier of the user.
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'users_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for users_id_put
  # Update user
  # Updates the user by their ID. You must be authorised as the target user in order to make this request.
  # @param id The unique identifier of the user.
  # @param [Hash] opts the optional parameters
  # @option opts [UsersIdPutRequest] :users_id_put_request 
  # @return [User]
  describe 'users_id_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
