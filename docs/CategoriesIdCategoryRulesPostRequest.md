# OpenapiClient::CategoriesIdCategoryRulesPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_matches** | **String** | The keyword/s to match the transaction payees. |  |
| **apply_to_uncategorised** | **Boolean** | Apply the created category rule to all uncategorised transactions. | [optional] |
| **apply_to_all** | **Boolean** | Apply the created category rule to all transactions. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CategoriesIdCategoryRulesPostRequest.new(
  payee_matches: Countdown,
  apply_to_uncategorised: true,
  apply_to_all: false
)
```

