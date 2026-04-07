# DocspaceApiSdk::SetPublicDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room template ID. |  |
| **public** | **Boolean** | Specifies whether the room template is public or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SetPublicDto.new(
  id: 1,
  public: true
)
```
