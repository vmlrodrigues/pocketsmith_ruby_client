# OpenapiClient::EventsApi

All URIs are relative to *https://api.pocketsmith.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**events_id_delete**](EventsApi.md#events_id_delete) | **DELETE** /events/{id} | Delete event |
| [**events_id_get**](EventsApi.md#events_id_get) | **GET** /events/{id} | Get event |
| [**events_id_put**](EventsApi.md#events_id_put) | **PUT** /events/{id} | Update event |
| [**scenarios_id_events_get**](EventsApi.md#scenarios_id_events_get) | **GET** /scenarios/{id}/events | List events in scenario. |
| [**scenarios_id_events_post**](EventsApi.md#scenarios_id_events_post) | **POST** /scenarios/{id}/events | Create event in scenario |
| [**users_id_events_get**](EventsApi.md#users_id_events_get) | **GET** /users/{id}/events | List events in user. |


## events_id_delete

> events_id_delete(id, behaviour)

Delete event

Deletes an event by its ID.

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

api_instance = OpenapiClient::EventsApi.new
id = '42-1601942400' # String | The unique identifier of the event.
behaviour = 'one' # String | Whether the delete applies only to this event, to all events within the series from this event or to all events within the series.

begin
  # Delete event
  api_instance.events_id_delete(id, behaviour)
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->events_id_delete: #{e}"
end
```

#### Using the events_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> events_id_delete_with_http_info(id, behaviour)

```ruby
begin
  # Delete event
  data, status_code, headers = api_instance.events_id_delete_with_http_info(id, behaviour)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->events_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the event. |  |
| **behaviour** | **String** | Whether the delete applies only to this event, to all events within the series from this event or to all events within the series. |  |

### Return type

nil (empty response body)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## events_id_get

> <Event> events_id_get(id)

Get event

Gets a particular event by its ID.

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

api_instance = OpenapiClient::EventsApi.new
id = '42-1601942400' # String | The unique identifier of the event.

begin
  # Get event
  result = api_instance.events_id_get(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->events_id_get: #{e}"
end
```

#### Using the events_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Event>, Integer, Hash)> events_id_get_with_http_info(id)

```ruby
begin
  # Get event
  data, status_code, headers = api_instance.events_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Event>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->events_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the event. |  |

### Return type

[**Event**](Event.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## events_id_put

> <Event> events_id_put(id, opts)

Update event

Updates an event by its ID.

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

api_instance = OpenapiClient::EventsApi.new
id = '42-1601942400' # String | The unique identifier of the event.
opts = {
  events_id_put_request: OpenapiClient::EventsIdPutRequest.new({behaviour: 'one'}) # EventsIdPutRequest | 
}

begin
  # Update event
  result = api_instance.events_id_put(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->events_id_put: #{e}"
end
```

#### Using the events_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Event>, Integer, Hash)> events_id_put_with_http_info(id, opts)

```ruby
begin
  # Update event
  data, status_code, headers = api_instance.events_id_put_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Event>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->events_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the event. |  |
| **events_id_put_request** | [**EventsIdPutRequest**](EventsIdPutRequest.md) |  | [optional] |

### Return type

[**Event**](Event.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## scenarios_id_events_get

> <Array<Event>> scenarios_id_events_get(id, start_date, end_date)

List events in scenario.

Lists events belonging to a scenario by their ID.

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

api_instance = OpenapiClient::EventsApi.new
id = 42 # Integer | The unique identifier of the scenario.
start_date = '2020-10-01' # String | Return the events from and including this date.
end_date = '2020-10-30' # String | Return the events until and including this date.

begin
  # List events in scenario.
  result = api_instance.scenarios_id_events_get(id, start_date, end_date)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->scenarios_id_events_get: #{e}"
end
```

#### Using the scenarios_id_events_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Event>>, Integer, Hash)> scenarios_id_events_get_with_http_info(id, start_date, end_date)

```ruby
begin
  # List events in scenario.
  data, status_code, headers = api_instance.scenarios_id_events_get_with_http_info(id, start_date, end_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Event>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->scenarios_id_events_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the scenario. |  |
| **start_date** | **String** | Return the events from and including this date. |  |
| **end_date** | **String** | Return the events until and including this date. |  |

### Return type

[**Array&lt;Event&gt;**](Event.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## scenarios_id_events_post

> <Event> scenarios_id_events_post(id, opts)

Create event in scenario

Creates an event in a scenario by its ID.

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

api_instance = OpenapiClient::EventsApi.new
id = 42 # Integer | The unique identifier of the scenario.
opts = {
  scenarios_id_events_post_request: OpenapiClient::ScenariosIdEventsPostRequest.new({category_id: 42, date: '2020-10-27', amount: 11.5, repeat_type: 'once'}) # ScenariosIdEventsPostRequest | 
}

begin
  # Create event in scenario
  result = api_instance.scenarios_id_events_post(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->scenarios_id_events_post: #{e}"
end
```

#### Using the scenarios_id_events_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Event>, Integer, Hash)> scenarios_id_events_post_with_http_info(id, opts)

```ruby
begin
  # Create event in scenario
  data, status_code, headers = api_instance.scenarios_id_events_post_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Event>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->scenarios_id_events_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the scenario. |  |
| **scenarios_id_events_post_request** | [**ScenariosIdEventsPostRequest**](ScenariosIdEventsPostRequest.md) |  | [optional] |

### Return type

[**Event**](Event.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## users_id_events_get

> <Array<Event>> users_id_events_get(id, start_date, end_date)

List events in user.

Lists events belonging to a user by their ID.

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

api_instance = OpenapiClient::EventsApi.new
id = 42 # Integer | The unique identifier of the user.
start_date = '2020-10-01' # String | Return the events from and including this date.
end_date = '2020-10-30' # String | Return the events until and including this date.

begin
  # List events in user.
  result = api_instance.users_id_events_get(id, start_date, end_date)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->users_id_events_get: #{e}"
end
```

#### Using the users_id_events_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Event>>, Integer, Hash)> users_id_events_get_with_http_info(id, start_date, end_date)

```ruby
begin
  # List events in user.
  data, status_code, headers = api_instance.users_id_events_get_with_http_info(id, start_date, end_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Event>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->users_id_events_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. |  |
| **start_date** | **String** | Return the events from and including this date. |  |
| **end_date** | **String** | Return the events until and including this date. |  |

### Return type

[**Array&lt;Event&gt;**](Event.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

