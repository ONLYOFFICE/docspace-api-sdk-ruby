# DocspaceApiSdk::UploadRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | The file to be uploaded. | [optional] |
| **content_type** | [**ContentType**](ContentType.md) |  | [optional] |
| **content_disposition** | [**ContentDisposition**](ContentDisposition.md) |  | [optional] |
| **files** | **Array&lt;File&gt;** | The list of files when specified as multipart/form-data. | [optional] |
| **create_new_if_exist** | **Boolean** | Specifies whether to create the new file if it already exists or not. | [optional] |
| **store_original_file_flag** | **Boolean** | Specifies whether to upload documents in the original formats as well or not. | [optional] |
| **keep_convert_status** | **Boolean** | Specifies whether to keep the file converting status or not. | [optional] |
| **stream** | **File** | The request input stream. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UploadRequestDto.new(
  file: [B@6a74d228,
  content_type: null,
  content_disposition: null,
  files: ["file1.docx","file2.xlsx"],
  create_new_if_exist: true,
  store_original_file_flag: true,
  keep_convert_status: false,
  stream: [B@349d0836
)
```
