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
  id: null,
  name: null,
  created_at: null,
  updated_at: null
)
```
