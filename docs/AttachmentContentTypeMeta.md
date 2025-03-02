# OpenapiClient::AttachmentContentTypeMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The content type title of the attachment. | [optional] |
| **description** | **String** | The content type description of the attachment. | [optional] |
| **extension** | **String** | The extension type of the attachment. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AttachmentContentTypeMeta.new(
  title: PNG,
  description: PNG image,
  extension: png
)
```

