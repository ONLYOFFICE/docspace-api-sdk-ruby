# DocspaceApiSdk::AdminMessageBaseSettingsRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The address the join link is sent to. It has to be a well-formed ASCII address rather than an  internationalized one, must not already belong to a member of the portal, and, where the portal trusts named  domains only, has to end with one of them; any of these faults is refused with 400. |  |
| **culture** | **String** | The language the letter is written in, as a culture name such as `en-US`. A culture the installation does not  have falls back to the portal language rather than failing the call. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AdminMessageBaseSettingsRequestsDto.new(
  email: admin@example.com,
  culture: en-US
)
```
