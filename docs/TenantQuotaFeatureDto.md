# DocspaceApiSdk::TenantQuotaFeatureDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the tenant quota feature. | [optional] |
| **title** | **String** | The title of the tenant quota feature. | [optional] |
| **image** | **String** | The image URL of the tenant quota feature. | [optional] |
| **value** | **Object** | The value of the tenant quota feature. | [optional] |
| **type** | **String** | The type of the tenant quota feature. | [optional] |
| **used** | [**FeatureUsedDto**](FeatureUsedDto.md) |  | [optional] |
| **price_title** | **String** | The price title of the tenant quota feature. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantQuotaFeatureDto.new(
  id: 00000000-0000-0000-0000-000000000001,
  title: Premium Storage,
  image: /images/premium-storage.png,
  value: null,
  type: Storage,
  used: null,
  price_title: $9.99/month
)
```
