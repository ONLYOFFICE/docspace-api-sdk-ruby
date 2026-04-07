# DocspaceApiSdk::SecurityInfoSimpleRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **share** | [**Array&lt;FileShareParams&gt;**](FileShareParams.md) | The collection of sharing parameters. | [optional] |
| **notify** | **Boolean** | Specifies whether to notify users about the shared file or not. | [optional] |
| **sharing_message** | **String** | The message to send when notifying about the shared file. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SecurityInfoSimpleRequestDto.new(
  share: [{"shareTo":"00000000-0000-0000-0000-000000000000","access":1}],
  notify: true,
  sharing_message: You have been granted access to the file
)
```
