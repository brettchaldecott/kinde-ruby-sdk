=begin
#Kinde Management API

#Provides endpoints to manage your Kinde Businesses

The version of the OpenAPI document: 0.0.1
Contact: support@kinde.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module KindeSdk
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a user record
    # Creates a user record and optionally zero or more identities for the user. An example identity could be the email address of the user 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateUserRequest] :create_user_request The details of the user to create
    # @return [CreateUser200Response]
    def create_user(opts = {})
      data, _status_code, _headers = create_user_with_http_info(opts)
      data
    end

    # Creates a user record
    # Creates a user record and optionally zero or more identities for the user. An example identity could be the email address of the user 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateUserRequest] :create_user_request The details of the user to create
    # @return [Array<(CreateUser200Response, Integer, Hash)>] CreateUser200Response data, response status code and response headers
    def create_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.create_user ...'
      end
      # resource path
      local_var_path = '/api/v1/user'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_user_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateUser200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"UsersApi.create_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a paginated list of end-user records for a business
    # The returned list can be sorted by full name or email address in ascending or descending order. The number of records to return at a time can also be controlled using the page_size query string parameter. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort Describes the field and order to sort the result by
    # @option opts [Integer] :page_size The number of items to return
    # @option opts [Integer] :user_id The id of the user to filter by
    # @option opts [String] :next_token A string to get the next page of results if there are more results
    # @return [Array<User>]
    def get_users(opts = {})
      data, _status_code, _headers = get_users_with_http_info(opts)
      data
    end

    # Returns a paginated list of end-user records for a business
    # The returned list can be sorted by full name or email address in ascending or descending order. The number of records to return at a time can also be controlled using the page_size query string parameter. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort Describes the field and order to sort the result by
    # @option opts [Integer] :page_size The number of items to return
    # @option opts [Integer] :user_id The id of the user to filter by
    # @option opts [String] :next_token A string to get the next page of results if there are more results
    # @return [Array<(Array<User>, Integer, Hash)>] Array<User> data, response status code and response headers
    def get_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_users ...'
      end
      allowable_values = ["name_asc", "name_desc", "email_asc", "email_desc"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v1/users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'user_id'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'next_token'] = opts[:'next_token'] if !opts[:'next_token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<User>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"UsersApi.get_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
