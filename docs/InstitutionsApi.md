# PocketsmithClient::InstitutionsApi

All URIs are relative to *https://api.pocketsmith.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**institutions_id_delete**](InstitutionsApi.md#institutions_id_delete) | **DELETE** /institutions/{id} | Delete institution |
| [**institutions_id_get**](InstitutionsApi.md#institutions_id_get) | **GET** /institutions/{id} | Get institution |
| [**institutions_id_put**](InstitutionsApi.md#institutions_id_put) | **PUT** /institutions/{id} | Update institution |
| [**users_id_institutions_get**](InstitutionsApi.md#users_id_institutions_get) | **GET** /users/{id}/institutions | List institutions in user |
| [**users_id_institutions_post**](InstitutionsApi.md#users_id_institutions_post) | **POST** /users/{id}/institutions | Create institution in user |


## institutions_id_delete

> institutions_id_delete(id, opts)

Delete institution

Deletes an institution and all data within. Alternatively, another institution can be provided to merge the data into to avoid losing it.

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

api_instance = PocketsmithClient::InstitutionsApi.new
id = 42 # Integer | The unique identifier of the institution.
opts = {
  merge_into_institution_id: 44 # Integer | The unique identifier of the institution to merge into.
}

begin
  # Delete institution
  api_instance.institutions_id_delete(id, opts)
rescue PocketsmithClient::ApiError => e
  puts "Error when calling InstitutionsApi->institutions_id_delete: #{e}"
end
```

#### Using the institutions_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> institutions_id_delete_with_http_info(id, opts)

```ruby
begin
  # Delete institution
  data, status_code, headers = api_instance.institutions_id_delete_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PocketsmithClient::ApiError => e
  puts "Error when calling InstitutionsApi->institutions_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the institution. |  |
| **merge_into_institution_id** | **Integer** | The unique identifier of the institution to merge into. | [optional] |

### Return type

nil (empty response body)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## institutions_id_get

> <Institution> institutions_id_get(id)

Get institution

Gets an institution by its ID.

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

api_instance = PocketsmithClient::InstitutionsApi.new
id = 42 # Integer | The unique identifier of the institution.

begin
  # Get institution
  result = api_instance.institutions_id_get(id)
  p result
rescue PocketsmithClient::ApiError => e
  puts "Error when calling InstitutionsApi->institutions_id_get: #{e}"
end
```

#### Using the institutions_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Institution>, Integer, Hash)> institutions_id_get_with_http_info(id)

```ruby
begin
  # Get institution
  data, status_code, headers = api_instance.institutions_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Institution>
rescue PocketsmithClient::ApiError => e
  puts "Error when calling InstitutionsApi->institutions_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the institution. |  |

### Return type

[**Institution**](Institution.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## institutions_id_put

> <Institution> institutions_id_put(id, opts)

Update institution

Updates the title and currency code for an institution.

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

api_instance = PocketsmithClient::InstitutionsApi.new
id = 42 # Integer | The unique identifier of the institution.
opts = {
  institutions_id_put_request: PocketsmithClient::InstitutionsIdPutRequest.new # InstitutionsIdPutRequest | 
}

begin
  # Update institution
  result = api_instance.institutions_id_put(id, opts)
  p result
rescue PocketsmithClient::ApiError => e
  puts "Error when calling InstitutionsApi->institutions_id_put: #{e}"
end
```

#### Using the institutions_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Institution>, Integer, Hash)> institutions_id_put_with_http_info(id, opts)

```ruby
begin
  # Update institution
  data, status_code, headers = api_instance.institutions_id_put_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Institution>
rescue PocketsmithClient::ApiError => e
  puts "Error when calling InstitutionsApi->institutions_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the institution. |  |
| **institutions_id_put_request** | [**InstitutionsIdPutRequest**](InstitutionsIdPutRequest.md) |  | [optional] |

### Return type

[**Institution**](Institution.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## users_id_institutions_get

> <Array<Institution>> users_id_institutions_get(id)

List institutions in user

Lists all the institutions belonging to the user.

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

api_instance = PocketsmithClient::InstitutionsApi.new
id = 42 # Integer | The unique identifier of the user

begin
  # List institutions in user
  result = api_instance.users_id_institutions_get(id)
  p result
rescue PocketsmithClient::ApiError => e
  puts "Error when calling InstitutionsApi->users_id_institutions_get: #{e}"
end
```

#### Using the users_id_institutions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Institution>>, Integer, Hash)> users_id_institutions_get_with_http_info(id)

```ruby
begin
  # List institutions in user
  data, status_code, headers = api_instance.users_id_institutions_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Institution>>
rescue PocketsmithClient::ApiError => e
  puts "Error when calling InstitutionsApi->users_id_institutions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user |  |

### Return type

[**Array&lt;Institution&gt;**](Institution.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_id_institutions_post

> <Institution> users_id_institutions_post(id, opts)

Create institution in user

Creates an institution belonging to a user.

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

api_instance = PocketsmithClient::InstitutionsApi.new
id = 42 # Integer | The unique identifier of the user
opts = {
  users_id_institutions_post_request: PocketsmithClient::UsersIdInstitutionsPostRequest.new({title: 'Bank of Foo', currency_code: 'NZD'}) # UsersIdInstitutionsPostRequest | 
}

begin
  # Create institution in user
  result = api_instance.users_id_institutions_post(id, opts)
  p result
rescue PocketsmithClient::ApiError => e
  puts "Error when calling InstitutionsApi->users_id_institutions_post: #{e}"
end
```

#### Using the users_id_institutions_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Institution>, Integer, Hash)> users_id_institutions_post_with_http_info(id, opts)

```ruby
begin
  # Create institution in user
  data, status_code, headers = api_instance.users_id_institutions_post_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Institution>
rescue PocketsmithClient::ApiError => e
  puts "Error when calling InstitutionsApi->users_id_institutions_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user |  |
| **users_id_institutions_post_request** | [**UsersIdInstitutionsPostRequest**](UsersIdInstitutionsPostRequest.md) |  | [optional] |

### Return type

[**Institution**](Institution.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

