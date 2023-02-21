=begin
#Kinde Management API

#Provides endpoints to manage your Kinde Businesses

The version of the OpenAPI document: 1
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
    # Assign Users to an Organization
    # Add existing users to an organization.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :code The organization&#39;s code.
    # @option opts [AddOrganizationUsersRequest] :add_organization_users_request 
    # @return [AddOrganizationUsers200Response]
    def add_organization_users(opts = {})
      data, _status_code, _headers = add_organization_users_with_http_info(opts)
      data
    end

    # Assign Users to an Organization
    # Add existing users to an organization.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :code The organization&#39;s code.
    # @option opts [AddOrganizationUsersRequest] :add_organization_users_request 
    # @return [Array<(AddOrganizationUsers200Response, Integer, Hash)>] AddOrganizationUsers200Response data, response status code and response headers
    def add_organization_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.add_organization_users ...'
      end
      # resource path
      local_var_path = '/api/v1/organization/users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'code'] = opts[:'code'] if !opts[:'code'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'add_organization_users_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'AddOrganizationUsers200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"UsersApi.add_organization_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#add_organization_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create User
    # Creates a user record and optionally zero or more identities for the user. An example identity could be the email address of the user. 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateUserRequest] :create_user_request The details of the user to create.
    # @return [CreateUser200Response]
    def create_user(opts = {})
      data, _status_code, _headers = create_user_with_http_info(opts)
      data
    end

    # Create User
    # Creates a user record and optionally zero or more identities for the user. An example identity could be the email address of the user. 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateUserRequest] :create_user_request The details of the user to create.
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

    # Delete User
    # Delete a user record 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The user&#39;s id.
    # @return [nil]
    def deleteuser(opts = {})
      deleteuser_with_http_info(opts)
      nil
    end

    # Delete User
    # Delete a user record 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The user&#39;s id.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def deleteuser_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.deleteuser ...'
      end
      # resource path
      local_var_path = '/api/v1/user'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"UsersApi.deleteuser",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#deleteuser\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Organization Users
    # Get users in an organizaiton.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort Field and order to sort the result by.
    # @option opts [Integer] :page_size Number of results per page. Defaults to 10 if parameter not sent.
    # @option opts [String] :next_token A string to get the next page of results if there are more results.
    # @option opts [String] :code The organization&#39;s code.
    # @return [OrganizationUser]
    def get_organization_users(opts = {})
      data, _status_code, _headers = get_organization_users_with_http_info(opts)
      data
    end

    # List Organization Users
    # Get users in an organizaiton.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort Field and order to sort the result by.
    # @option opts [Integer] :page_size Number of results per page. Defaults to 10 if parameter not sent.
    # @option opts [String] :next_token A string to get the next page of results if there are more results.
    # @option opts [String] :code The organization&#39;s code.
    # @return [Array<(OrganizationUser, Integer, Hash)>] OrganizationUser data, response status code and response headers
    def get_organization_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_organization_users ...'
      end
      allowable_values = ["name_asc", "name_desc", "email_asc", "email_desc"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v1/organization/users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'next_token'] = opts[:'next_token'] if !opts[:'next_token'].nil?
      query_params[:'code'] = opts[:'code'] if !opts[:'code'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'OrganizationUser'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"UsersApi.get_organization_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_organization_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get User
    # Retrieve a user record 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The user&#39;s id.
    # @return [User]
    def get_user(opts = {})
      data, _status_code, _headers = get_user_with_http_info(opts)
      data
    end

    # Get User
    # Retrieve a user record 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The user&#39;s id.
    # @return [Array<(User, Integer, Hash)>] User data, response status code and response headers
    def get_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_user ...'
      end
      # resource path
      local_var_path = '/api/v1/user'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'User'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"UsersApi.get_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Users
    # The returned list can be sorted by full name or email address in ascending or descending order. The number of records to return at a time can also be controlled using the `page_size` query string parameter. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort Field and order to sort the result by.
    # @option opts [Integer] :page_size Number of results per page. Defaults to 10 if parameter not sent.
    # @option opts [Integer] :user_id ID of the user to filter by.
    # @option opts [String] :next_token A string to get the next page of results if there are more results.
    # @return [Array<User>]
    def get_users(opts = {})
      data, _status_code, _headers = get_users_with_http_info(opts)
      data
    end

    # List Users
    # The returned list can be sorted by full name or email address in ascending or descending order. The number of records to return at a time can also be controlled using the &#x60;page_size&#x60; query string parameter. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort Field and order to sort the result by.
    # @option opts [Integer] :page_size Number of results per page. Defaults to 10 if parameter not sent.
    # @option opts [Integer] :user_id ID of the user to filter by.
    # @option opts [String] :next_token A string to get the next page of results if there are more results.
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

    # Remove Users from an Organization
    # Remove existing users from an organization.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :code The organization&#39;s code.
    # @option opts [RemoveOrganizationUsersRequest] :remove_organization_users_request 
    # @return [RemoveOrganizationUsers200Response]
    def remove_organization_users(opts = {})
      data, _status_code, _headers = remove_organization_users_with_http_info(opts)
      data
    end

    # Remove Users from an Organization
    # Remove existing users from an organization.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :code The organization&#39;s code.
    # @option opts [RemoveOrganizationUsersRequest] :remove_organization_users_request 
    # @return [Array<(RemoveOrganizationUsers200Response, Integer, Hash)>] RemoveOrganizationUsers200Response data, response status code and response headers
    def remove_organization_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.remove_organization_users ...'
      end
      # resource path
      local_var_path = '/api/v1/organization/users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'code'] = opts[:'code'] if !opts[:'code'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'remove_organization_users_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'RemoveOrganizationUsers200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"UsersApi.remove_organization_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#remove_organization_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update User
    # Update a user record 
    # @param update_user_request [UpdateUserRequest] The user to update.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The user&#39;s id.
    # @return [User]
    def update_user(update_user_request, opts = {})
      data, _status_code, _headers = update_user_with_http_info(update_user_request, opts)
      data
    end

    # Update User
    # Update a user record 
    # @param update_user_request [UpdateUserRequest] The user to update.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id The user&#39;s id.
    # @return [Array<(User, Integer, Hash)>] User data, response status code and response headers
    def update_user_with_http_info(update_user_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.update_user ...'
      end
      # verify the required parameter 'update_user_request' is set
      if @api_client.config.client_side_validation && update_user_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_user_request' when calling UsersApi.update_user"
      end
      # resource path
      local_var_path = '/api/v1/user'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_user_request)

      # return_type
      return_type = opts[:debug_return_type] || 'User'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"UsersApi.update_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#update_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
