# OpenapiClient::InstitutionsIdPutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | A new title for the institution. | [optional] |
| **currency_code** | **String** | A new currency code for the institution. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InstitutionsIdPutRequest.new(
  title: Bank of Foo,
  currency_code: NZD
)
```

