# DocspaceApiSdk::FormsItemDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The name of the field as it is written in the form; send it back as `formsItemKey` to keep only              the completed copies whose field of that name holds a value.              <example>first_name</example> | [optional] |
| **type** | **String** | The kind of value the field holds, a text box or a checkbox for instance; send it back as              `formsItemType` beside the key.              <example>text</example> | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FormsItemDto.new(
  key: null,
  type: null
)
```
