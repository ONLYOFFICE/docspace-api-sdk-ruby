# DocspaceApiSdk::InvitationLinkUpdateRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the invitation link. |  |
| **expiration** | **Time** | The expiration date of the invitation link. | [optional] |
| **max_use_count** | **Integer** | The maximum number of times the invitation link can be used. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::InvitationLinkUpdateRequestDto.new(
  id: 00000000-0000-0000-0000-000000000000,
  expiration: 2024-01-15T10:30Z,
  max_use_count: 1
)
```
