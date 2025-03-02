# PocketsmithClient::EventsIdPutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **behaviour** | **String** | Whether the update applies only to this event, to all events within the series from this event or to all events within the series. |  |
| **amount** | **Float** | The amount of the event. A positive amount is a credit, and a negative amount is a debit. | [optional] |
| **repeat_type** | **String** | The repeat type of the event. | [optional] |
| **repeat_interval** | **Integer** | The repeat interval of the event. | [optional] |
| **note** | **String** | A note for the event. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithClient::EventsIdPutRequest.new(
  behaviour: all,
  amount: 11.5,
  repeat_type: weekly,
  repeat_interval: 1,
  note: Need more beer.
)
```

