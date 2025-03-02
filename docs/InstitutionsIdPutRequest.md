# PocketsmithClient::InstitutionsIdPutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | A new title for the institution. | [optional] |
| **currency_code** | **String** | A new currency code for the institution. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithClient::InstitutionsIdPutRequest.new(
  title: Bank of Foo,
  currency_code: NZD
)
```

