# OpenapiClient::BudgetAnalysis

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** | The start date of the budget analysis. | [optional] |
| **end_date** | **String** | The end date of the budget analysis. | [optional] |
| **currency_code** | **String** | The currency of the budget analysis. | [optional] |
| **total_actual_amount** | **Float** | The total actual (transactions) amount across all periods. | [optional] |
| **average_actual_amount** | **Float** | The average actual (transactions) amount across all periods. | [optional] |
| **total_forecast_amount** | **Float** | The total budgeted amount across all periods. | [optional] |
| **average_forecast_amount** | **Float** | The average budgeted amount across all periods. | [optional] |
| **total_over_by** | **Float** | The total amount the budget was exceeded across all periods. | [optional] |
| **total_under_by** | **Float** | The total amount the budget was under by across all periods. | [optional] |
| **periods** | [**Array&lt;Period&gt;**](Period.md) | The period analyses that this budget analysis comprises. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::BudgetAnalysis.new(
  start_date: 2016-11-01,
  end_date: 2016-11-30,
  currency_code: nzd,
  total_actual_amount: -42.3,
  average_actual_amount: -42.3,
  total_forecast_amount: -60,
  average_forecast_amount: -60,
  total_over_by: 0,
  total_under_by: 17.7,
  periods: null
)
```

