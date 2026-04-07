# DocspaceApiSdk::CustomerInfoDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portal_id** | **String** | The portal ID. | [optional][readonly] |
| **payment_method_status** | [**PaymentMethodStatus**](PaymentMethodStatus.md) |  | [optional] |
| **email** | **String** | The customer email address. | [optional][readonly] |
| **payer** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomerInfoDto.new(
  portal_id: portal-001,
  payment_method_status: null,
  email: user@example.com,
  payer: null
)
```
