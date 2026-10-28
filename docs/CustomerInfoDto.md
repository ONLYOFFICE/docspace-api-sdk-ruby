# DocspaceApiSdk::CustomerInfoDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portal_id** | **String** | The portal's identifier in the billing system, which is what support and invoices refer to. It is not the  portal alias. | [optional][readonly] |
| **payment_method_status** | [**PaymentMethodStatus**](PaymentMethodStatus.md) | Whether a payment method is stored for the account and usable. Without one the portal can hold a wallet  balance but cannot be charged automatically. | [optional] |
| **payment_method_type** | **String** | The customer's payment method type. | [optional][readonly] |
| **is_delayed_payment_method** | **Boolean** | Indicates whether the customer's payment method is delayed, i.e. the money reaches the wallet only after  the transfer settles rather than immediately. | [optional][readonly] |
| **email** | **String** | The address the billing account is registered to, lower-cased. It need not belong to a portal member,  which is exactly when `payer` stays empty. | [optional][readonly] |
| **payer** | [**EmployeeDto**](EmployeeDto.md) | The portal member whose account is behind the billing address. It is empty when `email` matches no member  of this portal, and while it is empty every operation of this group that only the payer may call is out  of reach for everybody. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomerInfoDto.new(
  portal_id: portal-001,
  payment_method_status: null,
  payment_method_type: card,
  is_delayed_payment_method: false,
  email: user@example.com,
  payer: null
)
```
