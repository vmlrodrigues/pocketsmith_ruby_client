# PocketsmithClient::UsersIdAccountsPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **institution_id** | **Integer** | The ID of the institution to create this account in. |  |
| **title** | **String** | A title for the account. |  |
| **currency_code** | **String** | A currency code for the account. |  |
| **type** | **String** | The type of the account. |  |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithClient::UsersIdAccountsPostRequest.new(
  institution_id: 42,
  title: Foo,
  currency_code: NZD,
  type: bank
)
```

