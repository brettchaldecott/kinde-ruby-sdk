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

# Unit tests for KindeApi::CreateApplicationRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe KindeApi::CreateApplicationRequest do
  let(:instance) { KindeApi::CreateApplicationRequest.new }

  describe 'test an instance of CreateApplicationRequest' do
    it 'should create an instance of CreateApplicationRequest' do
      expect(instance).to be_instance_of(KindeApi::CreateApplicationRequest)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["reg", "spa", "m2m"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

end
