# DocspaceApiSdk::UpdateFolderMetadataTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cascade** | **Boolean** | Whether the template cascades from the folder to the folders and files below it: true turns the cascade on,  false turns it off while the template stays on the folder. | [optional] |
| **conflict_resolve_type** | [**MetadataConflictResolveType**](MetadataConflictResolveType.md) | How the cascade treats a value an entry below already holds. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateFolderMetadataTemplateRequest.new(
  cascade: true,
  conflict_resolve_type: null
)
```
