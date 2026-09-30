# DocspaceApiSdk::InvitationLinkDeleteRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The link to delete, by the `id` that creating or reading it returned. A link recreated for the same role  afterwards gets a new id, a new URL and a use count starting from zero. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::InvitationLinkDeleteRequestDto.new(
  id: 00000000-0000-0000-0000-000000000000
)
```
