# PocketsmithRubyClient::TimeZone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the time zone. | [optional] |
| **utc_offset** | **Integer** | The time zone&#39;s UTC offset in seconds. | [optional] |
| **formatted_name** | **String** | The formatted name of the time zone. | [optional] |
| **formatted_offset** | **String** | The formatted offset of the time zone. | [optional] |
| **abbreviation** | **String** | The abbreviation of the time zone. | [optional] |
| **identifier** | **String** | The tz database name of the time zone. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithRubyClient::TimeZone.new(
  name: Auckland,
  utc_offset: 46800,
  formatted_name: (GMT+13:00) Auckland,
  formatted_offset: +13:00,
  abbreviation: NZDT,
  identifier: Pacific/Auckland
)
```

