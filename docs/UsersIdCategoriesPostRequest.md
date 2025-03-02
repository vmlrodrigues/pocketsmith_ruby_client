# OpenapiClient::UsersIdCategoriesPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | A title for the category. |  |
| **colour** | **String** | A CSS-style hex colour for the category. | [optional] |
| **parent_id** | **Integer** | The unique identifier of a category to be the parent of this category. | [optional] |
| **is_transfer** | **Boolean** | Set the category as a transfer category. | [optional] |
| **is_bill** | **Boolean** | Set the category as a bill category. | [optional] |
| **roll_up** | **Boolean** | Set the category to be rolled up into its parent category. | [optional] |
| **refund_behaviour** | **String** | Set the refund behaviour of the category. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UsersIdCategoriesPostRequest.new(
  title: Food,
  colour: #e0e7ff,
  parent_id: 42,
  is_transfer: false,
  is_bill: true,
  roll_up: false,
  refund_behaviour: credits_are_refunds
)
```

