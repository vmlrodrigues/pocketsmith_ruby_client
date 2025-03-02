# PocketsmithClient::LabelsApi

All URIs are relative to *https://api.pocketsmith.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**users_id_labels_get**](LabelsApi.md#users_id_labels_get) | **GET** /users/{id}/labels | List labels in user |


## users_id_labels_get

> Array&lt;String&gt; users_id_labels_get(id)

List labels in user

Lists labels belonging to a user by their ID.

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

api_instance = PocketsmithClient::LabelsApi.new
id = 42 # Integer | The unique identifier of the user.

begin
  # List labels in user
  result = api_instance.users_id_labels_get(id)
  p result
rescue PocketsmithClient::ApiError => e
  puts "Error when calling LabelsApi->users_id_labels_get: #{e}"
end
```

#### Using the users_id_labels_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> users_id_labels_get_with_http_info(id)

```ruby
begin
  # List labels in user
  data, status_code, headers = api_instance.users_id_labels_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue PocketsmithClient::ApiError => e
  puts "Error when calling LabelsApi->users_id_labels_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. |  |

### Return type

**Array&lt;String&gt;**

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

