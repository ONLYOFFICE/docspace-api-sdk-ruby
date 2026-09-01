# DocspaceApiSdk::CompanyWhiteLabelSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_name** | **String** | The company name. | [optional] |
| **site** | **String** | The company site. | [optional] |
| **email** | **String** | The company email address. | [optional] |
| **address** | **String** | The company address. | [optional] |
| **phone** | **String** | The company phone number. | [optional] |
| **is_licensor** | **Boolean** | Specifies if a company is a licensor or not. | [optional] |
| **hide_about** | **Boolean** | Specifies if the About page is visible or not | [optional] |
| **last_modified** | **Time** | The timestamp indicating when the settings were last modified. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CompanyWhiteLabelSettings.new(
  company_name: ONLYOFFICE,
  site: https://www.onlyoffice.com,
  email: support@onlyoffice.com,
  address: Lubanas st. 125a-25,
  phone: +7 843 2271372,
  is_licensor: true,
  hide_about: false,
  last_modified: 1990-01-01T00:00:00Z
)
```
