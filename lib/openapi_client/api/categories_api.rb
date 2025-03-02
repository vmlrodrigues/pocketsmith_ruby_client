=begin
#PocketSmith

#The PocketSmith API

The version of the OpenAPI document: 2.0
Contact: api@pocketsmith.com
Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module OpenapiClient
  class CategoriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete category
    # Deletes a particular category by its ID. This will delete all budgets within the category, and uncategorize all transactions assigned to the category.
    # @param id [Integer] The unique identifier of the category.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def categories_id_delete(id, opts = {})
      categories_id_delete_with_http_info(id, opts)
      nil
    end

    # Delete category
    # Deletes a particular category by its ID. This will delete all budgets within the category, and uncategorize all transactions assigned to the category.
    # @param id [Integer] The unique identifier of the category.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def categories_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CategoriesApi.categories_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CategoriesApi.categories_id_delete"
      end
      # resource path
      local_var_path = '/categories/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"CategoriesApi.categories_id_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoriesApi#categories_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get category
    # Gets a particular category by its ID.
    # @param id [Integer] The unique identifier of the category.
    # @param [Hash] opts the optional parameters
    # @return [Category]
    def categories_id_get(id, opts = {})
      data, _status_code, _headers = categories_id_get_with_http_info(id, opts)
      data
    end

    # Get category
    # Gets a particular category by its ID.
    # @param id [Integer] The unique identifier of the category.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Category, Integer, Hash)>] Category data, response status code and response headers
    def categories_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CategoriesApi.categories_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CategoriesApi.categories_id_get"
      end
      # resource path
      local_var_path = '/categories/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Category'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"CategoriesApi.categories_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoriesApi#categories_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update category
    # Updates a category by its ID.
    # @param id [Integer] The unique identifier of the category.
    # @param [Hash] opts the optional parameters
    # @option opts [CategoriesIdPutRequest] :categories_id_put_request 
    # @return [Category]
    def categories_id_put(id, opts = {})
      data, _status_code, _headers = categories_id_put_with_http_info(id, opts)
      data
    end

    # Update category
    # Updates a category by its ID.
    # @param id [Integer] The unique identifier of the category.
    # @param [Hash] opts the optional parameters
    # @option opts [CategoriesIdPutRequest] :categories_id_put_request 
    # @return [Array<(Category, Integer, Hash)>] Category data, response status code and response headers
    def categories_id_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CategoriesApi.categories_id_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CategoriesApi.categories_id_put"
      end
      # resource path
      local_var_path = '/categories/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'categories_id_put_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Category'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"CategoriesApi.categories_id_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoriesApi#categories_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List categories in user
    # Lists all categories belonging to a user by their ID.
    # @param id [Integer] The unique identifier of the user.
    # @param [Hash] opts the optional parameters
    # @return [Array<Category>]
    def users_id_categories_get(id, opts = {})
      data, _status_code, _headers = users_id_categories_get_with_http_info(id, opts)
      data
    end

    # List categories in user
    # Lists all categories belonging to a user by their ID.
    # @param id [Integer] The unique identifier of the user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Category>, Integer, Hash)>] Array<Category> data, response status code and response headers
    def users_id_categories_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CategoriesApi.users_id_categories_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CategoriesApi.users_id_categories_get"
      end
      # resource path
      local_var_path = '/users/{id}/categories'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Category>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"CategoriesApi.users_id_categories_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoriesApi#users_id_categories_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create category in user
    # Creates a category belonging to the user by their ID.
    # @param id [Integer] The unique identifier of the user.
    # @param [Hash] opts the optional parameters
    # @option opts [UsersIdCategoriesPostRequest] :users_id_categories_post_request 
    # @return [Category]
    def users_id_categories_post(id, opts = {})
      data, _status_code, _headers = users_id_categories_post_with_http_info(id, opts)
      data
    end

    # Create category in user
    # Creates a category belonging to the user by their ID.
    # @param id [Integer] The unique identifier of the user.
    # @param [Hash] opts the optional parameters
    # @option opts [UsersIdCategoriesPostRequest] :users_id_categories_post_request 
    # @return [Array<(Category, Integer, Hash)>] Category data, response status code and response headers
    def users_id_categories_post_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CategoriesApi.users_id_categories_post ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CategoriesApi.users_id_categories_post"
      end
      # resource path
      local_var_path = '/users/{id}/categories'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'users_id_categories_post_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Category'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"CategoriesApi.users_id_categories_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoriesApi#users_id_categories_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
