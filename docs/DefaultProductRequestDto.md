# DocspaceApiSdk::DefaultProductRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_folder_type** | [**FolderType**](FolderType.md) | The section to land on. Only the folder types the client offers as a landing page are accepted - the rooms  list, My documents, shared with me, favorites, recent, forms and the AI agents folder - and anything else is  refused. My documents is refused for a guest as well, since a guest has no personal storage. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DefaultProductRequestDto.new(
  default_folder_type: null
)
```
