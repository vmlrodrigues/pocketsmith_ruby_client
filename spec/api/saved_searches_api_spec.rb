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

# Unit tests for OpenapiClient::SavedSearchesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SavedSearchesApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::SavedSearchesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SavedSearchesApi' do
    it 'should create an instance of SavedSearchesApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::SavedSearchesApi)
    end
  end

  # unit tests for users_id_saved_searches_get
  # List saved searches in user
  # Lists saved searches belonging to a user by their ID.
  # @param id The unique identifier of the user.
  # @param [Hash] opts the optional parameters
  # @return [Array<SavedSearch>]
  describe 'users_id_saved_searches_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
