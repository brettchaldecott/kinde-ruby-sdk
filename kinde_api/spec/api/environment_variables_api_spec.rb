=begin
#Kinde Management API

# Provides endpoints to manage your Kinde Businesses.  ## Intro  ## How to use  1. [Set up and authorize a machine-to-machine (M2M) application](https://docs.kinde.com/developer-tools/kinde-api/connect-to-kinde-api/).  2. [Generate a test access token](https://docs.kinde.com/developer-tools/kinde-api/access-token-for-api/)  3. Test request any endpoint using the test token 

The version of the OpenAPI document: 1
Contact: support@kinde.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for KindeApi::EnvironmentVariablesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EnvironmentVariablesApi' do
  before do
    # run before each test
    @api_instance = KindeApi::EnvironmentVariablesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EnvironmentVariablesApi' do
    it 'should create an instance of EnvironmentVariablesApi' do
      expect(@api_instance).to be_instance_of(KindeApi::EnvironmentVariablesApi)
    end
  end

  # unit tests for create_environment_variable
  # Create environment variable
  # Create a new environment variable. This feature is in beta and admin UI is not yet available.  &lt;div&gt;   &lt;code&gt;create:environment_variables&lt;/code&gt; &lt;/div&gt; 
  # @param create_environment_variable_request The environment variable details.
  # @param [Hash] opts the optional parameters
  # @return [CreateEnvironmentVariableResponse]
  describe 'create_environment_variable test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_environment_variable
  # Delete environment variable
  # Delete an environment variable you previously created. This feature is in beta and admin UI is not yet available.  &lt;div&gt;   &lt;code&gt;delete:environment_variables&lt;/code&gt; &lt;/div&gt; 
  # @param variable_id The environment variable&#39;s ID.
  # @param [Hash] opts the optional parameters
  # @return [DeleteEnvironmentVariableResponse]
  describe 'delete_environment_variable test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_environment_variable
  # Get environment variable
  # Retrieve environment variable details by ID. This feature is in beta and admin UI is not yet available.  &lt;div&gt;   &lt;code&gt;read:environment_variables&lt;/code&gt; &lt;/div&gt; 
  # @param variable_id The environment variable&#39;s ID.
  # @param [Hash] opts the optional parameters
  # @return [GetEnvironmentVariableResponse]
  describe 'get_environment_variable test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_environment_variables
  # Get environment variables
  # Get environment variables. This feature is in beta and admin UI is not yet available.  &lt;div&gt;   &lt;code&gt;read:environment_variables&lt;/code&gt; &lt;/div&gt; 
  # @param [Hash] opts the optional parameters
  # @return [GetEnvironmentVariablesResponse]
  describe 'get_environment_variables test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_environment_variable
  # Update environment variable
  # Update an environment variable you previously created. This feature is in beta and admin UI is not yet available.  &lt;div&gt;   &lt;code&gt;update:environment_variables&lt;/code&gt; &lt;/div&gt; 
  # @param variable_id The environment variable&#39;s ID.
  # @param update_environment_variable_request The new details for the environment variable
  # @param [Hash] opts the optional parameters
  # @return [UpdateEnvironmentVariableResponse]
  describe 'update_environment_variable test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
