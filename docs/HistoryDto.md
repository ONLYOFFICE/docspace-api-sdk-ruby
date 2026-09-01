# DocspaceApiSdk::HistoryDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier for the file history entry. |  |
| **action** | [**HistoryAction**](HistoryAction.md) | The action performed on the file. |  |
| **initiator** | [**EmployeeDto**](EmployeeDto.md) | The action initiator. |  |
| **date** | **Time** | The date and time when an action on the file was performed. |  |
| **data** | [**HistoryData**](HistoryData.md) | The history data. |  |
| **related** | [**Array&lt;HistoryDto&gt;**](HistoryDto.md) | The list of related history. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::HistoryDto.new(
  id: 123,
  action: null,
  initiator: null,
  date: 2021-01-01T00:00:00Z,
  data: null,
  related: [{id=124, action=0}]
)
```
