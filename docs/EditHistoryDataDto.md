# DocspaceApiSdk::EditHistoryDataDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **changes_url** | **String** | The address the editor downloads the recorded changes of this revision from. It is filled in only when the  portal has a change record for the revision; without it the revision can be shown as a whole document but not  as a set of changes. | [optional] |
| **key** | **String** | The document key of the revision being shown, which the editing service uses to identify it and to reuse the  copy it has cached. |  |
| **previous** | [**EditHistoryUrl**](EditHistoryUrl.md) | The revision this one is compared against. It arrives together with `changesUrl`, and when the revision shown  is the first one the file ever had, it points at the blank template the file was created from instead of at an  earlier revision. | [optional] |
| **token** | **String** | The signature over the whole answer, as a JSON Web Token that the editing service verifies before it accepts  the addresses in it. Empty when the portal runs without a document-service secret. | [optional] |
| **url** | **String** | The address the content of this revision is served from. It is meant for the editing service and carries its  own key, which is valid for a limited time. |  |
| **version** | **Integer** | Echoes the revision that was asked for, so it reports 0 when the request named no version and the current  revision was taken. |  |
| **file_type** | **String** | The format of the revision being shown, as an extension without the leading dot. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EditHistoryDataDto.new(
  changes_url: https://example.com/changes,
  key: doc1,
  previous: null,
  token: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ2ZXJzaW9uIjoxfQ.7HxQ0Zx1,
  url: https://example.com/file.docx,
  version: 1,
  file_type: docx
)
```
