# PocketsmithClient::CategoriesIdPutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | A new title for the category. | [optional] |
| **colour** | **String** | A new CSS-style hex colour for the category. | [optional] |
| **parent_id** | **Integer** | The unique identifier of a parent category for the category, making this category a child of that category. | [optional] |
| **is_transfer** | **Boolean** | Set the category as a transfer category. | [optional] |
| **is_bill** | **Boolean** | Set the category as a bill category. | [optional] |
| **roll_up** | **Boolean** | Set the category to be rolled up into its parent category. | [optional] |
| **refund_behaviour** | **String** | Set the refund behaviour of the category. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithClient::CategoriesIdPutRequest.new(
  title: Food,
  colour: #e0e7ff,
  parent_id: 42,
  is_transfer: false,
  is_bill: true,
  roll_up: false,
  refund_behaviour: credits_are_refunds
)
```

