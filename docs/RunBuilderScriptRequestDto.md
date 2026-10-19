# DocspaceApiSdk::RunBuilderScriptRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **script** | **String** | The document builder script. It names a portal file by its id where the document builder documentation  writes an address - `builder.OpenFile(1234)`; an address written out in the script is refused. |  |
| **folder_id** | **Integer** | The id of the folder for the produced files that `outputs` does not list, as reported by a folder listing  such as `GET api/2.0/files/{folderId}`. | [optional] |
| **outputs** | [**Hash&lt;String, RunBuilderScriptOutputRequest&gt;**](RunBuilderScriptOutputRequest.md) | Destinations of the produced files, keyed by the name the script saves each one under - the second argument of  `builder.SaveFile(docx, result.docx)`. | [optional] |
| **argument** | [**RunBuilderScriptRequestDtoArgument**](RunBuilderScriptRequestDtoArgument.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RunBuilderScriptRequestDto.new(
  script: builder.OpenFile("1234"); Api.GetDocument().GetElement(0).AddText(Argument.title); builder.SaveFile("docx", "result.docx"); builder.SaveFile("pdf", "result.pdf"); builder.CloseFile();,
  folder_id: 5678,
  outputs: {result.docx={fileId=1234}, result.pdf={folderId=5678, title=Quarterly report.pdf}},
  argument: null
)
```
