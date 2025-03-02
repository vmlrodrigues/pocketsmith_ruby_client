# PocketsmithRubyClient::AttachmentVariants

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **large_url** | **String** | The url of the large version of the attachment. | [optional] |
| **thumb_url** | **String** | The url of the thumb version of the attachment. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithRubyClient::AttachmentVariants.new(
  large_url: https://image.com/image.png,
  thumb_url: https://image.com/image.png
)
```

