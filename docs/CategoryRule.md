# PocketsmithRubyClient::CategoryRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | [**Category**](Category.md) |  | [optional] |
| **id** | **Integer** | The unique identifier of the category rule. | [optional] |
| **payee_matches** | **String** | The keyword/s to match the transactions payees. | [optional] |
| **created_at** | **String** | When the category rule was created. | [optional] |
| **updated_at** | **String** | When the category rule was last updated. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithRubyClient::CategoryRule.new(
  category: null,
  id: 1438154,
  payee_matches: Countdown,
  created_at: 2019-07-09T10:06:02Z,
  updated_at: 2019-07-09T10:06:02Z
)
```

