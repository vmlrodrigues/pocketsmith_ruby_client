# OpenapiClient::ScenariosIdEventsPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **Integer** | The unique identifier of the category for the event. |  |
| **date** | **String** | The starting date of the event. |  |
| **amount** | **Float** | The amount of the event. A positive amount is a credit, and a negative amount is a debit. |  |
| **repeat_type** | **String** | The repeat type of the event. |  |
| **repeat_interval** | **Integer** | The repeat interval of the event. | [optional][default to 1] |
| **note** | **String** | A note for the event. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ScenariosIdEventsPostRequest.new(
  category_id: 42,
  date: 2020-10-27,
  amount: 11.5,
  repeat_type: weekly,
  repeat_interval: 1,
  note: New beers for sampling over the weekends.
)
```

