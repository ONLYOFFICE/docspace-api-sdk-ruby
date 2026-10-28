# DocspaceApiSdk::ThirdPartyDraftLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **String** | The folder holding the draft: the sub-folder that the room for filling keeps for drafts of this particular  form. | [optional] |
| **folder_title** | **String** | The title of that folder, which the portal takes from the form itself when the form is released for filling. | [optional] |
| **file_id** | **String** | The draft itself - the copy the caller fills in, not the original form, and the identifier to pass to the file  operations while filling. | [optional] |
| **file_title** | **String** | The title of the draft, which the portal builds from the name of the person filling it and the name of the  form. Null when the draft the record points at no longer exists. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ThirdPartyDraftLocation.new(
  folder_id: sbox-42,
  folder_title: Application,
  file_id: sbox-42-L1JlcG9ydC5kb2N4,
  file_title: John Doe - Application.pdf
)
```
