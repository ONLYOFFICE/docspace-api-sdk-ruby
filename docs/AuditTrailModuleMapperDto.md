# DocspaceApiSdk::AuditTrailModuleMapperDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **module_type** | **String** | The location inside the product, as the `moduleType` filter of `GET api/2.0/security/audit/events/filter`  spells it. | [optional] |
| **actions** | [**Array&lt;AuditTrailActionMapperDto&gt;**](AuditTrailActionMapperDto.md) | Every action this module can record. Each action appears under exactly one module, so this tree is where a  caller learns which module a given action belongs to. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AuditTrailModuleMapperDto.new(
  module_type: Files,
  actions: null
)
```
