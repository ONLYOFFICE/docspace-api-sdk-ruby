# DocspaceApiSdk::MembersRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **members** | **Array&lt;String&gt;** | The accounts the operation applies to. When adding or replacing members, an account that is a guest, is  disabled or does not exist is skipped without an error; when removing them, an ID that is not a member is  skipped as well. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MembersRequest.new(
  members: [00000000-0000-0000-0000-000000000000, 11111111-1111-1111-1111-111111111111]
)
```
