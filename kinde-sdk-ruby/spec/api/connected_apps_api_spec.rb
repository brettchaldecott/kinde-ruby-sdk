=begin
#Kinde Management API

#Provides endpoints to manage your Kinde Businesses

The version of the OpenAPI document: 1
Contact: support@kinde.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for KindeSdk::ConnectedAppsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ConnectedAppsApi' do
  before do
    # run before each test
    @api_instance = KindeSdk::ConnectedAppsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConnectedAppsApi' do
    it 'should create an instance of ConnectedAppsApi' do
      expect(@api_instance).to be_instance_of(KindeSdk::ConnectedAppsApi)
    end
  end

  # unit tests for get_connected_app_auth_url
  # Get Connected App URL
  # Get a URL that authenticates and authorizes a user to a third-party connected app
  # @param key_code_ref The unique key code reference of the connected app to authenticate against.
  # @param user_id The id of the user that needs to authenticate to the third-party connected app.
  # @param [Hash] opts the optional parameters
  # @return [ConnectedAppsAuthUrl]
  describe 'get_connected_app_auth_url test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_connected_app_token
  # Get Connected App Token
  # Get an access token that can be used to call the third-party provider linked to the connected app
  # @param session_id The unique sesssion id reprensenting the login session of a user.
  # @param [Hash] opts the optional parameters
  # @return [ConnectedAppsAccessToken]
  describe 'get_connected_app_token test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for revoke_connected_app_token
  # Revoke Connected App Token
  # Revoke the tokens linked to the connected app session
  # @param session_id The unique sesssion id reprensenting the login session of a user.
  # @param [Hash] opts the optional parameters
  # @return [ApiResult]
  describe 'revoke_connected_app_token test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
