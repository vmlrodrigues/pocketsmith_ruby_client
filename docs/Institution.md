# PocketsmithRubyClient::Institution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency_code** | **String** | The currency code of the institution. | [optional] |
| **title** | **String** | The title of the institution. | [optional] |
| **updated_at** | **String** | When the institution was last updated. | [optional] |
| **created_at** | **String** | When the institution was created. | [optional] |
| **id** | **Integer** | The unique identifier of the institution. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithRubyClient::Institution.new(
  currency_code: NZD,
  title: Bank of Foo,
  updated_at: 2015-04-21T22:42:22Z,
  created_at: 2015-04-21T22:42:22Z,
  id: 57
)
```

