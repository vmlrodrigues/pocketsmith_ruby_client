# OpenapiClient::Scenario

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the scenario. | [optional] |
| **title** | **String** | The title of the scenario. | [optional] |
| **description** | **String** | A short description of what the scenario is modelling. | [optional] |
| **interest_rate** | **Float** | The amount of interest to apply to the balance. Will apply periodically depending on what &#x60;interest_rate_repeat_id&#x60; is set to. | [optional] |
| **interest_rate_repeat_id** | **Integer** | A number representing how often the interest should be applied. 0 is used for no interest, 2 is weekly, 3 is fortnightly, 4 is monthly, 5 is yearly and 7 for quarterly. | [optional] |
| **type** | **String** | The type of the scenario. | [optional] |
| **minimum_value** | **Float** |  | [optional] |
| **maximum_value** | **Float** |  | [optional] |
| **achieve_date** | **String** | For goals, the date that they should be achieved by. | [optional] |
| **starting_balance** | **Float** | The starting balance of the scenario. | [optional] |
| **starting_balance_date** | **String** | The date of the starting balance. | [optional] |
| **closing_balance** | **Float** | The closing balance of the scenario. | [optional] |
| **closing_balance_date** | **String** | The date of the closing balance. | [optional] |
| **current_balance** | **Float** | The current balance of the scenario. | [optional] |
| **current_balance_date** | **String** | The date of the current balance. | [optional] |
| **current_balance_in_base_currency** | **Float** | The current balance of the scenario in the user&#39;s base currency. | [optional] |
| **current_balance_exchange_rate** | **Float** | The exchange rate between the scenario&#39;s currency and the user&#39;s base currency, when different. If the currencies are the same, null is returned. | [optional] |
| **safe_balance** | **Float** | The current safe balance in the user&#39;s base currency, if safe balance is activated on the account associated with the scenario. If safe balance is not activated, then null is returned. | [optional] |
| **safe_balance_in_base_currency** | **Float** | The current safe balance in the user&#39;s base currency, if safe balance is activated on the account associated with the scenario. If safe balance is not available, then null is returned. | [optional] |
| **created_at** | **String** | When the scenario was created. | [optional] |
| **updated_at** | **String** | When the scenario was last updated. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Scenario.new(
  id: 42,
  title: Wedding,
  description: null,
  interest_rate: 2.4,
  interest_rate_repeat_id: 4,
  type: no-interest,
  minimum_value: 4000,
  maximum_value: 42,
  achieve_date: null,
  starting_balance: 2450,
  starting_balance_date: 2018-02-27,
  closing_balance: 5431.2,
  closing_balance_date: 2018-02-27,
  current_balance: 5431.2,
  current_balance_date: 2018-02-27,
  current_balance_in_base_currency: 8146.8,
  current_balance_exchange_rate: 1.5,
  safe_balance: 5431.2,
  safe_balance_in_base_currency: 8146.8,
  created_at: 2015-04-21T22:42:22Z,
  updated_at: 2015-04-21T22:42:22Z
)
```

