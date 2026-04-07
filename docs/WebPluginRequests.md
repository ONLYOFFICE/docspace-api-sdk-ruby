# DocspaceApiSdk::WebPluginRequests

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Controls whether the web plugin is active and operational. | [optional] |
| **settings** | **String** | The JSON-formatted configuration settings for the web plugin. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WebPluginRequests.new(
  enabled: true,
  settings: {"theme":"dark","autoSave":true}
)
```
