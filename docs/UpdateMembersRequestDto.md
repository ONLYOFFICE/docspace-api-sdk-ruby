# DocspaceApiSdk::UpdateMembersRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_ids** | **Array&lt;String&gt;** | The accounts the operation applies to. System accounts are dropped from the list without an error, and the  remaining ones are processed in the order they are given. | [optional] |
| **resend_all** | **Boolean** | Reaches every pending account of the portal instead of the ones in `userIds`. It is read only by  `PUT api/2.0/people/invite` and is ignored by every other operation that binds this body. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateMembersRequestDto.new(
  user_ids: [00000000-0000-0000-0000-000000000000, 11111111-1111-1111-1111-111111111111],
  resend_all: false
)
```
