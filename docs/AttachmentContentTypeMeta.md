# PocketsmithClient::AttachmentContentTypeMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The content type title of the attachment. | [optional] |
| **description** | **String** | The content type description of the attachment. | [optional] |
| **extension** | **String** | The extension type of the attachment. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithClient::AttachmentContentTypeMeta.new(
  title: PNG,
  description: PNG image,
  extension: png
)
```

