# OpenapiClient::CurrenciesApi

All URIs are relative to *https://api.pocketsmith.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**currencies_get**](CurrenciesApi.md#currencies_get) | **GET** /currencies | List currencies |
| [**currencies_id_get**](CurrenciesApi.md#currencies_id_get) | **GET** /currencies/{id} | Get currency |


## currencies_get

> <Array<Currency>> currencies_get

List currencies

Lists currencies supported by PocketSmith.

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

api_instance = OpenapiClient::CurrenciesApi.new

begin
  # List currencies
  result = api_instance.currencies_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurrenciesApi->currencies_get: #{e}"
end
```

#### Using the currencies_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Currency>>, Integer, Hash)> currencies_get_with_http_info

```ruby
begin
  # List currencies
  data, status_code, headers = api_instance.currencies_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Currency>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurrenciesApi->currencies_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Currency&gt;**](Currency.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## currencies_id_get

> <Currency> currencies_id_get(id)

Get currency

Gets a particular currency by its ID.

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

api_instance = OpenapiClient::CurrenciesApi.new
id = 'nzd' # String | The unique identifier of the currency.

begin
  # Get currency
  result = api_instance.currencies_id_get(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurrenciesApi->currencies_id_get: #{e}"
end
```

#### Using the currencies_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Currency>, Integer, Hash)> currencies_id_get_with_http_info(id)

```ruby
begin
  # Get currency
  data, status_code, headers = api_instance.currencies_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Currency>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurrenciesApi->currencies_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the currency. |  |

### Return type

[**Currency**](Currency.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

