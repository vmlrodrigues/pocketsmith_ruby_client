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
  class TransactionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List transactions in account
    # Lists transactions belonging to an account by its ID.
    # @param id [Integer] The unique identifier of the account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Limit to transactions on or after this date. Required if end_date is provided. If not provided, defaults to the furtherest date allowed by the user&#39;s subscription.
    # @option opts [String] :end_date Limit to transactions on or before this date. Required if start_date is provided. If not provided, defaults to today&#39;s date.
    # @option opts [String] :updated_since Limit to transactions updated since an ISO 8601 timestamp.
    # @option opts [Integer] :uncategorised Limit to uncategorised transactions.
    # @option opts [String] :type Limit to transactions of this type.
    # @option opts [Integer] :needs_review Limit to transactions that need to be reviewed.
    # @option opts [String] :search Limit to transactions matching a keyword search string. The provided string is matched against the transaction amount, account name, payee, category title, note, labels, and the date in ISO 8601 format.
    # @return [Array<Transaction>]
    def accounts_id_transactions_get(id, opts = {})
      all_transactions = []
      current_page = 1
      
      loop do
        begin
          page_opts = opts.merge(page: current_page)
          data, _status_code, _headers = accounts_id_transactions_get_with_http_info(id, page_opts)
          
          break if data.empty?
          
          all_transactions.concat(data)
          current_page += 1
        rescue => e
          # Break the loop if we get an "out of bounds" error, which means we've reached the end
          break if e.message.include?("out of bounds")
          # Re-raise any other errors
          raise e
        end
      end
      
      all_transactions
    end

    # List transactions in account
    # Lists transactions belonging to an account by its ID.
    # @param id [Integer] The unique identifier of the account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Limit to transactions on or after this date. Required if end_date is provided. If not provided, defaults to the furtherest date allowed by the user&#39;s subscription.
    # @option opts [String] :end_date Limit to transactions on or before this date. Required if start_date is provided. If not provided, defaults to today&#39;s date.
    # @option opts [String] :updated_since Limit to transactions updated since an ISO 8601 timestamp.
    # @option opts [Integer] :uncategorised Limit to uncategorised transactions.
    # @option opts [String] :type Limit to transactions of this type.
    # @option opts [Integer] :needs_review Limit to transactions that need to be reviewed.
    # @option opts [String] :search Limit to transactions matching a keyword search string. The provided string is matched against the transaction amount, account name, payee, category title, note, labels, and the date in ISO 8601 format.
    # @option opts [Integer] :page Choose a particular page of the results.
    # @return [Array<(Array<Transaction>, Integer, Hash)>] Array<Transaction> data, response status code and response headers
    def accounts_id_transactions_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.accounts_id_transactions_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsApi.accounts_id_transactions_get"
      end
      allowable_values = ["debit", "credit"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/accounts/{id}/transactions'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'updated_since'] = opts[:'updated_since'] if !opts[:'updated_since'].nil?
      query_params[:'uncategorised'] = opts[:'uncategorised'] if !opts[:'uncategorised'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'needs_review'] = opts[:'needs_review'] if !opts[:'needs_review'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Transaction>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"TransactionsApi.accounts_id_transactions_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#accounts_id_transactions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List transactions in categories
    # Lists transactions belonging to one or more categories by their IDs.
    # @param id [String] A comma-separated list of category IDs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Limit to transactions on or after this date. Required if end_date is provided. If not provided, defaults to the furtherest date allowed by the user&#39;s subscription.
    # @option opts [String] :end_date Limit to transactions on or before this date. Required if start_date is provided. If not provided, defaults to today&#39;s date.
    # @option opts [String] :updated_since Limit to transactions updated since an ISO 8601 timestamp.
    # @option opts [Integer] :uncategorised Limit to uncategorised transactions.
    # @option opts [String] :type Limit to transactions of this type.
    # @option opts [Integer] :needs_review Limit to transactions that need to be reviewed.
    # @option opts [String] :search Limit to transactions matching a keyword search string. The provided string is matched against the transaction amount, account name, payee, category title, note, labels, and the date in ISO 8601 format.
    # @option opts [Integer] :page Choose a particular page of the results.
    # @return [Array<Transaction>]
    def categories_id_transactions_get(id, opts = {})
      data, _status_code, _headers = categories_id_transactions_get_with_http_info(id, opts)
      data
    end

    # List transactions in categories
    # Lists transactions belonging to one or more categories by their IDs.
    # @param id [String] A comma-separated list of category IDs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Limit to transactions on or after this date. Required if end_date is provided. If not provided, defaults to the furtherest date allowed by the user&#39;s subscription.
    # @option opts [String] :end_date Limit to transactions on or before this date. Required if start_date is provided. If not provided, defaults to today&#39;s date.
    # @option opts [String] :updated_since Limit to transactions updated since an ISO 8601 timestamp.
    # @option opts [Integer] :uncategorised Limit to uncategorised transactions.
    # @option opts [String] :type Limit to transactions of this type.
    # @option opts [Integer] :needs_review Limit to transactions that need to be reviewed.
    # @option opts [String] :search Limit to transactions matching a keyword search string. The provided string is matched against the transaction amount, account name, payee, category title, note, labels, and the date in ISO 8601 format.
    # @option opts [Integer] :page Choose a particular page of the results.
    # @return [Array<(Array<Transaction>, Integer, Hash)>] Array<Transaction> data, response status code and response headers
    def categories_id_transactions_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.categories_id_transactions_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsApi.categories_id_transactions_get"
      end
      allowable_values = ["debit", "credit"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/categories/{id}/transactions'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'updated_since'] = opts[:'updated_since'] if !opts[:'updated_since'].nil?
      query_params[:'uncategorised'] = opts[:'uncategorised'] if !opts[:'uncategorised'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'needs_review'] = opts[:'needs_review'] if !opts[:'needs_review'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Transaction>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"TransactionsApi.categories_id_transactions_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#categories_id_transactions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List transactions in transaction account
    # Lists transactions belonging to a transaction account by its ID.
    # @param id [Integer] The unique identifier of the transaction account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Limit to transactions on or after this date. Required if end_date is provided. If not provided, defaults to the furtherest date allowed by the user&#39;s subscription.
    # @option opts [String] :end_date Limit to transactions on or before this date. Required if start_date is provided. If not provided, defaults to today&#39;s date.
    # @option opts [String] :updated_since Limit to transactions updated since an ISO 8601 timestamp.
    # @option opts [Integer] :uncategorised Limit to uncategorised transactions.
    # @option opts [String] :type Limit to transactions of this type.
    # @option opts [Integer] :needs_review Limit to transactions that need to be reviewed.
    # @option opts [String] :search Limit to transactions matching a keyword search string. The provided string is matched against the transaction amount, account name, payee, category title, note, labels, and the date in ISO 8601 format.
    # @option opts [Integer] :page Choose a particular page of the results.
    # @return [Array<Transaction>]
    def transaction_accounts_id_transactions_get(id, opts = {})
      data, _status_code, _headers = transaction_accounts_id_transactions_get_with_http_info(id, opts)
      data
    end

    # List transactions in transaction account
    # Lists transactions belonging to a transaction account by its ID.
    # @param id [Integer] The unique identifier of the transaction account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Limit to transactions on or after this date. Required if end_date is provided. If not provided, defaults to the furtherest date allowed by the user&#39;s subscription.
    # @option opts [String] :end_date Limit to transactions on or before this date. Required if start_date is provided. If not provided, defaults to today&#39;s date.
    # @option opts [String] :updated_since Limit to transactions updated since an ISO 8601 timestamp.
    # @option opts [Integer] :uncategorised Limit to uncategorised transactions.
    # @option opts [String] :type Limit to transactions of this type.
    # @option opts [Integer] :needs_review Limit to transactions that need to be reviewed.
    # @option opts [String] :search Limit to transactions matching a keyword search string. The provided string is matched against the transaction amount, account name, payee, category title, note, labels, and the date in ISO 8601 format.
    # @option opts [Integer] :page Choose a particular page of the results.
    # @return [Array<(Array<Transaction>, Integer, Hash)>] Array<Transaction> data, response status code and response headers
    def transaction_accounts_id_transactions_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.transaction_accounts_id_transactions_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsApi.transaction_accounts_id_transactions_get"
      end
      allowable_values = ["debit", "credit"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/transaction_accounts/{id}/transactions'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'updated_since'] = opts[:'updated_since'] if !opts[:'updated_since'].nil?
      query_params[:'uncategorised'] = opts[:'uncategorised'] if !opts[:'uncategorised'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'needs_review'] = opts[:'needs_review'] if !opts[:'needs_review'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Transaction>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"TransactionsApi.transaction_accounts_id_transactions_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#transaction_accounts_id_transactions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a transaction in transaction account
    # Creates a transaction in a transaction account by its ID.
    # @param id [Integer] The unique identifier of the transaction account.
    # @param [Hash] opts the optional parameters
    # @option opts [TransactionAccountsIdTransactionsPostRequest] :transaction_accounts_id_transactions_post_request 
    # @return [Transaction]
    def transaction_accounts_id_transactions_post(id, opts = {})
      data, _status_code, _headers = transaction_accounts_id_transactions_post_with_http_info(id, opts)
      data
    end

    # Create a transaction in transaction account
    # Creates a transaction in a transaction account by its ID.
    # @param id [Integer] The unique identifier of the transaction account.
    # @param [Hash] opts the optional parameters
    # @option opts [TransactionAccountsIdTransactionsPostRequest] :transaction_accounts_id_transactions_post_request 
    # @return [Array<(Transaction, Integer, Hash)>] Transaction data, response status code and response headers
    def transaction_accounts_id_transactions_post_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.transaction_accounts_id_transactions_post ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsApi.transaction_accounts_id_transactions_post"
      end
      # resource path
      local_var_path = '/transaction_accounts/{id}/transactions'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'transaction_accounts_id_transactions_post_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Transaction'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"TransactionsApi.transaction_accounts_id_transactions_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#transaction_accounts_id_transactions_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete transaction
    # Deletes a transaction and all its data by ID.
    # @param id [Integer] The unique identifier of the transaction.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def transactions_id_delete(id, opts = {})
      transactions_id_delete_with_http_info(id, opts)
      nil
    end

    # Delete transaction
    # Deletes a transaction and all its data by ID.
    # @param id [Integer] The unique identifier of the transaction.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def transactions_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.transactions_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsApi.transactions_id_delete"
      end
      # resource path
      local_var_path = '/transactions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"TransactionsApi.transactions_id_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#transactions_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a transaction
    # Gets a transaction by its ID.
    # @param id [Integer] The unique identifier of the transaction.
    # @param [Hash] opts the optional parameters
    # @return [Transaction]
    def transactions_id_get(id, opts = {})
      data, _status_code, _headers = transactions_id_get_with_http_info(id, opts)
      data
    end

    # Get a transaction
    # Gets a transaction by its ID.
    # @param id [Integer] The unique identifier of the transaction.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Transaction, Integer, Hash)>] Transaction data, response status code and response headers
    def transactions_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.transactions_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsApi.transactions_id_get"
      end
      # resource path
      local_var_path = '/transactions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Transaction'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"TransactionsApi.transactions_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#transactions_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a transaction
    # Updates a transaction by its ID.
    # @param id [Integer] The unique identifier of the transaction.
    # @param [Hash] opts the optional parameters
    # @option opts [TransactionsIdPutRequest] :transactions_id_put_request 
    # @return [Transaction]
    def transactions_id_put(id, opts = {})
      data, _status_code, _headers = transactions_id_put_with_http_info(id, opts)
      data
    end

    # Update a transaction
    # Updates a transaction by its ID.
    # @param id [Integer] The unique identifier of the transaction.
    # @param [Hash] opts the optional parameters
    # @option opts [TransactionsIdPutRequest] :transactions_id_put_request 
    # @return [Array<(Transaction, Integer, Hash)>] Transaction data, response status code and response headers
    def transactions_id_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.transactions_id_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsApi.transactions_id_put"
      end
      # resource path
      local_var_path = '/transactions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'transactions_id_put_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Transaction'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"TransactionsApi.transactions_id_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#transactions_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List transactions in user
    # Lists transactions belonging to a user by their ID.
    # @param id [Integer] The unique identifier of the user.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Limit to transactions on or after this date. Required if end_date is provided. If not provided, defaults to the furtherest date allowed by the user&#39;s subscription.
    # @option opts [String] :end_date Limit to transactions on or before this date. Required if start_date is provided. If not provided, defaults to today&#39;s date.
    # @option opts [String] :updated_since Limit to transactions updated since an ISO 8601 timestamp.
    # @option opts [Integer] :uncategorised Limit to uncategorised transactions.
    # @option opts [String] :type Limit to transactions of this type.
    # @option opts [Integer] :needs_review Limit to transactions that need to be reviewed.
    # @option opts [String] :search Limit to transactions matching a keyword search string. The provided string is matched against the transaction amount, account name, payee, category title, note, labels, and the date in ISO 8601 format.
    # @option opts [Integer] :page Choose a particular page of the results.
    # @return [Array<Transaction>]
    def users_id_transactions_get(id, opts = {})
      data, _status_code, _headers = users_id_transactions_get_with_http_info(id, opts)
      data
    end

    # List transactions in user
    # Lists transactions belonging to a user by their ID.
    # @param id [Integer] The unique identifier of the user.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Limit to transactions on or after this date. Required if end_date is provided. If not provided, defaults to the furtherest date allowed by the user&#39;s subscription.
    # @option opts [String] :end_date Limit to transactions on or before this date. Required if start_date is provided. If not provided, defaults to today&#39;s date.
    # @option opts [String] :updated_since Limit to transactions updated since an ISO 8601 timestamp.
    # @option opts [Integer] :uncategorised Limit to uncategorised transactions.
    # @option opts [String] :type Limit to transactions of this type.
    # @option opts [Integer] :needs_review Limit to transactions that need to be reviewed.
    # @option opts [String] :search Limit to transactions matching a keyword search string. The provided string is matched against the transaction amount, account name, payee, category title, note, labels, and the date in ISO 8601 format.
    # @option opts [Integer] :page Choose a particular page of the results.
    # @return [Array<(Array<Transaction>, Integer, Hash)>] Array<Transaction> data, response status code and response headers
    def users_id_transactions_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.users_id_transactions_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsApi.users_id_transactions_get"
      end
      allowable_values = ["debit", "credit"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/users/{id}/transactions'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'updated_since'] = opts[:'updated_since'] if !opts[:'updated_since'].nil?
      query_params[:'uncategorised'] = opts[:'uncategorised'] if !opts[:'uncategorised'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'needs_review'] = opts[:'needs_review'] if !opts[:'needs_review'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Transaction>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['developerKey']

      new_options = opts.merge(
        :operation => :"TransactionsApi.users_id_transactions_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#users_id_transactions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
