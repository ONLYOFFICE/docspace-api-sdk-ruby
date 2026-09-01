# DocspaceApiSdk::DocsCloudQuotaUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The user ID. | [optional] |
| **expire** | **String** | The expiration date of the user. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudQuotaUser.new(
  user_id: 00000000-0000-0000-0000-000000000000,
  expire: 2024-01-15T10:30:00Z
)
```
