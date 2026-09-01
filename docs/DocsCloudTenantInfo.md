# DocspaceApiSdk::DocsCloudTenantInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **license** | [**DocsCloudLicenseInfo**](DocsCloudLicenseInfo.md) | The license information. | [optional] |
| **server** | [**DocsCloudServerInfo**](DocsCloudServerInfo.md) | The DocsCloud server information. | [optional] |
| **users_limit** | [**DocsCloudUsersLimit**](DocsCloudUsersLimit.md) | The user limits of the license. | [optional] |
| **stats** | [**DocsCloudStats**](DocsCloudStats.md) | The usage statistics for the current period. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudTenantInfo.new(
  license: null,
  server: null,
  users_limit: null,
  stats: null
)
```
