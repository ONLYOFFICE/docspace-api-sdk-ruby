# DocspaceApiSdk::MetadataTemplateDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The template ID. | [optional] |
| **name** | **String** | The template name. | [optional] |
| **visible** | **Boolean** | Specifies if the template is visible in the UI pickers. | [optional] |
| **create_by** | [**EmployeeDto**](EmployeeDto.md) | The user who created the template. A user who has since left the portal comes back as the lost user placeholder. | [optional] |
| **create_on** | [**ApiDateTime**](ApiDateTime.md) | The template creation date. | [optional] |
| **modified_by** | [**EmployeeDto**](EmployeeDto.md) | The user who changed the template itself last: its name or its visibility. The creator until somebody changes  it; a change of a field is recorded on the field, not here. | [optional] |
| **modified_on** | [**ApiDateTime**](ApiDateTime.md) | The date when the template was modified last. | [optional] |
| **fields** | [**Array&lt;MetadataFieldDto&gt;**](MetadataFieldDto.md) | The template metadata fields. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MetadataTemplateDto.new(
  id: 3,
  name: Contracts,
  visible: true,
  create_by: null,
  create_on: null,
  modified_by: null,
  modified_on: null,
  fields: [{id=9, templateId=3, name=Customer, type=0, order=0}]
)
```
