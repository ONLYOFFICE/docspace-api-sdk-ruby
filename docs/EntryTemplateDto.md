# DocspaceApiSdk::EntryTemplateDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The template ID. | [optional] |
| **name** | **String** | The template name. | [optional] |
| **visible** | **Boolean** | Specifies if the template is visible in the UI pickers. | [optional] |
| **cascade** | **Boolean** | Whether the template cascades from this entry to the folders and files below it. Only a folder or a room can  cascade; on a file the value is always false. | [optional] |
| **conflict_resolve_type** | [**MetadataConflictResolveType**](MetadataConflictResolveType.md) | How the cascade of this entry treats a value an entry below already holds. Null while the template does not  cascade from this entry. | [optional] |
| **fields** | [**Array&lt;EntryFieldDto&gt;**](EntryFieldDto.md) | The template fields with their values on the entry. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EntryTemplateDto.new(
  id: 3,
  name: Project,
  visible: true,
  cascade: true,
  conflict_resolve_type: null,
  fields: [{id=9, name=Customer, type=0, order=0, value={stringValue=ACME Corp}}]
)
```
