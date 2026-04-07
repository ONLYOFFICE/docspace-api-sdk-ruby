# DocspaceApiSdk::FileLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filetype** | **String** | The type of the file for the source viewed or edited document. |  |
| **token** | **String** | The encrypted signature added to the config in the form of a token. | [optional] |
| **url** | **String** | The absolute URL where the source viewed or edited document is stored. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileLink.new(
  filetype: docx,
  token: token,
  url: https://example.com/file.docx
)
```
