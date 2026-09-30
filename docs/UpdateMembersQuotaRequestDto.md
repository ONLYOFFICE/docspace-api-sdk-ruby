# DocspaceApiSdk::UpdateMembersQuotaRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_ids** | **Array&lt;String&gt;** | The accounts the operation applies to. System accounts are dropped from the list without an error. | [optional] |
| **quota** | [**UpdateMembersQuotaRequestDtoQuota**](UpdateMembersQuotaRequestDtoQuota.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateMembersQuotaRequestDto.new(
  user_ids: [00000000-0000-0000-0000-000000000000, 11111111-1111-1111-1111-111111111111],
  quota: null
)
```
