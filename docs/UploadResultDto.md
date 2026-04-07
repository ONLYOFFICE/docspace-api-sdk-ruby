# DocspaceApiSdk::UploadResultDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | Specifies if the upload operation is successful or not. | [optional] |
| **data** | **Object** | The uploaded data. | [optional] |
| **message** | **String** | The message sent after the successful upload operation. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UploadResultDto.new(
  success: true,
  data: {"id":10,"title":"document.docx"},
  message: File uploaded successfully
)
```
