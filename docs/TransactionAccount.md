# PocketsmithRubyClient::TransactionAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **number** | **String** |  | [optional] |
| **current_balance** | **Float** |  | [optional] |
| **current_balance_date** | **String** |  | [optional] |
| **current_balance_in_base_currency** | **Float** | The current balance of the transaction account in the user&#39;s base currency. | [optional] |
| **current_balance_exchange_rate** | **Float** | The exchange rate between the transaction account&#39;s currency and the user&#39;s base currency, when different. If the currencies are the same, null is returned. | [optional] |
| **safe_balance** | **Float** | The current safe balance, if safe balance is activated and available for the transaction account. If safe balance is not available, then null is returned. | [optional] |
| **safe_balance_in_base_currency** | **Float** | The current safe balance in the user&#39;s base currency, if safe balance is activated and available for the transaction account. If safe balance is not available, then null is returned. | [optional] |
| **starting_balance** | **Float** |  | [optional] |
| **starting_balance_date** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **institution** | [**Institution**](Institution.md) |  | [optional] |
| **currency_code** | **String** | The currency that the account is in. This is determined by the account that the transaction account belongs to. | [optional] |
| **type** | **String** | The type of the transaction account. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithRubyClient::TransactionAccount.new(
  id: 96027,
  name: Sample Credit,
  number: ASBCRD44554,
  current_balance: 2694.39,
  current_balance_date: 2015-07-03,
  current_balance_in_base_currency: 4041.59,
  current_balance_exchange_rate: 1.5,
  safe_balance: 2694.39,
  safe_balance_in_base_currency: 4041.59,
  starting_balance: 3547.45,
  starting_balance_date: 2015-03-15,
  created_at: 2015-03-17T02:42:10Z,
  updated_at: 2015-07-02T22:14:49Z,
  institution: null,
  currency_code: NZD,
  type: bank
)
```

