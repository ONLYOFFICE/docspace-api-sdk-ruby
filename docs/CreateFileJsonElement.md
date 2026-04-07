# DocspaceApiSdk::CreateFileJsonElement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The file title for creation. |  |
| **template_id** | [**CreateFileJsonElementTemplateId**](CreateFileJsonElementTemplateId.md) |  | [optional] |
| **enable_external_ext** | **Boolean** | Specifies whether to allow creating a file of an external extension or not. | [optional] |
| **form_id** | **Integer** | The form ID for creation. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CreateFileJsonElement.new(
  title: New Document.docx,
  template_id: null,
  enable_external_ext: false,
  form_id: 0
)
```
