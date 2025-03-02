# PocketsmithClient::Category

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the category. | [optional] |
| **title** | **String** | The title of the category. | [optional] |
| **colour** | **String** | The colour for the category. | [optional] |
| **children** | [**Array&lt;Category&gt;**](Category.md) | The category&#39;s child categories. | [optional] |
| **parent_id** | **Integer** | The unique identifier of the parent category of this category, or null if this category has no parent (i.e. is a top-level category) | [optional] |
| **is_transfer** | **Boolean** | Whether this category has been marked as a transfer category. | [optional] |
| **is_bill** | **Boolean** | Whether the category is a bill category. A bill category is when budgeted amounts are normally spent at once, instead of spread across a budgeting period. This category will be included in the bill reminder email when set to true. | [optional] |
| **roll_up** | **Boolean** | Whether the category&#39;s budget is rolled up into its parent category, if a parent category is present. | [optional] |
| **refund_behaviour** | **String** | How the category&#39;s refunds or deductions should be reported on. | [optional] |
| **created_at** | **String** | When the category was created. | [optional] |
| **updated_at** | **String** | When the category was last updated. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithClient::Category.new(
  id: 1438154,
  title: Beer,
  colour: #00ff00,
  children: null,
  parent_id: 42,
  is_transfer: false,
  is_bill: true,
  roll_up: false,
  refund_behaviour: credits_are_refunds,
  created_at: 2015-08-16T02:17:02Z,
  updated_at: 2015-08-16T02:17:02Z
)
```

