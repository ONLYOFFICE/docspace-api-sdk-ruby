# DocspaceApiSdk::QuotaSettingsRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enable_quota** | **Boolean** | Whether the limit is enforced at all. While it is false the size is ignored and nothing created afterwards  carries a limit; objects that already have one keep it either way. | [optional] |
| **default_quota** | [**QuotaSettingsRequestsDtoDefaultQuota**](QuotaSettingsRequestsDtoDefaultQuota.md) |  |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::QuotaSettingsRequestsDto.new(
  enable_quota: true,
  default_quota: null
)
```
