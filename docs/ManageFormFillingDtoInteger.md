# DocspaceApiSdk::ManageFormFillingDtoInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **Integer** | The ID of the form to manage. |  |
| **action** | [**FormFillingManageAction**](FormFillingManageAction.md) | The action to perform on the form. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ManageFormFillingDtoInteger.new(
  form_id: 1,
  action: null
)
```
