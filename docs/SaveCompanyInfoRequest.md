# DocspaceApiSdk::SaveCompanyInfoRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_name** | **String** | The company name. | [optional] |
| **site** | **String** | The company website, as an absolute URL. | [optional] |
| **email** | **String** | The contact email address. | [optional] |
| **address** | **String** | The postal address. | [optional] |
| **phone** | **String** | The contact phone number. | [optional] |
| **is_licensor** | **Boolean** | Accepted for compatibility with earlier clients and not read: saved details are never those of the licensor, so the server always stores `false`. | [optional] |
| **hide_about** | **Boolean** | Whether the About page is hidden. | [optional] |
| **last_modified** | **Time** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SaveCompanyInfoRequest.new(
  company_name: ONLYOFFICE,
  site: https://www.onlyoffice.com,
  email: support@onlyoffice.com,
  address: Lubanas st. 125a-25,
  phone: +7 843 2271372,
  is_licensor: false,
  hide_about: false,
  last_modified: 2026-01-01T10:00:00
)
```
