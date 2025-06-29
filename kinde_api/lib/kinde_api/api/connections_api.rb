=begin
#Kinde Management API

# Provides endpoints to manage your Kinde Businesses.  ## Intro  ## How to use  1. [Set up and authorize a machine-to-machine (M2M) application](https://docs.kinde.com/developer-tools/kinde-api/connect-to-kinde-api/).  2. [Generate a test access token](https://docs.kinde.com/developer-tools/kinde-api/access-token-for-api/)  3. Test request any endpoint using the test token 

The version of the OpenAPI document: 1
Contact: support@kinde.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0

=end

require 'cgi'

module KindeApi
  class ConnectionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Connection
    # Create Connection.  <div>   <code>create:connections</code> </div> 
    # @param create_connection_request [CreateConnectionRequest] Connection details.
    # @param [Hash] opts the optional parameters
    # @return [CreateConnectionResponse]
    def create_connection(create_connection_request, opts = {})
      data, _status_code, _headers = create_connection_with_http_info(create_connection_request, opts)
      data
    end

    # Create Connection
    # Create Connection.  &lt;div&gt;   &lt;code&gt;create:connections&lt;/code&gt; &lt;/div&gt; 
    # @param create_connection_request [CreateConnectionRequest] Connection details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateConnectionResponse, Integer, Hash)>] CreateConnectionResponse data, response status code and response headers
    def create_connection_with_http_info(create_connection_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.create_connection ...'
      end
      # verify the required parameter 'create_connection_request' is set
      if @api_client.config.client_side_validation && create_connection_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_connection_request' when calling ConnectionsApi.create_connection"
      end
      # resource path
      local_var_path = '/api/v1/connections'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_connection_request)

      # return_type
      return_type = opts[:debug_return_type] || 'CreateConnectionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.create_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#create_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Connection
    # Delete connection.  <div>   <code>delete:connections</code> </div> 
    # @param connection_id [String] The identifier for the connection.
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def delete_connection(connection_id, opts = {})
      data, _status_code, _headers = delete_connection_with_http_info(connection_id, opts)
      data
    end

    # Delete Connection
    # Delete connection.  &lt;div&gt;   &lt;code&gt;delete:connections&lt;/code&gt; &lt;/div&gt; 
    # @param connection_id [String] The identifier for the connection.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Integer, Hash)>] SuccessResponse data, response status code and response headers
    def delete_connection_with_http_info(connection_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.delete_connection ...'
      end
      # verify the required parameter 'connection_id' is set
      if @api_client.config.client_side_validation && connection_id.nil?
        fail ArgumentError, "Missing the required parameter 'connection_id' when calling ConnectionsApi.delete_connection"
      end
      # resource path
      local_var_path = '/api/v1/connections/{connection_id}'.sub('{' + 'connection_id' + '}', CGI.escape(connection_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.delete_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#delete_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Connection
    # Get Connection.  <div>   <code>read:connections</code> </div> 
    # @param connection_id [String] The unique identifier for the connection.
    # @param [Hash] opts the optional parameters
    # @return [Connection]
    def get_connection(connection_id, opts = {})
      data, _status_code, _headers = get_connection_with_http_info(connection_id, opts)
      data
    end

    # Get Connection
    # Get Connection.  &lt;div&gt;   &lt;code&gt;read:connections&lt;/code&gt; &lt;/div&gt; 
    # @param connection_id [String] The unique identifier for the connection.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Connection, Integer, Hash)>] Connection data, response status code and response headers
    def get_connection_with_http_info(connection_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.get_connection ...'
      end
      # verify the required parameter 'connection_id' is set
      if @api_client.config.client_side_validation && connection_id.nil?
        fail ArgumentError, "Missing the required parameter 'connection_id' when calling ConnectionsApi.get_connection"
      end
      # resource path
      local_var_path = '/api/v1/connections/{connection_id}'.sub('{' + 'connection_id' + '}', CGI.escape(connection_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Connection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.get_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#get_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get connections
    # Returns a list of authentication connections. Optionally you can filter this by a home realm domain.  <div>   <code>read:connections</code> </div> 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Number of results per page. Defaults to 10 if parameter not sent.
    # @option opts [String] :home_realm_domain Filter the results by the home realm domain.
    # @option opts [String] :starting_after The ID of the connection to start after.
    # @option opts [String] :ending_before The ID of the connection to end before.
    # @return [GetConnectionsResponse]
    def get_connections(opts = {})
      data, _status_code, _headers = get_connections_with_http_info(opts)
      data
    end

    # Get connections
    # Returns a list of authentication connections. Optionally you can filter this by a home realm domain.  &lt;div&gt;   &lt;code&gt;read:connections&lt;/code&gt; &lt;/div&gt; 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Number of results per page. Defaults to 10 if parameter not sent.
    # @option opts [String] :home_realm_domain Filter the results by the home realm domain.
    # @option opts [String] :starting_after The ID of the connection to start after.
    # @option opts [String] :ending_before The ID of the connection to end before.
    # @return [Array<(GetConnectionsResponse, Integer, Hash)>] GetConnectionsResponse data, response status code and response headers
    def get_connections_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.get_connections ...'
      end
      # resource path
      local_var_path = '/api/v1/connections'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'home_realm_domain'] = opts[:'home_realm_domain'] if !opts[:'home_realm_domain'].nil?
      query_params[:'starting_after'] = opts[:'starting_after'] if !opts[:'starting_after'].nil?
      query_params[:'ending_before'] = opts[:'ending_before'] if !opts[:'ending_before'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetConnectionsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.get_connections",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#get_connections\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Replace Connection
    # Replace Connection Config.  <div>   <code>update:connections</code> </div> 
    # @param connection_id [String] The unique identifier for the connection.
    # @param replace_connection_request [ReplaceConnectionRequest] The complete connection configuration to replace the existing one.
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def replace_connection(connection_id, replace_connection_request, opts = {})
      data, _status_code, _headers = replace_connection_with_http_info(connection_id, replace_connection_request, opts)
      data
    end

    # Replace Connection
    # Replace Connection Config.  &lt;div&gt;   &lt;code&gt;update:connections&lt;/code&gt; &lt;/div&gt; 
    # @param connection_id [String] The unique identifier for the connection.
    # @param replace_connection_request [ReplaceConnectionRequest] The complete connection configuration to replace the existing one.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Integer, Hash)>] SuccessResponse data, response status code and response headers
    def replace_connection_with_http_info(connection_id, replace_connection_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.replace_connection ...'
      end
      # verify the required parameter 'connection_id' is set
      if @api_client.config.client_side_validation && connection_id.nil?
        fail ArgumentError, "Missing the required parameter 'connection_id' when calling ConnectionsApi.replace_connection"
      end
      # verify the required parameter 'replace_connection_request' is set
      if @api_client.config.client_side_validation && replace_connection_request.nil?
        fail ArgumentError, "Missing the required parameter 'replace_connection_request' when calling ConnectionsApi.replace_connection"
      end
      # resource path
      local_var_path = '/api/v1/connections/{connection_id}'.sub('{' + 'connection_id' + '}', CGI.escape(connection_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(replace_connection_request)

      # return_type
      return_type = opts[:debug_return_type] || 'SuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.replace_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#replace_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Connection
    # Update Connection.  <div>   <code>update:connections</code> </div> 
    # @param connection_id [String] The unique identifier for the connection.
    # @param update_connection_request [UpdateConnectionRequest] The fields of the connection to update.
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def update_connection(connection_id, update_connection_request, opts = {})
      data, _status_code, _headers = update_connection_with_http_info(connection_id, update_connection_request, opts)
      data
    end

    # Update Connection
    # Update Connection.  &lt;div&gt;   &lt;code&gt;update:connections&lt;/code&gt; &lt;/div&gt; 
    # @param connection_id [String] The unique identifier for the connection.
    # @param update_connection_request [UpdateConnectionRequest] The fields of the connection to update.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Integer, Hash)>] SuccessResponse data, response status code and response headers
    def update_connection_with_http_info(connection_id, update_connection_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.update_connection ...'
      end
      # verify the required parameter 'connection_id' is set
      if @api_client.config.client_side_validation && connection_id.nil?
        fail ArgumentError, "Missing the required parameter 'connection_id' when calling ConnectionsApi.update_connection"
      end
      # verify the required parameter 'update_connection_request' is set
      if @api_client.config.client_side_validation && update_connection_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_connection_request' when calling ConnectionsApi.update_connection"
      end
      # resource path
      local_var_path = '/api/v1/connections/{connection_id}'.sub('{' + 'connection_id' + '}', CGI.escape(connection_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_connection_request)

      # return_type
      return_type = opts[:debug_return_type] || 'SuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['kindeBearerAuth']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.update_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#update_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
