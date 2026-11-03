# DocspaceApiSdk::AiContextFolder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud** | **String** | The account the rooms belong to; `docspace` for this portal. |  |
| **rooms** | [**Array&lt;AiContextRoom&gt;**](AiContextRoom.md) | The rooms of that account the caller can connect. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiContextFolder.new(
  cloud: docspace,
  rooms: []
)
```
