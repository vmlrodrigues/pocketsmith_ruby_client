# PocketsmithRubyClient::TransactionsApi

All URIs are relative to *https://api.pocketsmith.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**accounts_id_transactions_get**](TransactionsApi.md#accounts_id_transactions_get) | **GET** /accounts/{id}/transactions | List transactions in account |
| [**categories_id_transactions_get**](TransactionsApi.md#categories_id_transactions_get) | **GET** /categories/{id}/transactions | List transactions in categories |
| [**transaction_accounts_id_transactions_get**](TransactionsApi.md#transaction_accounts_id_transactions_get) | **GET** /transaction_accounts/{id}/transactions | List transactions in transaction account |
| [**transaction_accounts_id_transactions_post**](TransactionsApi.md#transaction_accounts_id_transactions_post) | **POST** /transaction_accounts/{id}/transactions | Create a transaction in transaction account |
| [**transactions_id_delete**](TransactionsApi.md#transactions_id_delete) | **DELETE** /transactions/{id} | Delete transaction |
| [**transactions_id_get**](TransactionsApi.md#transactions_id_get) | **GET** /transactions/{id} | Get a transaction |
| [**transactions_id_put**](TransactionsApi.md#transactions_id_put) | **PUT** /transactions/{id} | Update a transaction |
| [**users_id_transactions_get**](TransactionsApi.md#users_id_transactions_get) | **GET** /users/{id}/transactions | List transactions in user |


## accounts_id_transactions_get

> <Array<Transaction>> accounts_id_transactions_get(id, opts)

List transactions in account

Lists transactions belonging to an account by its ID.

### Examples

```ruby
require 'time'
require 'pocketsmith_ruby_client'
# setup authorization
PocketsmithRubyClient.configure do |config|
  # Configure API key authorization: developerKey
  config.api_key['X-Developer-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Developer-Key'] = 'Bearer'
end

api_instance = PocketsmithRubyClient::TransactionsApi.new
id = 42 # Integer | The unique identifier of the account.
opts = {
  start_date: '2016-11-01', # String | Limit to transactions on or after this date. Required if end_date is provided. If not provided, defaults to the furtherest date allowed by the user's subscription.
  end_date: '2016-11-30', # String | Limit to transactions on or before this date. Required if start_date is provided. If not provided, defaults to today's date.
  updated_since: '2020-10-14T09:20:33+13:00', # String | Limit to transactions updated since an ISO 8601 timestamp.
  uncategorised: 1, # Integer | Limit to uncategorised transactions.
  type: 'debit', # String | Limit to transactions of this type.
  needs_review: 1, # Integer | Limit to transactions that need to be reviewed.
  search: 'Paypal', # String | Limit to transactions matching a keyword search string. The provided string is matched against the transaction amount, account name, payee, category title, note, labels, and the date in ISO 8601 format.
  page: 3 # Integer | Choose a particular page of the results.
}

begin
  # List transactions in account
  result = api_instance.accounts_id_transactions_get(id, opts)
  p result
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling TransactionsApi->accounts_id_transactions_get: #{e}"
end
```

#### Using the accounts_id_transactions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Transaction>>, Integer, Hash)> accounts_id_transactions_get_with_http_info(id, opts)

```ruby
begin
  # List transactions in account
  data, status_code, headers = api_instance.accounts_id_transactions_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Transaction>>
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling TransactionsApi->accounts_id_transactions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the account. |  |
| **start_date** | **String** | Limit to transactions on or after this date. Required if end_date is provided. If not provided, defaults to the furtherest date allowed by the user&#39;s subscription. | [optional] |
| **end_date** | **String** | Limit to transactions on or before this date. Required if start_date is provided. If not provided, defaults to today&#39;s date. | [optional] |
| **updated_since** | **String** | Limit to transactions updated since an ISO 8601 timestamp. | [optional] |
| **uncategorised** | **Integer** | Limit to uncategorised transactions. | [optional] |
| **type** | **String** | Limit to transactions of this type. | [optional] |
| **needs_review** | **Integer** | Limit to transactions that need to be reviewed. | [optional] |
| **search** | **String** | Limit to transactions matching a keyword search string. The provided string is matched against the transaction amount, account name, payee, category title, note, labels, and the date in ISO 8601 format. | [optional] |
| **page** | **Integer** | Choose a particular page of the results. | [optional] |

### Return type

[**Array&lt;Transaction&gt;**](Transaction.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## categories_id_transactions_get

> <Array<Transaction>> categories_id_transactions_get(id, opts)

List transactions in categories

Lists transactions belonging to one or more categories by their IDs.

### Examples

```ruby
require 'time'
require 'pocketsmith_ruby_client'
# setup authorization
PocketsmithRubyClient.configure do |config|
  # Configure API key authorization: developerKey
  config.api_key['X-Developer-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Developer-Key'] = 'Bearer'
end

api_instance = PocketsmithRubyClient::TransactionsApi.new
id = '42,43' # String | A comma-separated list of category IDs.
opts = {
  start_date: '2016-11-01', # String | Limit to transactions on or after this date. Required if end_date is provided. If not provided, defaults to the furtherest date allowed by the user's subscription.
  end_date: '2016-11-30', # String | Limit to transactions on or before this date. Required if start_date is provided. If not provided, defaults to today's date.
  updated_since: '2020-10-14T09:20:33+13:00', # String | Limit to transactions updated since an ISO 8601 timestamp.
  uncategorised: 1, # Integer | Limit to uncategorised transactions.
  type: 'debit', # String | Limit to transactions of this type.
  needs_review: 1, # Integer | Limit to transactions that need to be reviewed.
  search: 'Paypal', # String | Limit to transactions matching a keyword search string. The provided string is matched against the transaction amount, account name, payee, category title, note, labels, and the date in ISO 8601 format.
  page: 3 # Integer | Choose a particular page of the results.
}

begin
  # List transactions in categories
  result = api_instance.categories_id_transactions_get(id, opts)
  p result
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling TransactionsApi->categories_id_transactions_get: #{e}"
end
```

#### Using the categories_id_transactions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Transaction>>, Integer, Hash)> categories_id_transactions_get_with_http_info(id, opts)

```ruby
begin
  # List transactions in categories
  data, status_code, headers = api_instance.categories_id_transactions_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Transaction>>
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling TransactionsApi->categories_id_transactions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A comma-separated list of category IDs. |  |
| **start_date** | **String** | Limit to transactions on or after this date. Required if end_date is provided. If not provided, defaults to the furtherest date allowed by the user&#39;s subscription. | [optional] |
| **end_date** | **String** | Limit to transactions on or before this date. Required if start_date is provided. If not provided, defaults to today&#39;s date. | [optional] |
| **updated_since** | **String** | Limit to transactions updated since an ISO 8601 timestamp. | [optional] |
| **uncategorised** | **Integer** | Limit to uncategorised transactions. | [optional] |
| **type** | **String** | Limit to transactions of this type. | [optional] |
| **needs_review** | **Integer** | Limit to transactions that need to be reviewed. | [optional] |
| **search** | **String** | Limit to transactions matching a keyword search string. The provided string is matched against the transaction amount, account name, payee, category title, note, labels, and the date in ISO 8601 format. | [optional] |
| **page** | **Integer** | Choose a particular page of the results. | [optional] |

### Return type

[**Array&lt;Transaction&gt;**](Transaction.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## transaction_accounts_id_transactions_get

> <Array<Transaction>> transaction_accounts_id_transactions_get(id, opts)

List transactions in transaction account

Lists transactions belonging to a transaction account by its ID.

### Examples

```ruby
require 'time'
require 'pocketsmith_ruby_client'
# setup authorization
PocketsmithRubyClient.configure do |config|
  # Configure API key authorization: developerKey
  config.api_key['X-Developer-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Developer-Key'] = 'Bearer'
end

api_instance = PocketsmithRubyClient::TransactionsApi.new
id = 42 # Integer | The unique identifier of the transaction account.
opts = {
  start_date: '2016-11-01', # String | Limit to transactions on or after this date. Required if end_date is provided. If not provided, defaults to the furtherest date allowed by the user's subscription.
  end_date: '2016-11-30', # String | Limit to transactions on or before this date. Required if start_date is provided. If not provided, defaults to today's date.
  updated_since: '2020-10-14T09:20:33+13:00', # String | Limit to transactions updated since an ISO 8601 timestamp.
  uncategorised: 1, # Integer | Limit to uncategorised transactions.
  type: 'debit', # String | Limit to transactions of this type.
  needs_review: 1, # Integer | Limit to transactions that need to be reviewed.
  search: 'Paypal', # String | Limit to transactions matching a keyword search string. The provided string is matched against the transaction amount, account name, payee, category title, note, labels, and the date in ISO 8601 format.
  page: 3 # Integer | Choose a particular page of the results.
}

begin
  # List transactions in transaction account
  result = api_instance.transaction_accounts_id_transactions_get(id, opts)
  p result
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling TransactionsApi->transaction_accounts_id_transactions_get: #{e}"
end
```

#### Using the transaction_accounts_id_transactions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Transaction>>, Integer, Hash)> transaction_accounts_id_transactions_get_with_http_info(id, opts)

```ruby
begin
  # List transactions in transaction account
  data, status_code, headers = api_instance.transaction_accounts_id_transactions_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Transaction>>
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling TransactionsApi->transaction_accounts_id_transactions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the transaction account. |  |
| **start_date** | **String** | Limit to transactions on or after this date. Required if end_date is provided. If not provided, defaults to the furtherest date allowed by the user&#39;s subscription. | [optional] |
| **end_date** | **String** | Limit to transactions on or before this date. Required if start_date is provided. If not provided, defaults to today&#39;s date. | [optional] |
| **updated_since** | **String** | Limit to transactions updated since an ISO 8601 timestamp. | [optional] |
| **uncategorised** | **Integer** | Limit to uncategorised transactions. | [optional] |
| **type** | **String** | Limit to transactions of this type. | [optional] |
| **needs_review** | **Integer** | Limit to transactions that need to be reviewed. | [optional] |
| **search** | **String** | Limit to transactions matching a keyword search string. The provided string is matched against the transaction amount, account name, payee, category title, note, labels, and the date in ISO 8601 format. | [optional] |
| **page** | **Integer** | Choose a particular page of the results. | [optional] |

### Return type

[**Array&lt;Transaction&gt;**](Transaction.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## transaction_accounts_id_transactions_post

> <Transaction> transaction_accounts_id_transactions_post(id, opts)

Create a transaction in transaction account

Creates a transaction in a transaction account by its ID.

### Examples

```ruby
require 'time'
require 'pocketsmith_ruby_client'
# setup authorization
PocketsmithRubyClient.configure do |config|
  # Configure API key authorization: developerKey
  config.api_key['X-Developer-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Developer-Key'] = 'Bearer'
end

api_instance = PocketsmithRubyClient::TransactionsApi.new
id = 42 # Integer | The unique identifier of the transaction account.
opts = {
  transaction_accounts_id_transactions_post_request: PocketsmithRubyClient::TransactionAccountsIdTransactionsPostRequest.new({payee: 'Tex Otago', amount: 11.5, date: '2018-02-27'}) # TransactionAccountsIdTransactionsPostRequest | 
}

begin
  # Create a transaction in transaction account
  result = api_instance.transaction_accounts_id_transactions_post(id, opts)
  p result
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling TransactionsApi->transaction_accounts_id_transactions_post: #{e}"
end
```

#### Using the transaction_accounts_id_transactions_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Transaction>, Integer, Hash)> transaction_accounts_id_transactions_post_with_http_info(id, opts)

```ruby
begin
  # Create a transaction in transaction account
  data, status_code, headers = api_instance.transaction_accounts_id_transactions_post_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Transaction>
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling TransactionsApi->transaction_accounts_id_transactions_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the transaction account. |  |
| **transaction_accounts_id_transactions_post_request** | [**TransactionAccountsIdTransactionsPostRequest**](TransactionAccountsIdTransactionsPostRequest.md) |  | [optional] |

### Return type

[**Transaction**](Transaction.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## transactions_id_delete

> transactions_id_delete(id)

Delete transaction

Deletes a transaction and all its data by ID.

### Examples

```ruby
require 'time'
require 'pocketsmith_ruby_client'
# setup authorization
PocketsmithRubyClient.configure do |config|
  # Configure API key authorization: developerKey
  config.api_key['X-Developer-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Developer-Key'] = 'Bearer'
end

api_instance = PocketsmithRubyClient::TransactionsApi.new
id = 42 # Integer | The unique identifier of the transaction.

begin
  # Delete transaction
  api_instance.transactions_id_delete(id)
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling TransactionsApi->transactions_id_delete: #{e}"
end
```

#### Using the transactions_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> transactions_id_delete_with_http_info(id)

```ruby
begin
  # Delete transaction
  data, status_code, headers = api_instance.transactions_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling TransactionsApi->transactions_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the transaction. |  |

### Return type

nil (empty response body)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## transactions_id_get

> <Transaction> transactions_id_get(id)

Get a transaction

Gets a transaction by its ID.

### Examples

```ruby
require 'time'
require 'pocketsmith_ruby_client'
# setup authorization
PocketsmithRubyClient.configure do |config|
  # Configure API key authorization: developerKey
  config.api_key['X-Developer-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Developer-Key'] = 'Bearer'
end

api_instance = PocketsmithRubyClient::TransactionsApi.new
id = 42 # Integer | The unique identifier of the transaction.

begin
  # Get a transaction
  result = api_instance.transactions_id_get(id)
  p result
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling TransactionsApi->transactions_id_get: #{e}"
end
```

#### Using the transactions_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Transaction>, Integer, Hash)> transactions_id_get_with_http_info(id)

```ruby
begin
  # Get a transaction
  data, status_code, headers = api_instance.transactions_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Transaction>
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling TransactionsApi->transactions_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the transaction. |  |

### Return type

[**Transaction**](Transaction.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## transactions_id_put

> <Transaction> transactions_id_put(id, opts)

Update a transaction

Updates a transaction by its ID.

### Examples

```ruby
require 'time'
require 'pocketsmith_ruby_client'
# setup authorization
PocketsmithRubyClient.configure do |config|
  # Configure API key authorization: developerKey
  config.api_key['X-Developer-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Developer-Key'] = 'Bearer'
end

api_instance = PocketsmithRubyClient::TransactionsApi.new
id = 42 # Integer | The unique identifier of the transaction.
opts = {
  transactions_id_put_request: PocketsmithRubyClient::TransactionsIdPutRequest.new # TransactionsIdPutRequest | 
}

begin
  # Update a transaction
  result = api_instance.transactions_id_put(id, opts)
  p result
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling TransactionsApi->transactions_id_put: #{e}"
end
```

#### Using the transactions_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Transaction>, Integer, Hash)> transactions_id_put_with_http_info(id, opts)

```ruby
begin
  # Update a transaction
  data, status_code, headers = api_instance.transactions_id_put_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Transaction>
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling TransactionsApi->transactions_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the transaction. |  |
| **transactions_id_put_request** | [**TransactionsIdPutRequest**](TransactionsIdPutRequest.md) |  | [optional] |

### Return type

[**Transaction**](Transaction.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## users_id_transactions_get

> <Array<Transaction>> users_id_transactions_get(id, opts)

List transactions in user

Lists transactions belonging to a user by their ID.

### Examples

```ruby
require 'time'
require 'pocketsmith_ruby_client'
# setup authorization
PocketsmithRubyClient.configure do |config|
  # Configure API key authorization: developerKey
  config.api_key['X-Developer-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Developer-Key'] = 'Bearer'
end

api_instance = PocketsmithRubyClient::TransactionsApi.new
id = 42 # Integer | The unique identifier of the user.
opts = {
  start_date: '2016-11-01', # String | Limit to transactions on or after this date. Required if end_date is provided. If not provided, defaults to the furtherest date allowed by the user's subscription.
  end_date: '2016-11-30', # String | Limit to transactions on or before this date. Required if start_date is provided. If not provided, defaults to today's date.
  updated_since: '2020-10-14T09:20:33+13:00', # String | Limit to transactions updated since an ISO 8601 timestamp.
  uncategorised: 1, # Integer | Limit to uncategorised transactions.
  type: 'debit', # String | Limit to transactions of this type.
  needs_review: 1, # Integer | Limit to transactions that need to be reviewed.
  search: 'Paypal', # String | Limit to transactions matching a keyword search string. The provided string is matched against the transaction amount, account name, payee, category title, note, labels, and the date in ISO 8601 format.
  page: 3 # Integer | Choose a particular page of the results.
}

begin
  # List transactions in user
  result = api_instance.users_id_transactions_get(id, opts)
  p result
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling TransactionsApi->users_id_transactions_get: #{e}"
end
```

#### Using the users_id_transactions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Transaction>>, Integer, Hash)> users_id_transactions_get_with_http_info(id, opts)

```ruby
begin
  # List transactions in user
  data, status_code, headers = api_instance.users_id_transactions_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Transaction>>
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling TransactionsApi->users_id_transactions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. |  |
| **start_date** | **String** | Limit to transactions on or after this date. Required if end_date is provided. If not provided, defaults to the furtherest date allowed by the user&#39;s subscription. | [optional] |
| **end_date** | **String** | Limit to transactions on or before this date. Required if start_date is provided. If not provided, defaults to today&#39;s date. | [optional] |
| **updated_since** | **String** | Limit to transactions updated since an ISO 8601 timestamp. | [optional] |
| **uncategorised** | **Integer** | Limit to uncategorised transactions. | [optional] |
| **type** | **String** | Limit to transactions of this type. | [optional] |
| **needs_review** | **Integer** | Limit to transactions that need to be reviewed. | [optional] |
| **search** | **String** | Limit to transactions matching a keyword search string. The provided string is matched against the transaction amount, account name, payee, category title, note, labels, and the date in ISO 8601 format. | [optional] |
| **page** | **Integer** | Choose a particular page of the results. | [optional] |

### Return type

[**Array&lt;Transaction&gt;**](Transaction.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

