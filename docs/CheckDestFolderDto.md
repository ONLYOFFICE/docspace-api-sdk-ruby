# DocspaceApiSdk::CheckDestFolderDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **result** | [**CheckDestFolderResult**](CheckDestFolderResult.md) |  | [optional] |
| **files** | [**Array&lt;FileEntryBaseDto&gt;**](FileEntryBaseDto.md) | The list of files in the destination folder. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CheckDestFolderDto.new(
  result: null,
  files: [{"id":10,"title":"document.docx"}]
)
```
