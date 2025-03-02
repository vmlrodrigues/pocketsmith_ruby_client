# PocketsmithClient::UsersApi

All URIs are relative to *https://api.pocketsmith.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**me_get**](UsersApi.md#me_get) | **GET** /me | Get the authorised user |
| [**users_id_get**](UsersApi.md#users_id_get) | **GET** /users/{id} | Get user |
| [**users_id_put**](UsersApi.md#users_id_put) | **PUT** /users/{id} | Update user |


## me_get

> <User> me_get

Get the authorised user

Gets the user that corresponds to the access token used in the request.

### Examples

```ruby
require 'time'
require 'pocketsmith_ruby_client'
# setup authorization
PocketsmithClient.configure do |config|
  # Configure API key authorization: developerKey
  config.api_key['X-Developer-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Developer-Key'] = 'Bearer'
end

api_instance = PocketsmithClient::UsersApi.new

begin
  # Get the authorised user
  result = api_instance.me_get
  p result
rescue PocketsmithClient::ApiError => e
  puts "Error when calling UsersApi->me_get: #{e}"
end
```

#### Using the me_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> me_get_with_http_info

```ruby
begin
  # Get the authorised user
  data, status_code, headers = api_instance.me_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue PocketsmithClient::ApiError => e
  puts "Error when calling UsersApi->me_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_id_get

> <User> users_id_get(id)

Get user

Gets a user by ID. You must be authorised as the target user in order to make this request.

### Examples

```ruby
require 'time'
require 'pocketsmith_ruby_client'
# setup authorization
PocketsmithClient.configure do |config|
  # Configure API key authorization: developerKey
  config.api_key['X-Developer-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Developer-Key'] = 'Bearer'
end

api_instance = PocketsmithClient::UsersApi.new
id = 42 # Integer | The unique identifier of the user.

begin
  # Get user
  result = api_instance.users_id_get(id)
  p result
rescue PocketsmithClient::ApiError => e
  puts "Error when calling UsersApi->users_id_get: #{e}"
end
```

#### Using the users_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> users_id_get_with_http_info(id)

```ruby
begin
  # Get user
  data, status_code, headers = api_instance.users_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue PocketsmithClient::ApiError => e
  puts "Error when calling UsersApi->users_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. |  |

### Return type

[**User**](User.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_id_put

> <User> users_id_put(id, opts)

Update user

Updates the user by their ID. You must be authorised as the target user in order to make this request.

### Examples

```ruby
require 'time'
require 'pocketsmith_ruby_client'
# setup authorization
PocketsmithClient.configure do |config|
  # Configure API key authorization: developerKey
  config.api_key['X-Developer-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Developer-Key'] = 'Bearer'
end

api_instance = PocketsmithClient::UsersApi.new
id = 42 # Integer | The unique identifier of the user.
opts = {
  users_id_put_request: PocketsmithClient::UsersIdPutRequest.new # UsersIdPutRequest | 
}

begin
  # Update user
  result = api_instance.users_id_put(id, opts)
  p result
rescue PocketsmithClient::ApiError => e
  puts "Error when calling UsersApi->users_id_put: #{e}"
end
```

#### Using the users_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> users_id_put_with_http_info(id, opts)

```ruby
begin
  # Update user
  data, status_code, headers = api_instance.users_id_put_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue PocketsmithClient::ApiError => e
  puts "Error when calling UsersApi->users_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. |  |
| **users_id_put_request** | [**UsersIdPutRequest**](UsersIdPutRequest.md) |  | [optional] |

### Return type

[**User**](User.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

