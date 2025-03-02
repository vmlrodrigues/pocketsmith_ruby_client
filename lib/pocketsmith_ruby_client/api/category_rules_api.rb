=begin
#PocketSmith

#The PocketSmith API

The version of the OpenAPI document: 2.0
Contact: api@pocketsmith.com
Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module PocketsmithClient
  class CategoryRulesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create category rule in category
    # Creates a rule to allocate a category to transactions.
    # @param id [Integer] The unique identifier of the category.
    # @param [Hash] opts the optional parameters
    # @option opts [CategoriesIdCategoryRulesPostRequest] :categories_id_category_rules_post_request 
    # @return [CategoryRule]
    def categories_id_category_rules_post(id, opts = {})
      data, _status_code, _headers = categories_id_category_rules_post_with_http_info(id, opts)
      data
    end

    # Create category rule in category
    # Creates a rule to allocate a category to transactions.
    # @param id [Integer] The unique identifier of the category.
    # @param [Hash] opts the optional parameters
    # @option opts [CategoriesIdCategoryRulesPostRequest] :categories_id_category_rules_post_request 
    # @return [Array<(CategoryRule, Integer, Hash)>] CategoryRule data, response status code and response headers
    def categories_id_category_rules_post_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CategoryRulesApi.categories_id_category_rules_post ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CategoryRulesApi.categories_id_category_rules_post"
      end
      # resource path
      local_var_path = '/categories/{id}/category_rules'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'categories_id_category_rules_post_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CategoryRule'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"CategoryRulesApi.categories_id_category_rules_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoryRulesApi#categories_id_category_rules_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List category rules in user
    # Lists all category rules belonging to a user by their ID.
    # @param id [Integer] The unique identifier of the user.
    # @param [Hash] opts the optional parameters
    # @return [Array<CategoryRule>]
    def users_id_category_rules_get(id, opts = {})
      data, _status_code, _headers = users_id_category_rules_get_with_http_info(id, opts)
      data
    end

    # List category rules in user
    # Lists all category rules belonging to a user by their ID.
    # @param id [Integer] The unique identifier of the user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<CategoryRule>, Integer, Hash)>] Array<CategoryRule> data, response status code and response headers
    def users_id_category_rules_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CategoryRulesApi.users_id_category_rules_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CategoryRulesApi.users_id_category_rules_get"
      end
      # resource path
      local_var_path = '/users/{id}/category_rules'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<CategoryRule>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"CategoryRulesApi.users_id_category_rules_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoryRulesApi#users_id_category_rules_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
