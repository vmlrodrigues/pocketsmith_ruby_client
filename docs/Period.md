# PocketsmithClient::Period

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** | The start date of the period. | [optional] |
| **end_date** | **String** | The end date of the period. | [optional] |
| **currency_code** | **String** | The currency of the period. | [optional] |
| **actual_amount** | **Float** | The sum of all actuals (transactions) in the period. | [optional] |
| **forecast_amount** | **Float** | The sum of all forecast sources (budget events) in the period, for comparison against the actual amount. | [optional] |
| **refund_amount** | **Float** | This attribute tracks the amount that has been refunded or deducted to the actual amount. When a category is set to \&quot;always expense\&quot;, any credit transactions are treated as refunds and when set to \&quot;always income\&quot;, any debit transactions are treated as deductions. | [optional] |
| **current** | **Boolean** | Whether this period is current, such that the current date (in the user&#39;s time zone) falls within the date range. | [optional] |
| **over_budget** | **Boolean** | Whether the budget has been exceeded in the period. | [optional] |
| **under_budget** | **Boolean** | Whether the budget has not been exceeded in the period. | [optional] |
| **over_by** | **Float** | How much the budget has been exceeded by in the period. | [optional] |
| **under_by** | **Float** | How much there is left in the budget for the period. | [optional] |
| **percentage_used** | **Float** | The percentage of the budget that has been used in the period. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithClient::Period.new(
  start_date: 2016-11-01,
  end_date: 2016-11-30,
  currency_code: nzd,
  actual_amount: -42.3,
  forecast_amount: -60,
  refund_amount: 5.6,
  current: true,
  over_budget: false,
  under_budget: true,
  over_by: 0,
  under_by: 17.7,
  percentage_used: 70.5
)
```

