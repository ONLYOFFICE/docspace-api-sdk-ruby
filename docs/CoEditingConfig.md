# DocspaceApiSdk::CoEditingConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change** | **Boolean** | Whether the user may switch between the two co-editing modes from the editor interface, or is held to the one  the portal preset. | [optional] |
| **fast** | **Boolean** | Whether other participants see each change as it is typed. Left off, changes are exchanged only when a  participant saves, and the paragraph being edited is locked for the others meanwhile. | [optional] |
| **mode** | [**CoEditingConfigMode**](CoEditingConfigMode.md) | The mode the two settings above amount to, as the editors name it. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CoEditingConfig.new(
  change: true,
  fast: false,
  mode: null
)
```
