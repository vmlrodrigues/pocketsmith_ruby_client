# PocketsmithRubyClient::UsersIdAttachmentsPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The title of the attachment. If the title is blank or not provided, the title will derived from the file name. | [optional] |
| **file_name** | **String** | The file name of the attachment. | [optional] |
| **file_data** | **String** | The base64-encoded contents of the source file. The supported file types are png, jpg, pdf, xls, xlsx, doc, docx. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithRubyClient::UsersIdAttachmentsPostRequest.new(
  title: Invoice for taxi,
  file_name: taxi.png,
  file_data: null
)
```

