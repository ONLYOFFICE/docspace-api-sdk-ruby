# DocspaceApiSdk::WebPluginDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The web plugin name. |  |
| **version** | **String** | The web plugin version. |  |
| **min_doc_space_version** | **String** | The minimum version of DocSpace with which the plugin is guaranteed to work. | [optional] |
| **description** | **String** | The web plugin description. |  |
| **license** | **String** | The web plugin license. |  |
| **author** | **String** | The web plugin author. |  |
| **home_page** | **String** | The web plugin home page URL. |  |
| **plugin_name** | **String** | The name by which the web plugin is registered in the window object. |  |
| **scopes** | **String** | The web plugin scopes. |  |
| **image** | **String** | The web plugin image. |  |
| **create_by** | [**EmployeeDto**](EmployeeDto.md) | The user who created the web plugin. |  |
| **create_on** | **Time** | The date and time when the web plugin was created. |  |
| **enabled** | **Boolean** | Specifies if the web plugin is enabled or not. |  |
| **system** | **Boolean** | Specifies if the web plugin is system or not. |  |
| **url** | **String** | The web plugin URL. |  |
| **css_url** | **String** | The web plugin css URL. |  |
| **settings** | **String** | The web plugin settings. |  |
| **name_locale** | **Hash&lt;String, String&gt;** | The web plugin localized name. | [optional] |
| **description_locale** | **Hash&lt;String, String&gt;** | The web plugin localized description. | [optional] |
| **runtime** | **String** | The web plugin loading method | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WebPluginDto.new(
  name: Example Plugin,
  version: 1.0.0,
  min_doc_space_version: 12.0.0,
  description: A plugin that provides additional functionality,
  license: MIT,
  author: ONLYOFFICE,
  home_page: https://example.com,
  plugin_name: examplePlugin,
  scopes: Files,Rooms,
  image: https://example.com/image.png,
  create_by: null,
  create_on: 2024-01-15T10:30:00Z,
  enabled: true,
  system: false,
  url: https://example.com/plugin.js,
  css_url: https://example.com/plugin.css,
  settings: {},
  name_locale: {},
  description_locale: {},
  runtime: module
)
```
