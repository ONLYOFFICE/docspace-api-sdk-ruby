# DocspaceApiSdk::HistoryDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier for the file history entry. |  |
| **action** | [**HistoryAction**](HistoryAction.md) |  |  |
| **initiator** | [**EmployeeDto**](EmployeeDto.md) |  |  |
| **date** | [**ApiDateTime**](ApiDateTime.md) |  |  |
| **data** | [**HistoryData**](HistoryData.md) |  |  |
| **related** | [**Array&lt;HistoryDto&gt;**](HistoryDto.md) | The list of related history. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::HistoryDto.new(
  id: 123,
  action: null,
  initiator: null,
  date: null,
  data: null,
  related: [{"id":124,"action":0}]
)
```
