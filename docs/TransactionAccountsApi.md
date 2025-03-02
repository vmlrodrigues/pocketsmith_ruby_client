# OpenapiClient::TransactionAccountsApi

All URIs are relative to *https://api.pocketsmith.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**transaction_accounts_id_get**](TransactionAccountsApi.md#transaction_accounts_id_get) | **GET** /transaction_accounts/{id} | Get transaction account |
| [**transaction_accounts_id_put**](TransactionAccountsApi.md#transaction_accounts_id_put) | **PUT** /transaction_accounts/{id} | Update transaction account |
| [**users_id_transaction_accounts_get**](TransactionAccountsApi.md#users_id_transaction_accounts_get) | **GET** /users/{id}/transaction_accounts | List transaction accounts in user |


## transaction_accounts_id_get

> <TransactionAccount> transaction_accounts_id_get(id)

Get transaction account

Gets a transaction account by its ID.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: developerKey
  config.api_key['X-Developer-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Developer-Key'] = 'Bearer'
end

api_instance = OpenapiClient::TransactionAccountsApi.new
id = 42 # Integer | The unique identifier of the transaction account.

begin
  # Get transaction account
  result = api_instance.transaction_accounts_id_get(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionAccountsApi->transaction_accounts_id_get: #{e}"
end
```

#### Using the transaction_accounts_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionAccount>, Integer, Hash)> transaction_accounts_id_get_with_http_info(id)

```ruby
begin
  # Get transaction account
  data, status_code, headers = api_instance.transaction_accounts_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionAccount>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionAccountsApi->transaction_accounts_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the transaction account. |  |

### Return type

[**TransactionAccount**](TransactionAccount.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## transaction_accounts_id_put

> <TransactionAccount> transaction_accounts_id_put(id, opts)

Update transaction account

Updates the transaction account by its ID.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: developerKey
  config.api_key['X-Developer-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Developer-Key'] = 'Bearer'
end

api_instance = OpenapiClient::TransactionAccountsApi.new
id = 42 # Integer | The unique identifier of the transaction account.
opts = {
  transaction_accounts_id_put_request: OpenapiClient::TransactionAccountsIdPutRequest.new # TransactionAccountsIdPutRequest | 
}

begin
  # Update transaction account
  result = api_instance.transaction_accounts_id_put(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionAccountsApi->transaction_accounts_id_put: #{e}"
end
```

#### Using the transaction_accounts_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionAccount>, Integer, Hash)> transaction_accounts_id_put_with_http_info(id, opts)

```ruby
begin
  # Update transaction account
  data, status_code, headers = api_instance.transaction_accounts_id_put_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionAccount>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionAccountsApi->transaction_accounts_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the transaction account. |  |
| **transaction_accounts_id_put_request** | [**TransactionAccountsIdPutRequest**](TransactionAccountsIdPutRequest.md) |  | [optional] |

### Return type

[**TransactionAccount**](TransactionAccount.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## users_id_transaction_accounts_get

> <Array<TransactionAccount>> users_id_transaction_accounts_get(id)

List transaction accounts in user

List all transaction accounts belonging to a user.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: developerKey
  config.api_key['X-Developer-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Developer-Key'] = 'Bearer'
end

api_instance = OpenapiClient::TransactionAccountsApi.new
id = 42 # Integer | The unique identifier of the user.

begin
  # List transaction accounts in user
  result = api_instance.users_id_transaction_accounts_get(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionAccountsApi->users_id_transaction_accounts_get: #{e}"
end
```

#### Using the users_id_transaction_accounts_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TransactionAccount>>, Integer, Hash)> users_id_transaction_accounts_get_with_http_info(id)

```ruby
begin
  # List transaction accounts in user
  data, status_code, headers = api_instance.users_id_transaction_accounts_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TransactionAccount>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionAccountsApi->users_id_transaction_accounts_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. |  |

### Return type

[**Array&lt;TransactionAccount&gt;**](TransactionAccount.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

