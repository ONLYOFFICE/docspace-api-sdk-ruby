# DocspaceApiSdk::DocsCloudQuotaDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **users** | [**Array&lt;DocsCloudQuotaUserDto&gt;**](DocsCloudQuotaUserDto.md) | The editor users. | [optional] |
| **users_view** | [**Array&lt;DocsCloudQuotaUserDto&gt;**](DocsCloudQuotaUserDto.md) | The viewer users. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudQuotaDto.new(
  users: [{userid=00000000-0000-0000-0000-000000000000, expire=2024-01-15T10:30:00Z}],
  users_view: [{userid=00000000-0000-0000-0000-000000000000, expire=2024-01-15T10:30:00Z}]
)
```
