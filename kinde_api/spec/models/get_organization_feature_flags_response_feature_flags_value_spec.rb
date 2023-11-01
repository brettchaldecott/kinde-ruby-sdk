=begin
#Kinde Management API

#Provides endpoints to manage your Kinde Businesses

The version of the OpenAPI document: 1
Contact: support@kinde.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for KindeApi::GetOrganizationFeatureFlagsResponseFeatureFlagsValue
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe KindeApi::GetOrganizationFeatureFlagsResponseFeatureFlagsValue do
  let(:instance) { KindeApi::GetOrganizationFeatureFlagsResponseFeatureFlagsValue.new }

  describe 'test an instance of GetOrganizationFeatureFlagsResponseFeatureFlagsValue' do
    it 'should create an instance of GetOrganizationFeatureFlagsResponseFeatureFlagsValue' do
      expect(instance).to be_instance_of(KindeApi::GetOrganizationFeatureFlagsResponseFeatureFlagsValue)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["str", "int", "bool"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
