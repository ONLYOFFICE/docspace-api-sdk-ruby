# DocspaceApiSdk::PluginsConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plugins_data** | **Array&lt;String&gt;** | The array of absolute URLs to the plugin configuration files. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::PluginsConfig.new(
  plugins_data: [https://portal.example.com/ThirdParty/plugin/easybib/config.json, https://portal.example.com/ThirdParty/plugin/wordpress/config.json]
)
```
