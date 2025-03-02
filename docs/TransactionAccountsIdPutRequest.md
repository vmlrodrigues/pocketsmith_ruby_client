# PocketsmithClient::TransactionAccountsIdPutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **institution_id** | **Integer** | The unique identifier of a new institution for the transaction account. | [optional] |
| **starting_balance** | **Float** | The starting balance amount of the transaction account. | [optional] |
| **starting_balance_date** | **String** | The starting balance date of the transaction account. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithClient::TransactionAccountsIdPutRequest.new(
  institution_id: 42,
  starting_balance: 3547.45,
  starting_balance_date: 2015-03-15
)
```

