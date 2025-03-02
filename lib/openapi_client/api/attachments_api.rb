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
  class AttachmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete attachment
    # Deletes a particular attachment by its ID.
    # @param id [Integer] The unique identifier of the attachment.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def attachments_id_delete(id, opts = {})
      attachments_id_delete_with_http_info(id, opts)
      nil
    end

    # Delete attachment
    # Deletes a particular attachment by its ID.
    # @param id [Integer] The unique identifier of the attachment.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def attachments_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentsApi.attachments_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AttachmentsApi.attachments_id_delete"
      end
      # resource path
      local_var_path = '/attachments/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"AttachmentsApi.attachments_id_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentsApi#attachments_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get attachment
    # Gets a particular attachment by its ID.
    # @param id [Integer] The unique identifier of the attachment.
    # @param [Hash] opts the optional parameters
    # @return [Attachment]
    def attachments_id_get(id, opts = {})
      data, _status_code, _headers = attachments_id_get_with_http_info(id, opts)
      data
    end

    # Get attachment
    # Gets a particular attachment by its ID.
    # @param id [Integer] The unique identifier of the attachment.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Attachment, Integer, Hash)>] Attachment data, response status code and response headers
    def attachments_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentsApi.attachments_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AttachmentsApi.attachments_id_get"
      end
      # resource path
      local_var_path = '/attachments/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Attachment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"AttachmentsApi.attachments_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentsApi#attachments_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update attachment
    # Updates the title of the attachment.
    # @param id [Integer] The unique identifier of the attachment.
    # @param [Hash] opts the optional parameters
    # @option opts [AttachmentsIdPutRequest] :attachments_id_put_request 
    # @return [Attachment]
    def attachments_id_put(id, opts = {})
      data, _status_code, _headers = attachments_id_put_with_http_info(id, opts)
      data
    end

    # Update attachment
    # Updates the title of the attachment.
    # @param id [Integer] The unique identifier of the attachment.
    # @param [Hash] opts the optional parameters
    # @option opts [AttachmentsIdPutRequest] :attachments_id_put_request 
    # @return [Array<(Attachment, Integer, Hash)>] Attachment data, response status code and response headers
    def attachments_id_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentsApi.attachments_id_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AttachmentsApi.attachments_id_put"
      end
      # resource path
      local_var_path = '/attachments/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'attachments_id_put_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Attachment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"AttachmentsApi.attachments_id_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentsApi#attachments_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List attachments in transaction
    # Lists attachments belonging to a transaction by their ID.
    # @param id [Integer] The unique identifier of the transaction.
    # @param [Hash] opts the optional parameters
    # @return [Array<Attachment>]
    def transactions_id_attachments_get(id, opts = {})
      data, _status_code, _headers = transactions_id_attachments_get_with_http_info(id, opts)
      data
    end

    # List attachments in transaction
    # Lists attachments belonging to a transaction by their ID.
    # @param id [Integer] The unique identifier of the transaction.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Attachment>, Integer, Hash)>] Array<Attachment> data, response status code and response headers
    def transactions_id_attachments_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentsApi.transactions_id_attachments_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AttachmentsApi.transactions_id_attachments_get"
      end
      # resource path
      local_var_path = '/transactions/{id}/attachments'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<Attachment>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"AttachmentsApi.transactions_id_attachments_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentsApi#transactions_id_attachments_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Assigns attachment to transaction
    # Assigns an attachment to the transaction by their ID.
    # @param id [Integer] The unique identifier of the transaction.
    # @param [Hash] opts the optional parameters
    # @option opts [TransactionsIdAttachmentsPostRequest] :transactions_id_attachments_post_request 
    # @return [Attachment]
    def transactions_id_attachments_post(id, opts = {})
      data, _status_code, _headers = transactions_id_attachments_post_with_http_info(id, opts)
      data
    end

    # Assigns attachment to transaction
    # Assigns an attachment to the transaction by their ID.
    # @param id [Integer] The unique identifier of the transaction.
    # @param [Hash] opts the optional parameters
    # @option opts [TransactionsIdAttachmentsPostRequest] :transactions_id_attachments_post_request 
    # @return [Array<(Attachment, Integer, Hash)>] Attachment data, response status code and response headers
    def transactions_id_attachments_post_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentsApi.transactions_id_attachments_post ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AttachmentsApi.transactions_id_attachments_post"
      end
      # resource path
      local_var_path = '/transactions/{id}/attachments'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'transactions_id_attachments_post_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Attachment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"AttachmentsApi.transactions_id_attachments_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentsApi#transactions_id_attachments_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unassigns attachment in transaction
    # Unassigns a particular attachment by its ID from the transaction ID. This does not delete the attachment, it only removes its association from the transaction.
    # @param transaction_id [Integer] The unique identifier of the transaction.
    # @param attachment_id [Integer] The unique identifier of the attachment.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def transactions_transaction_id_attachments_attachment_id_delete(transaction_id, attachment_id, opts = {})
      transactions_transaction_id_attachments_attachment_id_delete_with_http_info(transaction_id, attachment_id, opts)
      nil
    end

    # Unassigns attachment in transaction
    # Unassigns a particular attachment by its ID from the transaction ID. This does not delete the attachment, it only removes its association from the transaction.
    # @param transaction_id [Integer] The unique identifier of the transaction.
    # @param attachment_id [Integer] The unique identifier of the attachment.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def transactions_transaction_id_attachments_attachment_id_delete_with_http_info(transaction_id, attachment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentsApi.transactions_transaction_id_attachments_attachment_id_delete ...'
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling AttachmentsApi.transactions_transaction_id_attachments_attachment_id_delete"
      end
      # verify the required parameter 'attachment_id' is set
      if @api_client.config.client_side_validation && attachment_id.nil?
        fail ArgumentError, "Missing the required parameter 'attachment_id' when calling AttachmentsApi.transactions_transaction_id_attachments_attachment_id_delete"
      end
      # resource path
      local_var_path = '/transactions/{transaction_id}/attachments/{attachment_id}'.sub('{' + 'transaction_id' + '}', CGI.escape(transaction_id.to_s)).sub('{' + 'attachment_id' + '}', CGI.escape(attachment_id.to_s))

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
        :operation => :"AttachmentsApi.transactions_transaction_id_attachments_attachment_id_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentsApi#transactions_transaction_id_attachments_attachment_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lists attachments in user
    # Lists attachments belonging to a user by their ID.
    # @param id [Integer] The unique identifier of the user.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :unassigned If set, returns unassigned attachments, that are available for assigning to a transaction.
    # @return [Array<Attachment>]
    def users_id_attachments_get(id, opts = {})
      data, _status_code, _headers = users_id_attachments_get_with_http_info(id, opts)
      data
    end

    # Lists attachments in user
    # Lists attachments belonging to a user by their ID.
    # @param id [Integer] The unique identifier of the user.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :unassigned If set, returns unassigned attachments, that are available for assigning to a transaction.
    # @return [Array<(Array<Attachment>, Integer, Hash)>] Array<Attachment> data, response status code and response headers
    def users_id_attachments_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentsApi.users_id_attachments_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AttachmentsApi.users_id_attachments_get"
      end
      # resource path
      local_var_path = '/users/{id}/attachments'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'unassigned'] = opts[:'unassigned'] if !opts[:'unassigned'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Attachment>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"AttachmentsApi.users_id_attachments_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentsApi#users_id_attachments_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create attachment in user
    # Creates an attachment belonging to the user by their ID.
    # @param id [Integer] The unique identifier of the user.
    # @param [Hash] opts the optional parameters
    # @option opts [UsersIdAttachmentsPostRequest] :users_id_attachments_post_request 
    # @return [Attachment]
    def users_id_attachments_post(id, opts = {})
      data, _status_code, _headers = users_id_attachments_post_with_http_info(id, opts)
      data
    end

    # Create attachment in user
    # Creates an attachment belonging to the user by their ID.
    # @param id [Integer] The unique identifier of the user.
    # @param [Hash] opts the optional parameters
    # @option opts [UsersIdAttachmentsPostRequest] :users_id_attachments_post_request 
    # @return [Array<(Attachment, Integer, Hash)>] Attachment data, response status code and response headers
    def users_id_attachments_post_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentsApi.users_id_attachments_post ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AttachmentsApi.users_id_attachments_post"
      end
      # resource path
      local_var_path = '/users/{id}/attachments'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'users_id_attachments_post_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Attachment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"AttachmentsApi.users_id_attachments_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentsApi#users_id_attachments_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
