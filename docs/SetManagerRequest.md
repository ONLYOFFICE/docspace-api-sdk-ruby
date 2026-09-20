# DocspaceApiSdk::SetManagerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The account to make the manager. It has to exist, otherwise the operation answers 404, and it is added to the  group at the same time, so it does not have to be a member beforehand. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SetManagerRequest.new(
  user_id: 00000000-0000-0000-0000-000000000000
)
```
