# DocspaceApiSdk::AnonymousConfigDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request** | **Boolean** | Whether the editors ask an anonymous participant for a display name before letting them in. It follows the  chat permission of the document, since a nameless participant cannot take part in one. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AnonymousConfigDto.new(
  request: false
)
```
