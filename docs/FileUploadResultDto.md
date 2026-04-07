# DocspaceApiSdk::FileUploadResultDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | Specifies if the upload operation is successful or not. | [optional] |
| **data** | **Object** | The file upload result data. | [optional] |
| **message** | **String** | The file upload result message. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileUploadResultDto.new(
  success: true,
  data: {"fileId":"123","fileName":"photo.jpg"},
  message: File uploaded successfully
)
```
