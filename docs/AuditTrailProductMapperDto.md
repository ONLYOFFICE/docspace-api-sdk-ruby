# DocspaceApiSdk::AuditTrailProductMapperDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_type** | **String** | The product this branch of the tree belongs to, as the `productType` filter of this operation spells it and  as `GET api/2.0/security/audit/types` lists it under `productTypes`. | [optional] |
| **modules** | [**Array&lt;AuditTrailModuleMapperDto&gt;**](AuditTrailModuleMapperDto.md) | The locations inside the product. It is empty when `moduleType` was passed and this product has no module  of that name, which is why a product can come back with nothing under it. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AuditTrailProductMapperDto.new(
  product_type: Documents,
  modules: null
)
```
