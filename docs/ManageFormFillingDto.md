# DocspaceApiSdk::ManageFormFillingDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **Integer** | The PDF form the action applies to. This is the value the operation reads, rather than the identifier in its  route, and the two are to be sent the same. |  |
| **action** | [**FormFillingManageAction**](FormFillingManageAction.md) | The action to apply. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ManageFormFillingDto.new(
  form_id: 1,
  action: null
)
```
