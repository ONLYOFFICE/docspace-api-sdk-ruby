# DocspaceApiSdk::StartReassignRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_user_id** | **String** | The ID of the user whose rooms and shared files are transferred away. The account has to have the `Terminated`  status already, and it cannot be a system account, the portal owner or the caller. |  |
| **to_user_id** | **String** | The ID of the user who receives the data. The account has to be an active room admin or DocSpace admin, so a  guest, a system account or a disabled account is rejected. |  |
| **delete_profile** | **Boolean** | Specifies whether to delete the source profile once the transfer succeeds. When false, which is the default,  the emptied profile is kept and can be deleted later through `DELETE api/2.0/people/{userid}`. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::StartReassignRequestDto.new(
  from_user_id: 00000000-0000-0000-0000-000000000000,
  to_user_id: 11111111-1111-1111-1111-111111111111,
  delete_profile: false
)
```
