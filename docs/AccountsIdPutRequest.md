# OpenapiClient::AccountsIdPutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | A new title for the account. | [optional] |
| **currency_code** | **String** | A new currency code for the account. | [optional] |
| **type** | **String** | The type of the account. | [optional] |
| **is_net_worth** | **Boolean** | Whether the account is a net worth account. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AccountsIdPutRequest.new(
  title: Savings,
  currency_code: NZD,
  type: bank,
  is_net_worth: false
)
```

