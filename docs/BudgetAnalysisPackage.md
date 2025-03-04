# PocketsmithClient::BudgetAnalysisPackage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | [**Category**](Category.md) |  | [optional] |
| **is_transfer** | **Boolean** | Whether the expense budget analysis looks like a transfer to the income budget analysis, based on a number of heuristics. | [optional] |
| **expense** | [**BudgetAnalysis**](BudgetAnalysis.md) |  | [optional] |
| **income** | [**BudgetAnalysis**](BudgetAnalysis.md) |  | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithClient::BudgetAnalysisPackage.new(
  category: null,
  is_transfer: false,
  expense: null,
  income: null
)
```

