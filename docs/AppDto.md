# DocspaceApiSdk::AppDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The application identifier (stable slug). The client maps this to its title, description and icon. | [optional] |
| **enabled** | **Boolean** | Whether the application is enabled for the current tenant. | [optional] |
| **settings** | [**AppDtoSettings**](AppDtoSettings.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AppDto.new(
  id: ai-rooms,
  enabled: true,
  settings: null
)
```
