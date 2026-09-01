# DocspaceApiSdk::CustomerInfoDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portal_id** | **String** | The portal ID. | [optional][readonly] |
| **payment_method_status** | [**PaymentMethodStatus**](PaymentMethodStatus.md) | The customer's payment method. | [optional] |
| **email** | **String** | The customer email address. | [optional][readonly] |
| **payer** | [**EmployeeDto**](EmployeeDto.md) | The paying user. | [optional] |

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
