# DocspaceApiSdk::FillingFormResultDtoInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_number** | **Integer** | The filling form number. |  |
| **completed_form** | [**FileDtoInteger**](FileDtoInteger.md) |  | [optional] |
| **original_form** | [**FileDtoInteger**](FileDtoInteger.md) |  | [optional] |
| **manager** | [**EmployeeFullDto**](EmployeeFullDto.md) |  | [optional] |
| **room_id** | **Integer** | The room ID where filling the form. |  |
| **is_room_member** | **Boolean** | Specifies if the manager who fills the form is a room member or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FillingFormResultDtoInteger.new(
  form_number: 1,
  completed_form: null,
  original_form: null,
  manager: null,
  room_id: 123,
  is_room_member: true
)
```
