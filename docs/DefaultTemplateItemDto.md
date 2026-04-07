# DocspaceApiSdk::DefaultTemplateItemDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected_file** | **Integer** | File id to use as a default template | [optional] |
| **file_extension** | **String** | Extension of a default template |  |
| **file_title** | **String** | Title of a default template | [optional] |
| **last_modified** | **Time** | Last modified date of a default template | [optional] |
| **file_size** | **Integer** | Filesize (in bytes) of a default template | [optional] |
| **view_url** | **String** | View url of a default template | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DefaultTemplateItemDto.new(
  selected_file: 123,
  file_extension: .docx,
  file_title: Default Template,
  last_modified: null,
  file_size: 1024,
  view_url: http://localhost/template/view
)
```
