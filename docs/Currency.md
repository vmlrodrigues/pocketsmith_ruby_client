# PocketsmithRubyClient::Currency

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ISO 4217 or unofficial currency code. | [optional] |
| **name** | **String** | The name of the currency. | [optional] |
| **minor_unit** | **Integer** | The number of digits after the minor unit separator. | [optional] |
| **separators** | [**CurrencySeparators**](CurrencySeparators.md) |  | [optional] |
| **symbol** | **String** | The symbol of the currency. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithRubyClient::Currency.new(
  id: nzd,
  name: New Zealand Dollar,
  minor_unit: 2,
  separators: null,
  symbol: $
)
```

