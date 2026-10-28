# DocspaceApiSdk::DocsCloudTenantInfoDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **license** | [**DocsCloudLicenseInfoDto**](DocsCloudLicenseInfoDto.md) | The license information. | [optional] |
| **server** | [**DocsCloudServerInfoDto**](DocsCloudServerInfoDto.md) | The Docs Connect server information. | [optional] |
| **users_limit** | [**DocsCloudUsersLimitDto**](DocsCloudUsersLimitDto.md) | The user limits of the license. | [optional] |
| **stats** | [**DocsCloudStatsDto**](DocsCloudStatsDto.md) | The usage statistics for the current period. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudTenantInfoDto.new(
  license: null,
  server: null,
  users_limit: null,
  stats: null
)
```
