# DocspaceApiSdk::UpdateMembersRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_ids** | **Array&lt;String&gt;** | The list of user IDs. | [optional] |
| **resend_all** | **Boolean** | Specifies whether to resend invitation letters to all the users or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateMembersRequestDto.new(
  user_ids: ["00000000-0000-0000-0000-000000000000","11111111-1111-1111-1111-111111111111"],
  resend_all: false
)
```
