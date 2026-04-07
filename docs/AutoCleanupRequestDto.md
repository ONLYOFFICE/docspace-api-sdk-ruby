# DocspaceApiSdk::AutoCleanupRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set** | **Boolean** | Specifies whether to enable the auto-clearing or not. | [optional] |
| **gap** | [**DateToAutoCleanUp**](DateToAutoCleanUp.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AutoCleanupRequestDto.new(
  set: true,
  gap: null
)
```
