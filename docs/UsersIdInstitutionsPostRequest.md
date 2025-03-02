# OpenapiClient::UsersIdInstitutionsPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | A title for the institution. |  |
| **currency_code** | **String** | A currency code for the institution. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UsersIdInstitutionsPostRequest.new(
  title: Bank of Foo,
  currency_code: NZD
)
```

