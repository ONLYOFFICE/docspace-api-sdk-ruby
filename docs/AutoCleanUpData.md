# DocspaceApiSdk::AutoCleanUpData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_auto_clean_up** | **Boolean** | Specifies whether to permanently delete files in the Trash folder. | [optional] |
| **gap** | [**DateToAutoCleanUp**](DateToAutoCleanUp.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AutoCleanUpData.new(
  is_auto_clean_up: false,
  gap: null
)
```
