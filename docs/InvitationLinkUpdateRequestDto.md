# DocspaceApiSdk::InvitationLinkUpdateRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The link to change, by the `id` that creating or reading it returned. The role behind that id cannot be  changed here. |  |
| **expiration** | **Time** | The new deadline, read in the portal time zone. The body is applied as a whole, so leaving it out clears the  deadline rather than keeping the current one; a moment in the past is refused. | [optional] |
| **max_use_count** | **Integer** | The new total number of accounts that may join through the link. It may not be lower than the uses already  spent, which the link reports as `currentUseCount`, and leaving it out removes the limit rather than keeping  the current one. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::InvitationLinkUpdateRequestDto.new(
  id: 00000000-0000-0000-0000-000000000000,
  expiration: 2024-01-15T10:30:00Z,
  max_use_count: 1
)
```
