# PocketsmithClient::CategoryRulesApi

All URIs are relative to *https://api.pocketsmith.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**categories_id_category_rules_post**](CategoryRulesApi.md#categories_id_category_rules_post) | **POST** /categories/{id}/category_rules | Create category rule in category |
| [**users_id_category_rules_get**](CategoryRulesApi.md#users_id_category_rules_get) | **GET** /users/{id}/category_rules | List category rules in user |


## categories_id_category_rules_post

> <CategoryRule> categories_id_category_rules_post(id, opts)

Create category rule in category

Creates a rule to allocate a category to transactions.

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

api_instance = PocketsmithClient::CategoryRulesApi.new
id = 42 # Integer | The unique identifier of the category.
opts = {
  categories_id_category_rules_post_request: PocketsmithClient::CategoriesIdCategoryRulesPostRequest.new({payee_matches: 'Countdown'}) # CategoriesIdCategoryRulesPostRequest | 
}

begin
  # Create category rule in category
  result = api_instance.categories_id_category_rules_post(id, opts)
  p result
rescue PocketsmithClient::ApiError => e
  puts "Error when calling CategoryRulesApi->categories_id_category_rules_post: #{e}"
end
```

#### Using the categories_id_category_rules_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CategoryRule>, Integer, Hash)> categories_id_category_rules_post_with_http_info(id, opts)

```ruby
begin
  # Create category rule in category
  data, status_code, headers = api_instance.categories_id_category_rules_post_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CategoryRule>
rescue PocketsmithClient::ApiError => e
  puts "Error when calling CategoryRulesApi->categories_id_category_rules_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the category. |  |
| **categories_id_category_rules_post_request** | [**CategoriesIdCategoryRulesPostRequest**](CategoriesIdCategoryRulesPostRequest.md) |  | [optional] |

### Return type

[**CategoryRule**](CategoryRule.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## users_id_category_rules_get

> <Array<CategoryRule>> users_id_category_rules_get(id)

List category rules in user

Lists all category rules belonging to a user by their ID.

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

api_instance = PocketsmithClient::CategoryRulesApi.new
id = 42 # Integer | The unique identifier of the user.

begin
  # List category rules in user
  result = api_instance.users_id_category_rules_get(id)
  p result
rescue PocketsmithClient::ApiError => e
  puts "Error when calling CategoryRulesApi->users_id_category_rules_get: #{e}"
end
```

#### Using the users_id_category_rules_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CategoryRule>>, Integer, Hash)> users_id_category_rules_get_with_http_info(id)

```ruby
begin
  # List category rules in user
  data, status_code, headers = api_instance.users_id_category_rules_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CategoryRule>>
rescue PocketsmithClient::ApiError => e
  puts "Error when calling CategoryRulesApi->users_id_category_rules_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. |  |

### Return type

[**Array&lt;CategoryRule&gt;**](CategoryRule.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

