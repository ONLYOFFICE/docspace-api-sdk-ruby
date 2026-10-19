# DocspaceApiSdk::MetadataOperationDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The operation ID. | [optional] |
| **progress** | **Float** | The operation progress percentage. | [optional] |
| **is_completed** | **Boolean** | Specifies if the operation is completed. | [optional] |
| **error** | **String** | The operation error message. | [optional] |
| **template_ids** | **Array&lt;Integer&gt;** | The IDs of the metadata templates the operation propagates to the subtree. Empty when there is no operation to  report, so the answer describes nothing in progress. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MetadataOperationDto.new(
  id: a1f4c9b2-3d8e-4f77-9b16-2c5de8f0a913,
  progress: 100,
  is_completed: true,
  error: Folder not found.,
  template_ids: [3]
)
```
