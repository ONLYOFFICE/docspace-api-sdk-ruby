# DocspaceApiSdk::CoEditingConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change** | **Boolean** | Specifies if the co-editing mode can be changed in the editor interface or not. | [optional] |
| **fast** | **Boolean** | Specifies if the co-editing mode is fast. | [optional] |
| **mode** | [**CoEditingConfigMode**](CoEditingConfigMode.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CoEditingConfig.new(
  change: true,
  fast: false,
  mode: null
)
```
