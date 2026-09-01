# DocspaceApiSdk::FolderContentDtoInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **files** | [**Array&lt;FileEntryBaseDto&gt;**](FileEntryBaseDto.md) | The list of files in the folder. | [optional] |
| **folders** | [**Array&lt;FileEntryBaseDto&gt;**](FileEntryBaseDto.md) | The list of folders in the folder. | [optional] |
| **current** | [**FolderDtoInteger**](FolderDtoInteger.md) | The current folder information. | [optional] |
| **path_parts** | **Object** |  |  |
| **start_index** | **Integer** | The folder start index. | [optional] |
| **count** | **Integer** | The number of folder elements. | [optional] |
| **total** | **Integer** | The total number of elements in the folder. |  |
| **new** | **Integer** | The new element index in the folder. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FolderContentDtoInteger.new(
  files: [{id=10, title=document.docx}],
  folders: [{id=20, title=My Folder}],
  current: null,
  path_parts: null,
  start_index: 0,
  count: 4,
  total: 4,
  new: 0
)
```
