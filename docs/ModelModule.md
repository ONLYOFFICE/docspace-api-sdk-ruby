# DocspaceApiSdk::ModelModule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The module ID. | [optional] |
| **app_name** | **String** | The module product class name. | [optional] |
| **title** | **String** | The module product class name. | [optional] |
| **link** | **String** | The URL to the module start page. | [optional] |
| **icon_url** | **String** | The module icon URL. | [optional] |
| **image_url** | **String** | The module large image URL. | [optional] |
| **help_url** | **String** | The module help URL. | [optional] |
| **description** | **String** | The module description. | [optional] |
| **is_primary** | **Boolean** | Specifies if the module is primary or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ModelModule.new(
  id: 00000000-0000-0000-0000-000000000000,
  app_name: files,
  title: Documents,
  link: https://example.com,
  icon_url: https://example.com/icon.svg,
  image_url: https://example.com/image.png,
  help_url: https://example.com/help,
  description: File management,
  is_primary: true
)
```
