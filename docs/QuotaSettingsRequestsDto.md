# DocspaceApiSdk::QuotaSettingsRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enable_quota** | **Boolean** | Specifies whether the storage quota restrictions are enabled. | [optional] |
| **default_quota** | [**QuotaSettingsRequestsDtoDefaultQuota**](QuotaSettingsRequestsDtoDefaultQuota.md) |  |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::QuotaSettingsRequestsDto.new(
  enable_quota: true,
  default_quota: null
)
```
