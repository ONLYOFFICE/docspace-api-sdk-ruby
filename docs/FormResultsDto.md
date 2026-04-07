# DocspaceApiSdk::FormResultsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_on** | **Time** | The date and time when the form was created. | [optional] |
| **forms_data** | [**Array&lt;FormsItemData&gt;**](FormsItemData.md) | The list of forms data. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FormResultsDto.new(
  create_on: null,
  forms_data: [{"key":"field1","value":"Answer"}]
)
```
