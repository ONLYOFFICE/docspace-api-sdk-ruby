# DocspaceApiSdk::MembersRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **members** | **Array&lt;String&gt;** | The list of group member IDs. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MembersRequest.new(
  members: [00000000-0000-0000-0000-000000000000, 11111111-1111-1111-1111-111111111111]
)
```
