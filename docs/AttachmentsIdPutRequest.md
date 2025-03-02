# OpenapiClient::AttachmentsIdPutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The new title of the attachment. If the title is blank or not provided, the server will derive a title from the file name. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AttachmentsIdPutRequest.new(
  title: Invoice for taxi
)
```

