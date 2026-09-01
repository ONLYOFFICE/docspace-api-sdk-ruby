# DocspaceApiSdk::PluginsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Specifies if the plugins are enabled or not. | [optional] |
| **upload** | **Boolean** | Specifies if the plugins can be uploaded or not. | [optional] |
| **delete** | **Boolean** | Specifies if the plugins can be deleted or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::PluginsDto.new(
  enabled: true,
  upload: true,
  delete: true
)
```
