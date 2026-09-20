# DocspaceApiSdk::FileLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filetype** | **String** | The format the stored content is in, lower-cased and with the leading dot, which is how the document  service learns how to read the bytes behind the address. It stays empty when the file title carries no  extension at all. |  |
| **token** | **String** | Signs the address and the format above so that the document service can trust them. It stays empty on a  portal that has no signature secret configured for the document service, and the address is then meant  to be fetched unsigned. | [optional] |
| **url** | **String** | Where the content is fetched from: the portal download handler, pinned to the revision the file was at  when the address was issued and carrying an authorisation key of limited validity. It is addressed to  the host the document service can reach, which on a deployment with a private editor network is not the  address a browser should follow. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileLink.new(
  filetype: .docx,
  token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...,
  url: https://portal.example.com/filehandler.ashx?action=stream&fileid=512&version=3
)
```
