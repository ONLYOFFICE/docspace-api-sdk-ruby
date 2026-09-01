# DocspaceApiSdk::CustomerConfigDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The address of the customer configuration. | [optional] |
| **logo** | **String** | The logo of the customer configuration. | [optional] |
| **logo_dark** | **String** | The dark logo of the customer configuration. | [optional] |
| **mail** | **String** | The mail address of the customer configuration. | [optional] |
| **name** | **String** | The name of the customer configuration. | [optional] |
| **www** | **String** | The site web address of the customer configuration. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomerConfigDto.new(
  address: 123 Main Street, City,
  logo: http://localhost/customer-logo.png,
  logo_dark: http://localhost/customer-logo-dark.png,
  mail: contact@example.com,
  name: ONLYOFFICE,
  www: https://www.example.com
)
```
