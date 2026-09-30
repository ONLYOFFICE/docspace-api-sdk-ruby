# DocspaceApiSdk::ThirdPartyChunkedUploadSessionResponseWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | Always true in a body that reaches the caller, because a call that does not succeed answers with an error  status and no body at all. It cannot be used to tell a refusal from a success. | [optional] |
| **data** | [**ThirdPartyChunkedUploadSessionResponse**](ThirdPartyChunkedUploadSessionResponse.md) | The reserved upload itself, in the same shape the newer session operations answer with directly. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ThirdPartyChunkedUploadSessionResponseWrapper.new(
  success: true,
  data: null
)
```
