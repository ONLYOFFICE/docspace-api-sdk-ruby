# DocspaceApiSdk::SsoFieldMapping

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | The first name. | [optional] |
| **last_name** | **String** | The last name. | [optional] |
| **email** | **String** | The email address. | [optional] |
| **title** | **String** | The title. | [optional] |
| **location** | **String** | The location. | [optional] |
| **phone** | **String** | The phone number. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SsoFieldMapping.new(
  first_name: givenName,
  last_name: sn,
  email: sn@example.com,
  title: SN,
  location: Location,
  phone: +14155552671
)
```
