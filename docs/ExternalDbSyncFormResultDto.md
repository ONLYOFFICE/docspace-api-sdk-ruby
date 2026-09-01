# DocspaceApiSdk::ExternalDbSyncFormResultDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The form file ID. | [optional] |
| **title** | **String** | The form file title. | [optional] |
| **success** | **Boolean** | Specifies whether the synchronization succeeded for this form. | [optional] |
| **error** | **String** | The error message if the synchronization failed for this form. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ExternalDbSyncFormResultDto.new(
  id: 42,
  title: Application.pdf,
  success: true,
  error: Connection refused
)
```
