# DocspaceApiSdk::DefaultTemplateSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;DefaultTemplateItemDto&gt;**](DefaultTemplateItemDto.md) | One entry per extension the portal's built-in template set covers, whether or not a custom blank has been  chosen for it, so the list is never empty and its length follows the template set rather than the number of  custom blanks. Entries come in the order an interface shows them: text document, spreadsheet, presentation and  PDF first, everything else by extension. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DefaultTemplateSettingsDto.new(
  items: [{fileExtension=.docx, fileTitle=Company letter.docx, selectedFile=123}]
)
```
