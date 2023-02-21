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
  class ConnectedAppsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Connected App URL
    # Get a URL that authenticates and authorizes a user to a third-party connected app
    # @param key_code_ref [String] The unique key code reference of the connected app to authenticate against.
    # @param user_id [Integer] The id of the user that needs to authenticate to the third-party connected app.
    # @param [Hash] opts the optional parameters
    # @return [ConnectedAppsAuthUrl]
    def get_connected_app_auth_url(key_code_ref, user_id, opts = {})
      data, _status_code, _headers = get_connected_app_auth_url_with_http_info(key_code_ref, user_id, opts)
      data
    end

    # Get Connected App URL
    # Get a URL that authenticates and authorizes a user to a third-party connected app
    # @param key_code_ref [String] The unique key code reference of the connected app to authenticate against.
    # @param user_id [Integer] The id of the user that needs to authenticate to the third-party connected app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConnectedAppsAuthUrl, Integer, Hash)>] ConnectedAppsAuthUrl data, response status code and response headers
    def get_connected_app_auth_url_with_http_info(key_code_ref, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectedAppsApi.get_connected_app_auth_url ...'
      end
      # verify the required parameter 'key_code_ref' is set
      if @api_client.config.client_side_validation && key_code_ref.nil?
        fail ArgumentError, "Missing the required parameter 'key_code_ref' when calling ConnectedAppsApi.get_connected_app_auth_url"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ConnectedAppsApi.get_connected_app_auth_url"
      end
      # resource path
      local_var_path = '/api/v1/connected_apps/auth_url'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'key_code_ref'] = key_code_ref
      query_params[:'user_id'] = user_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ConnectedAppsAuthUrl'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"ConnectedAppsApi.get_connected_app_auth_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectedAppsApi#get_connected_app_auth_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Connected App Token
    # Get an access token that can be used to call the third-party provider linked to the connected app
    # @param session_id [String] The unique sesssion id reprensenting the login session of a user.
    # @param [Hash] opts the optional parameters
    # @return [ConnectedAppsAccessToken]
    def get_connected_app_token(session_id, opts = {})
      data, _status_code, _headers = get_connected_app_token_with_http_info(session_id, opts)
      data
    end

    # Get Connected App Token
    # Get an access token that can be used to call the third-party provider linked to the connected app
    # @param session_id [String] The unique sesssion id reprensenting the login session of a user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConnectedAppsAccessToken, Integer, Hash)>] ConnectedAppsAccessToken data, response status code and response headers
    def get_connected_app_token_with_http_info(session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectedAppsApi.get_connected_app_token ...'
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling ConnectedAppsApi.get_connected_app_token"
      end
      # resource path
      local_var_path = '/api/v1/connected_apps/token'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'session_id'] = session_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ConnectedAppsAccessToken'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"ConnectedAppsApi.get_connected_app_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectedAppsApi#get_connected_app_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Revoke Connected App Token
    # Revoke the tokens linked to the connected app session
    # @param session_id [String] The unique sesssion id reprensenting the login session of a user.
    # @param [Hash] opts the optional parameters
    # @return [ApiResult]
    def revoke_connected_app_token(session_id, opts = {})
      data, _status_code, _headers = revoke_connected_app_token_with_http_info(session_id, opts)
      data
    end

    # Revoke Connected App Token
    # Revoke the tokens linked to the connected app session
    # @param session_id [String] The unique sesssion id reprensenting the login session of a user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResult, Integer, Hash)>] ApiResult data, response status code and response headers
    def revoke_connected_app_token_with_http_info(session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectedAppsApi.revoke_connected_app_token ...'
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling ConnectedAppsApi.revoke_connected_app_token"
      end
      # resource path
      local_var_path = '/api/v1/connected_apps/revoke'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'session_id'] = session_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApiResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"ConnectedAppsApi.revoke_connected_app_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectedAppsApi#revoke_connected_app_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
