# PocketsmithRubyClient::SavedSearch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the saved search. | [optional] |
| **title** | **String** | The title of the saved search. | [optional] |
| **created_at** | **String** | When the saved search was created. | [optional] |
| **updated_at** | **String** | When the saved search was last updated. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithRubyClient::SavedSearch.new(
  id: 42,
  title: Craft beer,
  created_at: 2015-08-16T02:17:02Z,
  updated_at: 2015-08-16T02:17:02Z
)
```

