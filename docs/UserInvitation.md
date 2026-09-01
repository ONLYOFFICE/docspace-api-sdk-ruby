# DocspaceApiSdk::UserInvitation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **users_ids** | **Array&lt;String&gt;** | The list of user IDs. | [optional] |
| **resend_all** | **Boolean** | Specifies whether to resend all user invitations or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UserInvitation.new(
  users_ids: [00000000-0000-0000-0000-000000000000],
  resend_all: false
)
```
