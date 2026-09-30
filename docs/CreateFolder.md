# DocspaceApiSdk::CreateFolder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The title the folder is given. It is trimmed before it is stored and may not be blank or consist of spaces  alone; it need not differ from the titles of the neighbouring folders, so the same title may appear twice in  one parent. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CreateFolder.new(
  title: New Folder
)
```
