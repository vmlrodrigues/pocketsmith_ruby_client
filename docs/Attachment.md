# PocketsmithRubyClient::Attachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the attachment | [optional] |
| **title** | **String** | The title of the attachment. If blank or not provided, the title will be derived from the file name. | [optional] |
| **file_name** | **String** | The file name of the attachment. | [optional] |
| **type** | **String** | The type of attachment. | [optional] |
| **content_type** | **String** | The content type of the attachment. | [optional] |
| **content_type_meta** | [**AttachmentContentTypeMeta**](AttachmentContentTypeMeta.md) |  | [optional] |
| **original_url** | **String** | The url of the attachment. | [optional] |
| **variants** | [**AttachmentVariants**](AttachmentVariants.md) |  | [optional] |
| **created_at** | **String** | When the attachment was created. | [optional] |
| **updated_at** | **String** | When the attachment was last updated. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithRubyClient::Attachment.new(
  id: 42,
  title: Invoice for taxi,
  file_name: taxi.png,
  type: image,
  content_type: image/png,
  content_type_meta: null,
  original_url: https://image.com/image.png,
  variants: null,
  created_at: 2015-08-16T02:17:02Z,
  updated_at: 2015-08-16T02:17:02Z
)
```

