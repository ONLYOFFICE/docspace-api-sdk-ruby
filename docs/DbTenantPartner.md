# DocspaceApiSdk::DbTenantPartner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **Integer** | The tenant ID. | [optional] |
| **partner_id** | **String** | The partner ID. | [optional] |
| **affiliate_id** | **String** | The affiliate ID. | [optional] |
| **campaign** | **String** | The tenant partner campaign. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DbTenantPartner.new(
  tenant_id: 1,
  partner_id: partner_123,
  affiliate_id: artifact_123,
  campaign: campaigh
)
```
