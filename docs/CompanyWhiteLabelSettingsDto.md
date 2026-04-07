# DocspaceApiSdk::CompanyWhiteLabelSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_name** | **String** | The company name. |  |
| **site** | **String** | The company site. |  |
| **email** | **String** | The company email address. |  |
| **address** | **String** | The company address. |  |
| **phone** | **String** | The company phone number. |  |
| **is_licensor** | **Boolean** | Specifies if a company is a licensor or not. |  |
| **hide_about** | **Boolean** | Specifies if the About page is visible or not. |  |
| **is_default** | **Boolean** | Specifies if these settings are default or not. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CompanyWhiteLabelSettingsDto.new(
  company_name: Acme Corporation,
  site: https://www.example.com,
  email: contact@example.com,
  address: 123 Business St, New York, NY 10001,
  phone: +1-800-555-0123,
  is_licensor: false,
  hide_about: false,
  is_default: true
)
```
