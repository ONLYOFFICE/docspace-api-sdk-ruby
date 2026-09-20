# DocspaceApiSdk::CreateFileJsonElement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The title of the new file. The extension in it decides the format, and one of a known text, spreadsheet or  presentation format is rewritten to the DOCX, XLSX or PPTX of the portal unless `enableExternalExt` says  otherwise; a title with no extension gets DOCX added. |  |
| **template_id** | [**CreateFileJsonElementTemplateId**](CreateFileJsonElementTemplateId.md) |  | [optional] |
| **enable_external_ext** | **Boolean** | Whether the extension of the title is kept as it is: `true` stores the title verbatim, `false` rewrites a  known foreign format to the format the portal edits itself. | [optional] |
| **form_id** | **Integer** | A ready form from the form gallery of the portal to copy instead of a template, named by the identifier the  gallery reports for it. It takes precedence over `templateId`; 0 means no form. | [optional] |

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
