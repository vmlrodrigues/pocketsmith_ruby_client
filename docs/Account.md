# OpenapiClient::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the account. | [optional] |
| **title** | **String** | The title of the account. | [optional] |
| **currency_code** | **String** | The currency code for the account. | [optional] |
| **type** | **String** | The type of the account. | [optional] |
| **is_net_worth** | **Boolean** | Whether the account is a net worth asset. | [optional] |
| **primary_transaction_account** | [**TransactionAccount**](TransactionAccount.md) |  | [optional] |
| **primary_scenario** | [**Scenario**](Scenario.md) |  | [optional] |
| **transaction_accounts** | [**Array&lt;TransactionAccount&gt;**](TransactionAccount.md) | All transaction accounts that compose the account, including the primary. | [optional] |
| **scenarios** | [**Array&lt;Scenario&gt;**](Scenario.md) | All scenarios that compose the account, including the primary. | [optional] |
| **created_at** | **String** | When the account was created. | [optional] |
| **updated_at** | **String** | When the account was last updated. | [optional] |
| **current_balance** | **Float** | The current balance of the account. | [optional] |
| **current_balance_date** | **String** | The date of the current balance. | [optional] |
| **current_balance_in_base_currency** | **Float** | The current balance of the account in the user&#39;s base currency. | [optional] |
| **current_balance_exchange_rate** | **Float** | The exchange rate between the account&#39;s currency and the user&#39;s base currency, when different. If the currencies are the same, null is returned. | [optional] |
| **safe_balance** | **Float** | The current safe balance, if safe balance is activated on the account. If safe balance is not activated, then null is returned. | [optional] |
| **safe_balance_in_base_currency** | **Float** | The current safe balance in the user&#39;s base currency, if safe balance is activated on the account. If safe balance is not activated, then null is returned. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Account.new(
  id: 42,
  title: Bank of Foo,
  currency_code: NZD,
  type: bank,
  is_net_worth: false,
  primary_transaction_account: null,
  primary_scenario: null,
  transaction_accounts: null,
  scenarios: null,
  created_at: 2018-02-27,
  updated_at: 2018-02-27,
  current_balance: 2694.39,
  current_balance_date: 2018-02-27,
  current_balance_in_base_currency: 4041.59,
  current_balance_exchange_rate: 1.5,
  safe_balance: 2694.39,
  safe_balance_in_base_currency: 4041.59
)
```

