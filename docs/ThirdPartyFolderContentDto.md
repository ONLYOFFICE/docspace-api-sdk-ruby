# DocspaceApiSdk::ThirdPartyFolderContentDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **files** | [**Array&lt;FileEntryBaseDto&gt;**](FileEntryBaseDto.md) | The file entries of this page. It is empty when the folder holds no files, when the filters matched none of  them, and in the sections that list rooms only. | [optional] |
| **folders** | [**Array&lt;FileEntryBaseDto&gt;**](FileEntryBaseDto.md) | The folder entries of this page. In a section of rooms these entries are the rooms themselves, which is where  their type, tags, logo and quota are read from. | [optional] |
| **current** | [**ThirdPartyFolderDto**](ThirdPartyFolderDto.md) | The folder or section the page was read from, with its own title, type and access rights. It describes the  container, not the entries, and is filled in even when the page is empty. | [optional] |
| **path_parts** | **Object** |  |  |
| **start_index** | **Integer** | The position of the first entry of this page in the whole result, echoing the requested start index. Add the  number of entries received to it to ask for the next page. | [optional] |
| **count** | **Integer** | How many entries this page carries, files and folders together. A page shorter than the requested size means  the result is exhausted. | [optional] |
| **total** | **Integer** | How many entries matched before paging was applied, across the whole folder. Page until the start index plus  the entries received reaches it. |  |
| **new** | **Integer** | How many entries of this folder are marked as new for the caller. It is 0 for every listing when the account  has switched the new-item badges off, so a zero here does not prove that nothing has changed. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ThirdPartyFolderContentDto.new(
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
