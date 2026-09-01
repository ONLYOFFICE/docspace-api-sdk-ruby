# DocspaceApiSdk::Contact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The contact type. | [optional] |
| **value** | **String** | The contact value. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::Contact.new(
  type: GTalk,
  value: my@gmail.com
)
```
