# OpenapiClient::AccountsApi

All URIs are relative to *https://api.pocketsmith.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**accounts_id_delete**](AccountsApi.md#accounts_id_delete) | **DELETE** /accounts/{id} | Delete account |
| [**accounts_id_get**](AccountsApi.md#accounts_id_get) | **GET** /accounts/{id} | Get account |
| [**accounts_id_put**](AccountsApi.md#accounts_id_put) | **PUT** /accounts/{id} | Update account |
| [**institutions_id_accounts_get**](AccountsApi.md#institutions_id_accounts_get) | **GET** /institutions/{id}/accounts | List accounts in institution |
| [**users_id_accounts_get**](AccountsApi.md#users_id_accounts_get) | **GET** /users/{id}/accounts | List accounts in user |
| [**users_id_accounts_post**](AccountsApi.md#users_id_accounts_post) | **POST** /users/{id}/accounts | Create an account in user |
| [**users_id_accounts_put**](AccountsApi.md#users_id_accounts_put) | **PUT** /users/{id}/accounts | Update the display order of accounts in user |


## accounts_id_delete

> accounts_id_delete(id)

Delete account

Deletes an account and all its data by ID, optionally merge scenarios into another account.

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

api_instance = OpenapiClient::AccountsApi.new
id = 42 # Integer | The unique identifier of the account.

begin
  # Delete account
  api_instance.accounts_id_delete(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->accounts_id_delete: #{e}"
end
```

#### Using the accounts_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> accounts_id_delete_with_http_info(id)

```ruby
begin
  # Delete account
  data, status_code, headers = api_instance.accounts_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->accounts_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the account. |  |

### Return type

nil (empty response body)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## accounts_id_get

> <Account> accounts_id_get(id)

Get account

Gets an account by its ID.

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

api_instance = OpenapiClient::AccountsApi.new
id = 42 # Integer | The unique identifier of the account.

begin
  # Get account
  result = api_instance.accounts_id_get(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->accounts_id_get: #{e}"
end
```

#### Using the accounts_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> accounts_id_get_with_http_info(id)

```ruby
begin
  # Get account
  data, status_code, headers = api_instance.accounts_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->accounts_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the account. |  |

### Return type

[**Account**](Account.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## accounts_id_put

> <Account> accounts_id_put(id, opts)

Update account

Updates and returns an account by its ID.

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

api_instance = OpenapiClient::AccountsApi.new
id = 42 # Integer | The unique identifier of the account.
opts = {
  accounts_id_put_request: OpenapiClient::AccountsIdPutRequest.new # AccountsIdPutRequest | 
}

begin
  # Update account
  result = api_instance.accounts_id_put(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->accounts_id_put: #{e}"
end
```

#### Using the accounts_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> accounts_id_put_with_http_info(id, opts)

```ruby
begin
  # Update account
  data, status_code, headers = api_instance.accounts_id_put_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->accounts_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the account. |  |
| **accounts_id_put_request** | [**AccountsIdPutRequest**](AccountsIdPutRequest.md) |  | [optional] |

### Return type

[**Account**](Account.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## institutions_id_accounts_get

> <Array<Account>> institutions_id_accounts_get(id)

List accounts in institution

Lists accounts belonging to an institution by its ID.

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

api_instance = OpenapiClient::AccountsApi.new
id = 42 # Integer | The unique identifier of the institution.

begin
  # List accounts in institution
  result = api_instance.institutions_id_accounts_get(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->institutions_id_accounts_get: #{e}"
end
```

#### Using the institutions_id_accounts_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Account>>, Integer, Hash)> institutions_id_accounts_get_with_http_info(id)

```ruby
begin
  # List accounts in institution
  data, status_code, headers = api_instance.institutions_id_accounts_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Account>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->institutions_id_accounts_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the institution. |  |

### Return type

[**Array&lt;Account&gt;**](Account.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_id_accounts_get

> <Array<Account>> users_id_accounts_get(id)

List accounts in user

Lists all accounts belonging to the user by their ID.

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

api_instance = OpenapiClient::AccountsApi.new
id = 42 # Integer | The unique identifier of the user.

begin
  # List accounts in user
  result = api_instance.users_id_accounts_get(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->users_id_accounts_get: #{e}"
end
```

#### Using the users_id_accounts_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Account>>, Integer, Hash)> users_id_accounts_get_with_http_info(id)

```ruby
begin
  # List accounts in user
  data, status_code, headers = api_instance.users_id_accounts_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Account>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->users_id_accounts_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. |  |

### Return type

[**Array&lt;Account&gt;**](Account.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_id_accounts_post

> <Account> users_id_accounts_post(id, opts)

Create an account in user

Creates and returns an account belonging to the user by their ID.

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

api_instance = OpenapiClient::AccountsApi.new
id = 42 # Integer | The unique identifier of the user.
opts = {
  users_id_accounts_post_request: OpenapiClient::UsersIdAccountsPostRequest.new({institution_id: 42, title: 'Foo', currency_code: 'NZD', type: 'bank'}) # UsersIdAccountsPostRequest | 
}

begin
  # Create an account in user
  result = api_instance.users_id_accounts_post(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->users_id_accounts_post: #{e}"
end
```

#### Using the users_id_accounts_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> users_id_accounts_post_with_http_info(id, opts)

```ruby
begin
  # Create an account in user
  data, status_code, headers = api_instance.users_id_accounts_post_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->users_id_accounts_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. |  |
| **users_id_accounts_post_request** | [**UsersIdAccountsPostRequest**](UsersIdAccountsPostRequest.md) |  | [optional] |

### Return type

[**Account**](Account.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## users_id_accounts_put

> <Array<Account>> users_id_accounts_put(id, opts)

Update the display order of accounts in user

Updates the display order of accounts belonging to the user, by accepting an array of accounts in their new display order.

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

api_instance = OpenapiClient::AccountsApi.new
id = 42 # Integer | The unique identifier of the user.
opts = {
  users_id_accounts_put_request: OpenapiClient::UsersIdAccountsPutRequest.new({accounts: [OpenapiClient::Account.new]}) # UsersIdAccountsPutRequest | 
}

begin
  # Update the display order of accounts in user
  result = api_instance.users_id_accounts_put(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->users_id_accounts_put: #{e}"
end
```

#### Using the users_id_accounts_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Account>>, Integer, Hash)> users_id_accounts_put_with_http_info(id, opts)

```ruby
begin
  # Update the display order of accounts in user
  data, status_code, headers = api_instance.users_id_accounts_put_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Account>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->users_id_accounts_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. |  |
| **users_id_accounts_put_request** | [**UsersIdAccountsPutRequest**](UsersIdAccountsPutRequest.md) |  | [optional] |

### Return type

[**Array&lt;Account&gt;**](Account.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

