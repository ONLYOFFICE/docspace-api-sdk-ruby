# DocspaceApiSdk::ChatDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the AI chat session. | [optional] |
| **title** | **String** | The display title of the chat session. | [optional] |
| **created_on** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **modified_on** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **created_by** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ChatDto.new(
  id: 00000000-0000-0000-0000-000000000000,
  title: Project discussion,
  created_on: null,
  modified_on: null,
  created_by: null
)
```
