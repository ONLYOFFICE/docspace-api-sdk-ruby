# DocspaceApiSdk::XlsxReportResponseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form** | [**FileDto**](FileDto.md) | The original form the answers are collected from. It is not the produced spreadsheet - that one arrives with  the task, once the task reports completion. | [optional] |
| **task** | [**DocumentBuilderTaskDto**](DocumentBuilderTaskDto.md) | The queued generation. Poll it with `GET api/2.0/files/file/{fileId}/xlsx` until it reports completion, and  take the produced file from it then. | [optional] |
| **is_new_file** | **Boolean** | True when this run creates the report file, false when an existing report is rewritten in place, which means  it keeps its id and the links already shared for it. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::XlsxReportResponseDto.new(
  form: null,
  task: null,
  is_new_file: true
)
```
