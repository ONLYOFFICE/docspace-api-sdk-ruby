# DocspaceApiSdk::TemplatesRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_ids** | **Array&lt;Integer&gt;** | The files to put on the template list, by id, as reported by a folder listing such as  `GET api/2.0/files/{folderId}`. Only a file stored in the portal itself can become a template, which is why an  id here is always numeric. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TemplatesRequestDto.new(
  file_ids: [1, 2, 3]
)
```
