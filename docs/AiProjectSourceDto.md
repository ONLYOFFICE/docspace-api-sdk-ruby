# DocspaceApiSdk::AiProjectSourceDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the room. |  |
| **title** | **String** | Room title. |  |
| **logo** | [**LogoDto**](LogoDto.md) | Room logo. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiProjectSourceDto.new(
  id: 17001,
  title: Brand voice,
  logo: null
)
```
