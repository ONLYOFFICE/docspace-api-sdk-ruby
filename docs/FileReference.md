# DocspaceApiSdk::FileReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference_data** | [**FileReferenceData**](FileReferenceData.md) | How this document is named when another spreadsheet refers to it. Send it back as it stands to resolve the  reference again. | [optional] |
| **error** | **String** | Filled in when the reference resolved to nothing; the rest of the descriptor is then empty and must not be  handed to the editors. | [optional] |
| **path** | **String** | The title of the document the reference resolved to. | [optional] |
| **url** | **String** | Where the content is fetched from. It is addressed to the host the document service can reach, which on a  deployment with a private editor network is not the address a browser should follow. | [optional] |
| **file_type** | **String** | The format the content is in, without the leading dot. | [optional] |
| **key** | **String** | Identifies the exact revision to the editors: two clients that receive the same key read the same co-editing  session, and the key changes as soon as the document is saved. | [optional] |
| **link** | **String** | The address of the document in the portal web editor - the link to put in front of a person, unlike the  download address above. | [optional] |
| **token** | **String** | Signs this descriptor so that the editors can trust it. It stays empty on a portal that has no signature  secret configured for the document service. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileReference.new(
  reference_data: null,
  error: File not found,
  path: Budget 2026.xlsx,
  url: https://portal.example.com/filehandler.ashx?action=download&fileid=512,
  file_type: xlsx,
  key: 1_512_3,
  link: https://portal.example.com/doceditor?fileid=512,
  token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
)
```
