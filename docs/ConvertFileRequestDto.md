# DocspaceApiSdk::ConvertFileRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The id of the portal file to convert, as reported by a folder listing such as `GET api/2.0/files/{folderId}`. |  |
| **folder_id** | **Integer** | The id of the folder to save the converted file in, as reported by a folder listing such as  `GET api/2.0/files/{folderId}`. | [optional] |
| **code_page** | **Integer** | The encoding of a csv or txt source, as a code page number: 1251 for Cyrillic, 65001 for UTF-8, and so on.  Leaving it out lets the document service guess, which garbles non-latin text. | [optional] |
| **delimiter** | **Integer** | The character separating the values of a csv source: 0 - none, 1 - tab, 2 - semicolon, 3 - colon, 4 - comma,  5 - space. | [optional] |
| **document_layout** | [**ConvertDocumentLayoutRequest**](ConvertDocumentLayoutRequest.md) | The layout of forms printed as pdf documents or images. | [optional] |
| **document_renderer** | [**ConvertDocumentRendererRequest**](ConvertDocumentRendererRequest.md) | How the text of a pdf, xps or oxps source is read back. | [optional] |
| **outputtype** | **String** | The extension of the format to convert to, without the dot. The formats a source can become are listed under  `extsConvertible` in `GET api/2.0/files/settings`, keyed by the source extension, both with a leading dot there. |  |
| **password** | **String** | The password of the source document, for a document that is protected with one. | [optional] |
| **region** | **String** | The culture code whose currency, date and time formats a spreadsheet converted to PDF is shown in. | [optional] |
| **thumbnail** | [**ConvertThumbnailRequest**](ConvertThumbnailRequest.md) | How a thumbnail is fitted, when the target format is an image. | [optional] |
| **spreadsheet_layout** | [**ConvertSpreadsheetLayoutRequest**](ConvertSpreadsheetLayoutRequest.md) | How a spreadsheet is laid out on the page, when it is converted to PDF. | [optional] |
| **pdf** | [**ConvertPdfRequest**](ConvertPdfRequest.md) | The PDF settings, used when the target format is PDF. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ConvertFileRequestDto.new(
  file_id: 1234,
  folder_id: 5678,
  code_page: 65001,
  delimiter: 4,
  document_layout: null,
  document_renderer: null,
  outputtype: pdf,
  password: qwerty,
  region: en-US,
  thumbnail: null,
  spreadsheet_layout: null,
  pdf: null
)
```
