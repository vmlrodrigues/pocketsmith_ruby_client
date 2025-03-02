# PocketsmithRubyClient::CategoriesApi

All URIs are relative to *https://api.pocketsmith.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**categories_id_delete**](CategoriesApi.md#categories_id_delete) | **DELETE** /categories/{id} | Delete category |
| [**categories_id_get**](CategoriesApi.md#categories_id_get) | **GET** /categories/{id} | Get category |
| [**categories_id_put**](CategoriesApi.md#categories_id_put) | **PUT** /categories/{id} | Update category |
| [**users_id_categories_get**](CategoriesApi.md#users_id_categories_get) | **GET** /users/{id}/categories | List categories in user |
| [**users_id_categories_post**](CategoriesApi.md#users_id_categories_post) | **POST** /users/{id}/categories | Create category in user |


## categories_id_delete

> categories_id_delete(id)

Delete category

Deletes a particular category by its ID. This will delete all budgets within the category, and uncategorize all transactions assigned to the category.

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

api_instance = PocketsmithRubyClient::CategoriesApi.new
id = 42 # Integer | The unique identifier of the category.

begin
  # Delete category
  api_instance.categories_id_delete(id)
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling CategoriesApi->categories_id_delete: #{e}"
end
```

#### Using the categories_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> categories_id_delete_with_http_info(id)

```ruby
begin
  # Delete category
  data, status_code, headers = api_instance.categories_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling CategoriesApi->categories_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the category. |  |

### Return type

nil (empty response body)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## categories_id_get

> <Category> categories_id_get(id)

Get category

Gets a particular category by its ID.

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

api_instance = PocketsmithRubyClient::CategoriesApi.new
id = 42 # Integer | The unique identifier of the category.

begin
  # Get category
  result = api_instance.categories_id_get(id)
  p result
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling CategoriesApi->categories_id_get: #{e}"
end
```

#### Using the categories_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Category>, Integer, Hash)> categories_id_get_with_http_info(id)

```ruby
begin
  # Get category
  data, status_code, headers = api_instance.categories_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Category>
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling CategoriesApi->categories_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the category. |  |

### Return type

[**Category**](Category.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## categories_id_put

> <Category> categories_id_put(id, opts)

Update category

Updates a category by its ID.

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

api_instance = PocketsmithRubyClient::CategoriesApi.new
id = 42 # Integer | The unique identifier of the category.
opts = {
  categories_id_put_request: PocketsmithRubyClient::CategoriesIdPutRequest.new # CategoriesIdPutRequest | 
}

begin
  # Update category
  result = api_instance.categories_id_put(id, opts)
  p result
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling CategoriesApi->categories_id_put: #{e}"
end
```

#### Using the categories_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Category>, Integer, Hash)> categories_id_put_with_http_info(id, opts)

```ruby
begin
  # Update category
  data, status_code, headers = api_instance.categories_id_put_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Category>
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling CategoriesApi->categories_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the category. |  |
| **categories_id_put_request** | [**CategoriesIdPutRequest**](CategoriesIdPutRequest.md) |  | [optional] |

### Return type

[**Category**](Category.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## users_id_categories_get

> <Array<Category>> users_id_categories_get(id)

List categories in user

Lists all categories belonging to a user by their ID.

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

api_instance = PocketsmithRubyClient::CategoriesApi.new
id = 42 # Integer | The unique identifier of the user.

begin
  # List categories in user
  result = api_instance.users_id_categories_get(id)
  p result
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling CategoriesApi->users_id_categories_get: #{e}"
end
```

#### Using the users_id_categories_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Category>>, Integer, Hash)> users_id_categories_get_with_http_info(id)

```ruby
begin
  # List categories in user
  data, status_code, headers = api_instance.users_id_categories_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Category>>
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling CategoriesApi->users_id_categories_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. |  |

### Return type

[**Array&lt;Category&gt;**](Category.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_id_categories_post

> <Category> users_id_categories_post(id, opts)

Create category in user

Creates a category belonging to the user by their ID.

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

api_instance = PocketsmithRubyClient::CategoriesApi.new
id = 42 # Integer | The unique identifier of the user.
opts = {
  users_id_categories_post_request: PocketsmithRubyClient::UsersIdCategoriesPostRequest.new({title: 'Food'}) # UsersIdCategoriesPostRequest | 
}

begin
  # Create category in user
  result = api_instance.users_id_categories_post(id, opts)
  p result
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling CategoriesApi->users_id_categories_post: #{e}"
end
```

#### Using the users_id_categories_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Category>, Integer, Hash)> users_id_categories_post_with_http_info(id, opts)

```ruby
begin
  # Create category in user
  data, status_code, headers = api_instance.users_id_categories_post_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Category>
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling CategoriesApi->users_id_categories_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. |  |
| **users_id_categories_post_request** | [**UsersIdCategoriesPostRequest**](UsersIdCategoriesPostRequest.md) |  | [optional] |

### Return type

[**Category**](Category.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

