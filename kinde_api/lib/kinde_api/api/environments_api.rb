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
  class EnvironmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete environment feature flag override
    # Delete environment feature flag override.
    # @param feature_flag_key [String] The identifier for the feature flag.
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def delete_environement_feature_flag_override(feature_flag_key, opts = {})
      data, _status_code, _headers = delete_environement_feature_flag_override_with_http_info(feature_flag_key, opts)
      data
    end

    # Delete environment feature flag override
    # Delete environment feature flag override.
    # @param feature_flag_key [String] The identifier for the feature flag.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Integer, Hash)>] SuccessResponse data, response status code and response headers
    def delete_environement_feature_flag_override_with_http_info(feature_flag_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnvironmentsApi.delete_environement_feature_flag_override ...'
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling EnvironmentsApi.delete_environement_feature_flag_override"
      end
      # resource path
      local_var_path = '/api/v1/environment/feature_flags/{feature_flag_key}'.sub('{' + 'feature_flag_key' + '}', CGI.escape(feature_flag_key.to_s))

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
        :operation => :"EnvironmentsApi.delete_environement_feature_flag_override",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnvironmentsApi#delete_environement_feature_flag_override\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all environment feature flag overrides
    # Delete all environment feature flag overrides.
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def delete_environement_feature_flag_overrides(opts = {})
      data, _status_code, _headers = delete_environement_feature_flag_overrides_with_http_info(opts)
      data
    end

    # Delete all environment feature flag overrides
    # Delete all environment feature flag overrides.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Integer, Hash)>] SuccessResponse data, response status code and response headers
    def delete_environement_feature_flag_overrides_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnvironmentsApi.delete_environement_feature_flag_overrides ...'
      end
      # resource path
      local_var_path = '/api/v1/environment/feature_flags'

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
        :operation => :"EnvironmentsApi.delete_environement_feature_flag_overrides",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnvironmentsApi#delete_environement_feature_flag_overrides\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List environment feature flags
    # Get environment feature flags.
    # @param [Hash] opts the optional parameters
    # @return [GetEnvironmentFeatureFlagsResponse]
    def get_environement_feature_flags(opts = {})
      data, _status_code, _headers = get_environement_feature_flags_with_http_info(opts)
      data
    end

    # List environment feature flags
    # Get environment feature flags.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetEnvironmentFeatureFlagsResponse, Integer, Hash)>] GetEnvironmentFeatureFlagsResponse data, response status code and response headers
    def get_environement_feature_flags_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnvironmentsApi.get_environement_feature_flags ...'
      end
      # resource path
      local_var_path = '/api/v1/environment/feature_flags'

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
      return_type = opts[:debug_return_type] || 'GetEnvironmentFeatureFlagsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"EnvironmentsApi.get_environement_feature_flags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnvironmentsApi#get_environement_feature_flags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update environment feature flag override
    # Update environment feature flag override.
    # @param feature_flag_key [String] The identifier for the feature flag.
    # @param value [String] The override value for the feature flag.
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def update_environement_feature_flag_override(feature_flag_key, value, opts = {})
      data, _status_code, _headers = update_environement_feature_flag_override_with_http_info(feature_flag_key, value, opts)
      data
    end

    # Update environment feature flag override
    # Update environment feature flag override.
    # @param feature_flag_key [String] The identifier for the feature flag.
    # @param value [String] The override value for the feature flag.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Integer, Hash)>] SuccessResponse data, response status code and response headers
    def update_environement_feature_flag_override_with_http_info(feature_flag_key, value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnvironmentsApi.update_environement_feature_flag_override ...'
      end
      # verify the required parameter 'feature_flag_key' is set
      if @api_client.config.client_side_validation && feature_flag_key.nil?
        fail ArgumentError, "Missing the required parameter 'feature_flag_key' when calling EnvironmentsApi.update_environement_feature_flag_override"
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling EnvironmentsApi.update_environement_feature_flag_override"
      end
      # resource path
      local_var_path = '/api/v1/environment/feature_flags/{feature_flag_key}'.sub('{' + 'feature_flag_key' + '}', CGI.escape(feature_flag_key.to_s))

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
        :operation => :"EnvironmentsApi.update_environement_feature_flag_override",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnvironmentsApi#update_environement_feature_flag_override\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
