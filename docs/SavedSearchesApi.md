# OpenapiClient::SavedSearchesApi

All URIs are relative to *https://api.pocketsmith.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**users_id_saved_searches_get**](SavedSearchesApi.md#users_id_saved_searches_get) | **GET** /users/{id}/saved_searches | List saved searches in user |


## users_id_saved_searches_get

> <Array<SavedSearch>> users_id_saved_searches_get(id)

List saved searches in user

Lists saved searches belonging to a user by their ID.

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

api_instance = OpenapiClient::SavedSearchesApi.new
id = 42 # Integer | The unique identifier of the user.

begin
  # List saved searches in user
  result = api_instance.users_id_saved_searches_get(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SavedSearchesApi->users_id_saved_searches_get: #{e}"
end
```

#### Using the users_id_saved_searches_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SavedSearch>>, Integer, Hash)> users_id_saved_searches_get_with_http_info(id)

```ruby
begin
  # List saved searches in user
  data, status_code, headers = api_instance.users_id_saved_searches_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SavedSearch>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SavedSearchesApi->users_id_saved_searches_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. |  |

### Return type

[**Array&lt;SavedSearch&gt;**](SavedSearch.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

