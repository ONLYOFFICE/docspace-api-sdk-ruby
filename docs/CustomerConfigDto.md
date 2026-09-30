# DocspaceApiSdk::CustomerConfigDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The postal address from the portal branding settings; empty when none was entered. | [optional] |
| **logo** | **String** | The About-panel logo of the organization. | [optional] |
| **logo_dark** | **String** | The About-panel logo for a dark interface theme. | [optional] |
| **mail** | **String** | The contact address from the portal branding settings. | [optional] |
| **name** | **String** | The organization name shown in the editor. | [optional] |
| **www** | **String** | The website of the organization. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomerConfigDto.new(
  address: 20A-6 Ernesta Birznieka-Upisha Street, Riga,
  logo: https://portal.example.com/logo/about.png,
  logo_dark: https://portal.example.com/logo/about-dark.png,
  mail: support@example.com,
  name: Example Ltd,
  www: https://www.example.com
)
```
