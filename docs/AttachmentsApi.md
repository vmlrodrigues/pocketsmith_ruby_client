# PocketsmithRubyClient::AttachmentsApi

All URIs are relative to *https://api.pocketsmith.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attachments_id_delete**](AttachmentsApi.md#attachments_id_delete) | **DELETE** /attachments/{id} | Delete attachment |
| [**attachments_id_get**](AttachmentsApi.md#attachments_id_get) | **GET** /attachments/{id} | Get attachment |
| [**attachments_id_put**](AttachmentsApi.md#attachments_id_put) | **PUT** /attachments/{id} | Update attachment |
| [**transactions_id_attachments_get**](AttachmentsApi.md#transactions_id_attachments_get) | **GET** /transactions/{id}/attachments | List attachments in transaction |
| [**transactions_id_attachments_post**](AttachmentsApi.md#transactions_id_attachments_post) | **POST** /transactions/{id}/attachments | Assigns attachment to transaction |
| [**transactions_transaction_id_attachments_attachment_id_delete**](AttachmentsApi.md#transactions_transaction_id_attachments_attachment_id_delete) | **DELETE** /transactions/{transaction_id}/attachments/{attachment_id} | Unassigns attachment in transaction |
| [**users_id_attachments_get**](AttachmentsApi.md#users_id_attachments_get) | **GET** /users/{id}/attachments | Lists attachments in user |
| [**users_id_attachments_post**](AttachmentsApi.md#users_id_attachments_post) | **POST** /users/{id}/attachments | Create attachment in user |


## attachments_id_delete

> attachments_id_delete(id)

Delete attachment

Deletes a particular attachment by its ID.

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

api_instance = PocketsmithRubyClient::AttachmentsApi.new
id = 42 # Integer | The unique identifier of the attachment.

begin
  # Delete attachment
  api_instance.attachments_id_delete(id)
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_id_delete: #{e}"
end
```

#### Using the attachments_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> attachments_id_delete_with_http_info(id)

```ruby
begin
  # Delete attachment
  data, status_code, headers = api_instance.attachments_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the attachment. |  |

### Return type

nil (empty response body)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## attachments_id_get

> <Attachment> attachments_id_get(id)

Get attachment

Gets a particular attachment by its ID.

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

api_instance = PocketsmithRubyClient::AttachmentsApi.new
id = 42 # Integer | The unique identifier of the attachment.

begin
  # Get attachment
  result = api_instance.attachments_id_get(id)
  p result
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_id_get: #{e}"
end
```

#### Using the attachments_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Attachment>, Integer, Hash)> attachments_id_get_with_http_info(id)

```ruby
begin
  # Get attachment
  data, status_code, headers = api_instance.attachments_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Attachment>
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the attachment. |  |

### Return type

[**Attachment**](Attachment.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## attachments_id_put

> <Attachment> attachments_id_put(id, opts)

Update attachment

Updates the title of the attachment.

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

api_instance = PocketsmithRubyClient::AttachmentsApi.new
id = 42 # Integer | The unique identifier of the attachment.
opts = {
  attachments_id_put_request: PocketsmithRubyClient::AttachmentsIdPutRequest.new # AttachmentsIdPutRequest | 
}

begin
  # Update attachment
  result = api_instance.attachments_id_put(id, opts)
  p result
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_id_put: #{e}"
end
```

#### Using the attachments_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Attachment>, Integer, Hash)> attachments_id_put_with_http_info(id, opts)

```ruby
begin
  # Update attachment
  data, status_code, headers = api_instance.attachments_id_put_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Attachment>
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the attachment. |  |
| **attachments_id_put_request** | [**AttachmentsIdPutRequest**](AttachmentsIdPutRequest.md) |  | [optional] |

### Return type

[**Attachment**](Attachment.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## transactions_id_attachments_get

> <Array<Attachment>> transactions_id_attachments_get(id)

List attachments in transaction

Lists attachments belonging to a transaction by their ID.

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

api_instance = PocketsmithRubyClient::AttachmentsApi.new
id = 42 # Integer | The unique identifier of the transaction.

begin
  # List attachments in transaction
  result = api_instance.transactions_id_attachments_get(id)
  p result
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling AttachmentsApi->transactions_id_attachments_get: #{e}"
end
```

#### Using the transactions_id_attachments_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Attachment>>, Integer, Hash)> transactions_id_attachments_get_with_http_info(id)

```ruby
begin
  # List attachments in transaction
  data, status_code, headers = api_instance.transactions_id_attachments_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Attachment>>
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling AttachmentsApi->transactions_id_attachments_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the transaction. |  |

### Return type

[**Array&lt;Attachment&gt;**](Attachment.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## transactions_id_attachments_post

> <Attachment> transactions_id_attachments_post(id, opts)

Assigns attachment to transaction

Assigns an attachment to the transaction by their ID.

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

api_instance = PocketsmithRubyClient::AttachmentsApi.new
id = 42 # Integer | The unique identifier of the transaction.
opts = {
  transactions_id_attachments_post_request: PocketsmithRubyClient::TransactionsIdAttachmentsPostRequest.new # TransactionsIdAttachmentsPostRequest | 
}

begin
  # Assigns attachment to transaction
  result = api_instance.transactions_id_attachments_post(id, opts)
  p result
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling AttachmentsApi->transactions_id_attachments_post: #{e}"
end
```

#### Using the transactions_id_attachments_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Attachment>, Integer, Hash)> transactions_id_attachments_post_with_http_info(id, opts)

```ruby
begin
  # Assigns attachment to transaction
  data, status_code, headers = api_instance.transactions_id_attachments_post_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Attachment>
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling AttachmentsApi->transactions_id_attachments_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the transaction. |  |
| **transactions_id_attachments_post_request** | [**TransactionsIdAttachmentsPostRequest**](TransactionsIdAttachmentsPostRequest.md) |  | [optional] |

### Return type

[**Attachment**](Attachment.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## transactions_transaction_id_attachments_attachment_id_delete

> transactions_transaction_id_attachments_attachment_id_delete(transaction_id, attachment_id)

Unassigns attachment in transaction

Unassigns a particular attachment by its ID from the transaction ID. This does not delete the attachment, it only removes its association from the transaction.

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

api_instance = PocketsmithRubyClient::AttachmentsApi.new
transaction_id = 42 # Integer | The unique identifier of the transaction.
attachment_id = 1438154 # Integer | The unique identifier of the attachment.

begin
  # Unassigns attachment in transaction
  api_instance.transactions_transaction_id_attachments_attachment_id_delete(transaction_id, attachment_id)
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling AttachmentsApi->transactions_transaction_id_attachments_attachment_id_delete: #{e}"
end
```

#### Using the transactions_transaction_id_attachments_attachment_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> transactions_transaction_id_attachments_attachment_id_delete_with_http_info(transaction_id, attachment_id)

```ruby
begin
  # Unassigns attachment in transaction
  data, status_code, headers = api_instance.transactions_transaction_id_attachments_attachment_id_delete_with_http_info(transaction_id, attachment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling AttachmentsApi->transactions_transaction_id_attachments_attachment_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **Integer** | The unique identifier of the transaction. |  |
| **attachment_id** | **Integer** | The unique identifier of the attachment. |  |

### Return type

nil (empty response body)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_id_attachments_get

> <Array<Attachment>> users_id_attachments_get(id, opts)

Lists attachments in user

Lists attachments belonging to a user by their ID.

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

api_instance = PocketsmithRubyClient::AttachmentsApi.new
id = 42 # Integer | The unique identifier of the user.
opts = {
  unassigned: 1 # Integer | If set, returns unassigned attachments, that are available for assigning to a transaction.
}

begin
  # Lists attachments in user
  result = api_instance.users_id_attachments_get(id, opts)
  p result
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling AttachmentsApi->users_id_attachments_get: #{e}"
end
```

#### Using the users_id_attachments_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Attachment>>, Integer, Hash)> users_id_attachments_get_with_http_info(id, opts)

```ruby
begin
  # Lists attachments in user
  data, status_code, headers = api_instance.users_id_attachments_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Attachment>>
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling AttachmentsApi->users_id_attachments_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. |  |
| **unassigned** | **Integer** | If set, returns unassigned attachments, that are available for assigning to a transaction. | [optional] |

### Return type

[**Array&lt;Attachment&gt;**](Attachment.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_id_attachments_post

> <Attachment> users_id_attachments_post(id, opts)

Create attachment in user

Creates an attachment belonging to the user by their ID.

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

api_instance = PocketsmithRubyClient::AttachmentsApi.new
id = 42 # Integer | The unique identifier of the user.
opts = {
  users_id_attachments_post_request: PocketsmithRubyClient::UsersIdAttachmentsPostRequest.new # UsersIdAttachmentsPostRequest | 
}

begin
  # Create attachment in user
  result = api_instance.users_id_attachments_post(id, opts)
  p result
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling AttachmentsApi->users_id_attachments_post: #{e}"
end
```

#### Using the users_id_attachments_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Attachment>, Integer, Hash)> users_id_attachments_post_with_http_info(id, opts)

```ruby
begin
  # Create attachment in user
  data, status_code, headers = api_instance.users_id_attachments_post_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Attachment>
rescue PocketsmithRubyClient::ApiError => e
  puts "Error when calling AttachmentsApi->users_id_attachments_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. |  |
| **users_id_attachments_post_request** | [**UsersIdAttachmentsPostRequest**](UsersIdAttachmentsPostRequest.md) |  | [optional] |

### Return type

[**Attachment**](Attachment.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

