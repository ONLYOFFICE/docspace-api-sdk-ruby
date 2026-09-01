# DocspaceApiSdk::PaymentSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sales_email** | **String** | The email address for sales inquiries and support. |  |
| **feedback_and_support_url** | **String** | The URL for accessing the feedback and support resources. | [optional] |
| **buy_url** | **String** | The URL for purchasing or upgrading the product. |  |
| **standalone** | **Boolean** | Indicates whether the system is running in standalone mode. |  |
| **current_license** | [**CurrentLicenseInfo**](CurrentLicenseInfo.md) | The current license information. |  |
| **max** | **Integer** | The maximum quota quantity. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::PaymentSettingsDto.new(
  sales_email: sales@example.com,
  feedback_and_support_url: https://example.com,
  buy_url: https://example.com/buy,
  standalone: false,
  current_license: null,
  max: 1
)
```
