# DocspaceApiSdk::EditorConfigurationDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callback_url** | **String** | The callback URL of the editor. | [optional] |
| **co_editing** | [**CoEditingConfig**](CoEditingConfig.md) |  | [optional] |
| **create_url** | **String** | The creation URL of the editor. | [optional] |
| **customization** | [**CustomizationConfigDto**](CustomizationConfigDto.md) |  | [optional] |
| **embedded** | [**EmbeddedConfig**](EmbeddedConfig.md) |  | [optional] |
| **encryption_keys** | [**EncryptionKeysConfig**](EncryptionKeysConfig.md) |  | [optional] |
| **lang** | **String** | The language of the editor configuration. |  |
| **mode** | **String** | The mode of the editor configuration. |  |
| **mode_write** | **Boolean** | Specifies if the mode is write of the editor configuration. | [optional] |
| **plugins** | [**PluginsConfig**](PluginsConfig.md) |  | [optional] |
| **recent** | [**Array&lt;RecentConfig&gt;**](RecentConfig.md) | The recent configuration of the editor. | [optional] |
| **templates** | [**Array&lt;TemplatesConfig&gt;**](TemplatesConfig.md) | The templates of the editor configuration. | [optional] |
| **user** | [**UserConfig**](UserConfig.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EditorConfigurationDto.new(
  callback_url: http://localhost/callback,
  co_editing: null,
  create_url: http://localhost/create,
  customization: null,
  embedded: null,
  encryption_keys: null,
  lang: en-US,
  mode: edit,
  mode_write: true,
  plugins: null,
  recent: [],
  templates: [],
  user: null
)
```
