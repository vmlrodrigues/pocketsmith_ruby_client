# PocketsmithClient::Event

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the event. | [optional] |
| **category** | [**Category**](Category.md) |  | [optional] |
| **scenario** | [**Scenario**](Scenario.md) |  | [optional] |
| **amount** | **Float** | The amount of the event. | [optional] |
| **amount_in_base_currency** | **Float** | The amount of the event in the user&#39;s base currency. | [optional] |
| **currency_code** | **String** | The currency code of the event. | [optional] |
| **date** | **String** | The date of the event. | [optional] |
| **colour** | **String** | The CSS hex-style colour of the event. | [optional] |
| **note** | **String** | The note of the event. | [optional] |
| **repeat_type** | **String** | The repeat type of the event. | [optional] |
| **repeat_interval** | **Integer** | The repeat interval of how often the event takes place. | [optional] |
| **series_id** | **Integer** | The unique identifier of the series that the event belongs to. | [optional] |
| **series_start_id** | **String** | The unique identifier of the series followed by the series&#39;s start date. | [optional] |
| **infinite_series** | **Boolean** | Whether the event repeats and does not have an end date. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithClient::Event.new(
  id: 42-1601942400,
  category: null,
  scenario: null,
  amount: 250.5,
  amount_in_base_currency: 375.75,
  currency_code: nzd,
  date: 2020-10-27,
  colour: #F63737,
  note: Buy more beer every Friday from the local brewery.,
  repeat_type: weekly,
  repeat_interval: 1,
  series_id: 42,
  series_start_id: 42-1593993600,
  infinite_series: true
)
```

