# DocspaceApiSdk::CustomerOperationsReportRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_name** | **String** | The service name. | [optional] |
| **write_off_service_quota** | **Boolean** | Write-off of the quota for the service | [optional] |
| **start_date** | **Time** | The report start date. | [optional] |
| **end_date** | **Time** | The report end date. | [optional] |
| **participant_name** | **String** | The participant name. | [optional] |
| **credit** | **Boolean** | Specifies whether to include credit operations in the report. | [optional] |
| **debit** | **Boolean** | Specifies whether to include debit operations in the report. | [optional] |
| **types** | [**OperationType**](OperationType.md) |  | [optional] |
| **status** | [**OperationStatus**](OperationStatus.md) |  | [optional] |
| **order_by** | **String** | The field to order by. | [optional] |
| **order_type** | [**OperationOrderType**](OperationOrderType.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomerOperationsReportRequestDto.new(
  service_name: backup,
  write_off_service_quota: false,
  start_date: 2024-01-01T00:00Z,
  end_date: 2024-01-31T23:59:59Z,
  participant_name: ACME Corp,
  credit: true,
  debit: false,
  types: null,
  status: null,
  order_by: StartDate,
  order_type: null
)
```
