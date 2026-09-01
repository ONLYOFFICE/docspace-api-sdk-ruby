# DocspaceApiSdk::CustomerOperationsReportRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_name** | **Array&lt;String&gt;** | The service name list. A single string is also accepted for backward compatibility. | [optional] |
| **start_date** | **Time** | The report start date. | [optional] |
| **end_date** | **Time** | The report end date. | [optional] |
| **participant_name** | **String** | The participant name. | [optional] |
| **credit** | **Boolean** | Specifies whether to include credit operations in the report. | [optional] |
| **debit** | **Boolean** | Specifies whether to include debit operations in the report. | [optional] |
| **type** | [**OperationType**](OperationType.md) | The operation type to filter by. | [optional] |
| **status** | [**OperationStatus**](OperationStatus.md) | The operation status to filter by. | [optional] |
| **order_by** | **String** | The field to order by. | [optional] |
| **order_type** | [**OperationOrderType**](OperationOrderType.md) | Order direction: Ascending or Descending. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomerOperationsReportRequestDto.new(
  service_name: [backup],
  start_date: 2024-01-01T00:00:00Z,
  end_date: 2024-01-31T23:59:59Z,
  participant_name: My Own Corporation,
  credit: true,
  debit: false,
  type: null,
  status: null,
  order_by: StartDate,
  order_type: null
)
```
