# DocspaceApiSdk::AiPromptFolder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique folder identifier (UUID). |  |
| **name** | **String** | Folder display name. |  |
| **created_at** | **Float** | Timestamp (ms since epoch) when the folder was created. |  |
| **updated_at** | **Float** | Timestamp (ms since epoch) of the last folder modification. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiPromptFolder.new(
  id: 44444444-4444-4444-4444-444444444444,
  name: Contract review,
  created_at: 1767225600000,
  updated_at: 1767225600000
)
```
