# DocspaceApiSdk::WizardRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The user's email address for authentication and communication. |  |
| **password_hash** | **String** | The hashed representation of the user's password. |  |
| **lng** | **String** | The user's preferred interface language code. | [optional] |
| **time_zone** | **String** | The user's time zone identifier. | [optional] |
| **ami_id** | **String** | The Amazon Machine Image (AMI) identifier. | [optional] |
| **subscribe_from_site** | **Boolean** | Specifies whether the user opted in for site communications. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WizardRequestsDto.new(
  email: user@example.com,
  password_hash: 2DYmIoA/aYKEksFocEf6uw==,
  lng: en-US,
  time_zone: UTC,
  ami_id: 00000000-0000-0000-0000-000000000001,
  subscribe_from_site: true
)
```
