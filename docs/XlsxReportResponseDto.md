# DocspaceApiSdk::XlsxReportResponseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form** | [**FileDtoInteger**](FileDtoInteger.md) |  | [optional] |
| **task** | [**DocumentBuilderTaskDto**](DocumentBuilderTaskDto.md) |  | [optional] |
| **is_new_file** | **Boolean** | Specifies whether the XLSX report file is newly created or an existing file will be updated. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::XlsxReportResponseDto.new(
  form: null,
  task: null,
  is_new_file: true
)
```
