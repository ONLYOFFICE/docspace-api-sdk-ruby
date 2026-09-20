# DocspaceApiSdk::AuditTrailTypesDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions** | **Array&lt;String&gt;** | Every action name the build can record, spelled as the `action` filter of  `GET api/2.0/security/audit/events/filter` and `GET api/2.0/security/audit/login/filter` expects it. It is  the whole vocabulary, not the actions this portal has recorded, and only a handful of the names are the  sign-in actions the login filter accepts. | [optional] |
| **action_types** | **Array&lt;String&gt;** | The kinds of change an action can stand for, spelled as the `actionType` filter of  `GET api/2.0/security/audit/events/filter` expects it. | [optional] |
| **product_types** | **Array&lt;String&gt;** | The products an action can belong to, spelled as the `productType` filter of  `GET api/2.0/security/audit/mappers` expects it. The audit trail itself cannot be filtered by product. | [optional] |
| **module_types** | **Array&lt;String&gt;** | The locations inside those products, spelled as the `moduleType` filter of  `GET api/2.0/security/audit/events/filter` and `GET api/2.0/security/audit/mappers` expects it. | [optional] |
| **entry_types** | **Array&lt;String&gt;** | The kinds of object an action can be applied to, spelled as the `entryType` filter of  `GET api/2.0/security/audit/events/filter` expects it. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AuditTrailTypesDto.new(
  actions: [FileCreated],
  action_types: [Create],
  product_types: [Documents],
  module_types: [Files],
  entry_types: [File]
)
```
