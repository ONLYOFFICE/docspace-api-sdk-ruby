# DocspaceApiSdk::AssignMetadataTemplates

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_ids** | **Array&lt;Integer&gt;** | The metadata template IDs. |  |
| **cascade** | **Boolean** | Specifies if the templates are propagated to the folder sub-entries. | [optional] |
| **conflict_resolve_type** | [**MetadataConflictResolveType**](MetadataConflictResolveType.md) | The conflict resolve type for the cascade assignment. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AssignMetadataTemplates.new(
  template_ids: [1, 2],
  cascade: true,
  conflict_resolve_type: null
)
```
