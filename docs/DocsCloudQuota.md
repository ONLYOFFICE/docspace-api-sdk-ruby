# DocspaceApiSdk::DocsCloudQuota

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **users** | [**Array&lt;DocsCloudQuotaUser&gt;**](DocsCloudQuotaUser.md) | The editor users. | [optional] |
| **users_view** | [**Array&lt;DocsCloudQuotaUser&gt;**](DocsCloudQuotaUser.md) | The viewer users. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudQuota.new(
  users: [{userid=00000000-0000-0000-0000-000000000000, expire=2024-01-15T10:30:00Z}],
  users_view: [{userid=00000000-0000-0000-0000-000000000000, expire=2024-01-15T10:30:00Z}]
)
```
