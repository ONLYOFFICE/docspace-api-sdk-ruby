# DocspaceApiSdk::CustomerOperationsReportRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_name** | **Array&lt;String&gt;** | The wallet services whose movements are kept, named the way the billing catalogue names them - `backup`,  `ai-tools`, `ai-search`, `disk-storage`, `docscloud`. Take the values from the `serviceName` field of  `GET api/2.0/portal/payment/walletservices`; the match ignores case, a name this installation does not sell  fails the call with 404, and an omitted list keeps every service. A bare string is accepted in place of an  array for backward compatibility. | [optional] |
| **start_date** | **Time** | The beginning of the reported period, inclusive. Read in the portal time zone rather than in UTC, so a  movement at the edge of the period falls where the portal sees it; defaults to the portal creation date. | [optional] |
| **end_date** | **Time** | The end of the reported period, inclusive. Read in the portal time zone rather than in UTC, and defaults to  the moment the call is made. | [optional] |
| **participant_name** | **String** | The participant whose movements are kept - the account the accounting service records as the cause of a  movement. A movement caused by a portal user carries that user ID here, and one caused by the portal itself  carries the customer name; surrounding whitespace is trimmed, and an omitted value keeps every participant. | [optional] |
| **credit** | **Boolean** | Whether movements that add money to the wallet - top-ups, refunds and corrections in the portal's favour -  are kept. Both directions are reported when neither this nor `debit` is given. | [optional] |
| **debit** | **Boolean** | Whether movements that take money out of the wallet - the charges of the wallet services - are kept. Both  directions are reported when neither this nor `credit` is given. | [optional] |
| **type** | [**OperationType**](OperationType.md) | The kind of movement to keep, which says what caused the money to move rather than how it ended. Every kind  is reported when it is omitted. | [optional] |
| **status** | [**OperationStatus**](OperationStatus.md) | The outcome to keep. A movement that is still being settled is reported as pending and may change later,  while the other outcomes are final; every outcome is reported when this is omitted. | [optional] |
| **order_by** | **String** | The name of the field the movements are sorted by, spelled as the accounting service names it, such as  `StartDate` or `ServiceName`. Surrounding whitespace is trimmed, and the accounting service applies its own  ordering when this is omitted. | [optional] |
| **order_type** | [**OperationOrderType**](OperationOrderType.md) | The direction the field named in `orderBy` is sorted in. Newest or largest first is what the accounting  service does by default, so leaving this out sorts the same way as asking for descending explicitly. | [optional] |

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
