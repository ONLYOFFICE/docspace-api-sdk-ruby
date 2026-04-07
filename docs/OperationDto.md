# DocspaceApiSdk::OperationDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **service** | **String** | The service related to the operation. | [optional] |
| **description** | **String** | The brief operation description. | [optional] |
| **details** | **String** | The detailed information about the operation. | [optional] |
| **service_unit** | **String** | The service unit. | [optional] |
| **quantity** | **Integer** | The quantity of the service used. | [optional] |
| **currency** | **String** | The three-character ISO 4217 currency symbol of the operation. | [optional] |
| **credit** | **Float** | The credit amount of the operation. | [optional] |
| **debit** | **Float** | The debit amount of the operation. | [optional] |
| **participant_name** | **String** | The participant original name. | [optional] |
| **participant_display_name** | **String** | The participant display name. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::OperationDto.new(
  date: null,
  service: Storage,
  description: Storage quota increase,
  details: Increased storage from 50GB to 100GB,
  service_unit: GB,
  quantity: 1,
  currency: USD,
  credit: 99.99,
  debit: 99.99,
  participant_name: Example Name,
  participant_display_name: Example Name
)
```
