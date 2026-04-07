# DocspaceApiSdk::SecurityInfoRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_ids** | [**Array&lt;DuplicateRequestDtoAllOfFileIds&gt;**](DuplicateRequestDtoAllOfFileIds.md) | The list of the shared folder IDs. | [optional] |
| **file_ids** | [**Array&lt;DuplicateRequestDtoAllOfFileIds&gt;**](DuplicateRequestDtoAllOfFileIds.md) | The list of the shared file IDs. | [optional] |
| **share** | [**Array&lt;FileShareParams&gt;**](FileShareParams.md) | The collection of sharing parameters. | [optional] |
| **notify** | **Boolean** | Specifies whether to notify users about the shared file or not. | [optional] |
| **sharing_message** | **String** | The message to send when notifying about the shared file. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SecurityInfoRequestDto.new(
  folder_ids: [1,2,3],
  file_ids: [1,2,3],
  share: [{"shareTo":"00000000-0000-0000-0000-000000000000","access":1}],
  notify: true,
  sharing_message: You have been granted access to the file
)
```
