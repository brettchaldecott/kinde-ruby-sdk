=begin
#Kinde Management API

#Provides endpoints to manage your Kinde Businesses

The version of the OpenAPI document: 1
Contact: support@kinde.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0

=end

require 'cgi'

module KindeApi
  class OrganizationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add organization users
    # Add existing users to an organization.
    # @param org_code [String] The organization&#39;s code.
    # @param [Hash] opts the optional parameters
    # @option opts [AddOrganizationUsersRequest] :add_organization_users_request 
    # @return [AddOrganizationUsersResponse]
    def add_organization_users(org_code, opts = {})
      data, _status_code, _headers = add_organization_users_with_http_info(org_code, opts)
      data
    end

    # Add organization users
    # Add existing users to an organization.
    # @param org_code [String] The organization&#39;s code.
    # @param [Hash] opts the optional parameters
    # @option opts [AddOrganizationUsersRequest] :add_organization_users_request 
    # @return [Array<(AddOrganizationUsersResponse, Integer, Hash)>] AddOrganizationUsersResponse data, response status code and response headers
    def add_organization_users_with_http_info(org_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.add_organization_users ...'
      end
      # verify the required parameter 'org_code' is set
      if @api_client.config.client_side_validation && org_code.nil?
        fail ArgumentError, "Missing the required parameter 'org_code' when calling OrganizationsApi.add_organization_users"
      end
      # resource path
      local_var_path = '/api/v1/organizations/{org_code}/users'.sub('{' + 'org_code' + '}', CGI.escape(org_code.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/json; charset=utf-8'])
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
      return_type = opts[:debug_return_type] || 'AddOrganizationUsersResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.add_organization_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#add_organization_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Organization
    # Create an organization.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateOrganizationRequest] :create_organization_request Organization details.
    # @return [CreateOrganizationResponse]
    def create_organization(opts = {})
      data, _status_code, _headers = create_organization_with_http_info(opts)
      data
    end

    # Create Organization
    # Create an organization.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateOrganizationRequest] :create_organization_request Organization details.
    # @return [Array<(CreateOrganizationResponse, Integer, Hash)>] CreateOrganizationResponse data, response status code and response headers
    def create_organization_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.create_organization ...'
      end
      # resource path
      local_var_path = '/api/v1/organization'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_organization_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateOrganizationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.create_organization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#create_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete organization feature flag override
    # Delete organization feature flag override.
    # @param org_code [String] The identifier for the organization.
    # @param feature_flag_key [String] The identifier for the feature flag.
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def delete_organization_feature_flag_override(org_code, feature_flag_key, opts = {})
      data, _status_code, _headers = delete_organization_feature_flag_override_with_http_info(org_code, feature_flag_key, opts)
      data
    end

    # Delete organization feature flag override
    # Delete organization feature flag override.
    # @param org_code [String] The identifier for the organization.
    # @param feature_flag_key [String] The identifier for the feature flag.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Integer, Hash)>] SuccessResponse data, response status code and response headers
    def delete_organization_feature_flag_override_with_http_info(org_code, feature_flag_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.delete_organization_feature_flag_override ...'
      end
      # verify the required parameter 'org_code' is set
      if @api_client.config.client_side_validation && org_code.nil?
        fail ArgumentError, "Missing the required parameter 'org_code' when calling OrganizationsApi.delete_organization_feature_flag_override"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling OrganizationsApi.delete_organization_feature_flag_override"
      end
      # resource path
      local_var_path = '/api/v1/organizations/{org_code}/feature_flags/{feature_flag_key}'.sub('{' + 'org_code' + '}', CGI.escape(org_code.to_s)).sub('{' + 'feature_flag_key' + '}', CGI.escape(feature_flag_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/json; charset=utf-8'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.delete_organization_feature_flag_override",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#delete_organization_feature_flag_override\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all organization feature flag overrides
    # Delete all organization feature flag overrides.
    # @param org_code [String] The identifier for the organization.
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def delete_organization_feature_flag_overrides(org_code, opts = {})
      data, _status_code, _headers = delete_organization_feature_flag_overrides_with_http_info(org_code, opts)
      data
    end

    # Delete all organization feature flag overrides
    # Delete all organization feature flag overrides.
    # @param org_code [String] The identifier for the organization.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Integer, Hash)>] SuccessResponse data, response status code and response headers
    def delete_organization_feature_flag_overrides_with_http_info(org_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.delete_organization_feature_flag_overrides ...'
      end
      # verify the required parameter 'org_code' is set
      if @api_client.config.client_side_validation && org_code.nil?
        fail ArgumentError, "Missing the required parameter 'org_code' when calling OrganizationsApi.delete_organization_feature_flag_overrides"
      end
      # resource path
      local_var_path = '/api/v1/organizations/{org_code}/feature_flags'.sub('{' + 'org_code' + '}', CGI.escape(org_code.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/json; charset=utf-8'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.delete_organization_feature_flag_overrides",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#delete_organization_feature_flag_overrides\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Organization
    # Gets an organization given the organization's code. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :code The organization&#39;s code.
    # @return [Organization]
    def get_organization(opts = {})
      data, _status_code, _headers = get_organization_with_http_info(opts)
      data
    end

    # Get Organization
    # Gets an organization given the organization&#39;s code. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :code The organization&#39;s code.
    # @return [Array<(Organization, Integer, Hash)>] Organization data, response status code and response headers
    def get_organization_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.get_organization ...'
      end
      # resource path
      local_var_path = '/api/v1/organization'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'code'] = opts[:'code'] if !opts[:'code'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/json; charset=utf-8'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Organization'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.get_organization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#get_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Organization Users
    # Get users in an organization.
    # @param org_code [String] The organization&#39;s code.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort Field and order to sort the result by.
    # @option opts [Integer] :page_size Number of results per page. Defaults to 10 if parameter not sent.
    # @option opts [String] :next_token A string to get the next page of results if there are more results.
    # @option opts [String] :permissions Filter by user permissions
    # @return [GetOrganizationsUsersResponse]
    def get_organization_users(org_code, opts = {})
      data, _status_code, _headers = get_organization_users_with_http_info(org_code, opts)
      data
    end

    # List Organization Users
    # Get users in an organization.
    # @param org_code [String] The organization&#39;s code.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort Field and order to sort the result by.
    # @option opts [Integer] :page_size Number of results per page. Defaults to 10 if parameter not sent.
    # @option opts [String] :next_token A string to get the next page of results if there are more results.
    # @option opts [String] :permissions Filter by user permissions
    # @return [Array<(GetOrganizationsUsersResponse, Integer, Hash)>] GetOrganizationsUsersResponse data, response status code and response headers
    def get_organization_users_with_http_info(org_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.get_organization_users ...'
      end
      # verify the required parameter 'org_code' is set
      if @api_client.config.client_side_validation && org_code.nil?
        fail ArgumentError, "Missing the required parameter 'org_code' when calling OrganizationsApi.get_organization_users"
      end
      allowable_values = ["name_asc", "name_desc", "email_asc", "email_desc"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v1/organizations/{org_code}/users'.sub('{' + 'org_code' + '}', CGI.escape(org_code.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'next_token'] = opts[:'next_token'] if !opts[:'next_token'].nil?
      query_params[:'permissions'] = opts[:'permissions'] if !opts[:'permissions'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/json; charset=utf-8'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetOrganizationsUsersResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.get_organization_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#get_organization_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Organizations
    # Get a list of organizations. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort Field and order to sort the result by.
    # @option opts [Integer] :page_size Number of results per page. Defaults to 10 if parameter not sent.
    # @option opts [String] :next_token A string to get the next page of results if there are more results.
    # @return [GetOrganizationsResponse]
    def get_organizations(opts = {})
      data, _status_code, _headers = get_organizations_with_http_info(opts)
      data
    end

    # List Organizations
    # Get a list of organizations. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort Field and order to sort the result by.
    # @option opts [Integer] :page_size Number of results per page. Defaults to 10 if parameter not sent.
    # @option opts [String] :next_token A string to get the next page of results if there are more results.
    # @return [Array<(GetOrganizationsResponse, Integer, Hash)>] GetOrganizationsResponse data, response status code and response headers
    def get_organizations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.get_organizations ...'
      end
      allowable_values = ["name_asc", "name_desc", "email_asc", "email_desc"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v1/organizations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'next_token'] = opts[:'next_token'] if !opts[:'next_token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/json; charset=utf-8'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetOrganizationsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.get_organizations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#get_organizations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove organization user
    # Remove user from an organization.
    # @param org_code [String] The organization&#39;s code.
    # @param user_id [String] The user&#39;s id.
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def remove_organization_user(org_code, user_id, opts = {})
      data, _status_code, _headers = remove_organization_user_with_http_info(org_code, user_id, opts)
      data
    end

    # Remove organization user
    # Remove user from an organization.
    # @param org_code [String] The organization&#39;s code.
    # @param user_id [String] The user&#39;s id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Integer, Hash)>] SuccessResponse data, response status code and response headers
    def remove_organization_user_with_http_info(org_code, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.remove_organization_user ...'
      end
      # verify the required parameter 'org_code' is set
      if @api_client.config.client_side_validation && org_code.nil?
        fail ArgumentError, "Missing the required parameter 'org_code' when calling OrganizationsApi.remove_organization_user"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling OrganizationsApi.remove_organization_user"
      end
      # resource path
      local_var_path = '/api/v1/organizations/{org_code}/users/{user_id}'.sub('{' + 'org_code' + '}', CGI.escape(org_code.to_s)).sub('{' + 'user_id' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/json; charset=utf-8'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.remove_organization_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#remove_organization_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Organization
    # Update an organization.
    # @param org_code [String] The identifier for the organization.
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateOrganizationRequest] :update_organization_request Organization details.
    # @return [nil]
    def update_organization(org_code, opts = {})
      update_organization_with_http_info(org_code, opts)
      nil
    end

    # Update Organization
    # Update an organization.
    # @param org_code [String] The identifier for the organization.
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateOrganizationRequest] :update_organization_request Organization details.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_organization_with_http_info(org_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.update_organization ...'
      end
      # verify the required parameter 'org_code' is set
      if @api_client.config.client_side_validation && org_code.nil?
        fail ArgumentError, "Missing the required parameter 'org_code' when calling OrganizationsApi.update_organization"
      end
      # resource path
      local_var_path = '/api/v1/organizations/{org_code}'.sub('{' + 'org_code' + '}', CGI.escape(org_code.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_organization_request'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.update_organization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#update_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update organization feature flag override
    # Update organization feature flag override.
    # @param org_code [String] The identifier for the organization
    # @param feature_flag_key [String] The identifier for the feature flag
    # @param value [String] Override value
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def update_organization_feature_flag_override(org_code, feature_flag_key, value, opts = {})
      data, _status_code, _headers = update_organization_feature_flag_override_with_http_info(org_code, feature_flag_key, value, opts)
      data
    end

    # Update organization feature flag override
    # Update organization feature flag override.
    # @param org_code [String] The identifier for the organization
    # @param feature_flag_key [String] The identifier for the feature flag
    # @param value [String] Override value
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Integer, Hash)>] SuccessResponse data, response status code and response headers
    def update_organization_feature_flag_override_with_http_info(org_code, feature_flag_key, value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.update_organization_feature_flag_override ...'
      end
      # verify the required parameter 'org_code' is set
      if @api_client.config.client_side_validation && org_code.nil?
        fail ArgumentError, "Missing the required parameter 'org_code' when calling OrganizationsApi.update_organization_feature_flag_override"
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling OrganizationsApi.update_organization_feature_flag_override"
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling OrganizationsApi.update_organization_feature_flag_override"
      end
      # resource path
      local_var_path = '/api/v1/organizations/{org_code}/feature_flags/{feature_flag_key}'.sub('{' + 'org_code' + '}', CGI.escape(org_code.to_s)).sub('{' + 'feature_flag_key' + '}', CGI.escape(feature_flag_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'value'] = value

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/json; charset=utf-8'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.update_organization_feature_flag_override",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#update_organization_feature_flag_override\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update organization users
    # Update users that belong to an organization.
    # @param org_code [String] The organization&#39;s code.
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateOrganizationUsersRequest] :update_organization_users_request 
    # @return [RemoveOrganizationUsersResponse]
    def update_organization_users(org_code, opts = {})
      data, _status_code, _headers = update_organization_users_with_http_info(org_code, opts)
      data
    end

    # Update organization users
    # Update users that belong to an organization.
    # @param org_code [String] The organization&#39;s code.
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateOrganizationUsersRequest] :update_organization_users_request 
    # @return [Array<(RemoveOrganizationUsersResponse, Integer, Hash)>] RemoveOrganizationUsersResponse data, response status code and response headers
    def update_organization_users_with_http_info(org_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationsApi.update_organization_users ...'
      end
      # verify the required parameter 'org_code' is set
      if @api_client.config.client_side_validation && org_code.nil?
        fail ArgumentError, "Missing the required parameter 'org_code' when calling OrganizationsApi.update_organization_users"
      end
      # resource path
      local_var_path = '/api/v1/organizations/{org_code}/users'.sub('{' + 'org_code' + '}', CGI.escape(org_code.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_organization_users_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'RemoveOrganizationUsersResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"OrganizationsApi.update_organization_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#update_organization_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
