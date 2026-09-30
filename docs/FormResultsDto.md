# DocspaceApiSdk::FormResultsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_on** | **Time** | When the portal recorded this copy, in UTC: the moment the filled copy was completed and its data indexed, not  the moment the form itself was made. | [optional] |
| **forms_data** | [**Array&lt;FormsItemData&gt;**](FormsItemData.md) | The values that were entered into this copy, one entry per field, preceded by an entry keyed `FormNumber` that  carries the number of the copy and is what the submissions are ordered by. Fields holding a picture or a  signature are left out of the record, so a field missing here was not necessarily left blank. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FormResultsDto.new(
  create_on: 2025-01-01T00:00:00,
  forms_data: [{key=field1, value=Answer}]
)
```
