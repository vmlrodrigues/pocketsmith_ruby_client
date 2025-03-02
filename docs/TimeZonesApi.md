# OpenapiClient::TimeZonesApi

All URIs are relative to *https://api.pocketsmith.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**time_zones_get**](TimeZonesApi.md#time_zones_get) | **GET** /time_zones | List time zones |


## time_zones_get

> <Array<TimeZone>> time_zones_get

List time zones

Lists time zones.

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

api_instance = OpenapiClient::TimeZonesApi.new

begin
  # List time zones
  result = api_instance.time_zones_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TimeZonesApi->time_zones_get: #{e}"
end
```

#### Using the time_zones_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TimeZone>>, Integer, Hash)> time_zones_get_with_http_info

```ruby
begin
  # List time zones
  data, status_code, headers = api_instance.time_zones_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TimeZone>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TimeZonesApi->time_zones_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;TimeZone&gt;**](TimeZone.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

