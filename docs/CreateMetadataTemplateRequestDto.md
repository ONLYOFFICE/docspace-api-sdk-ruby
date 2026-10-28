# DocspaceApiSdk::CreateMetadataTemplateRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The template name. |  |
| **visible** | **Boolean** | Specifies if the template is visible in the UI pickers. | [optional] |
| **fields** | [**Array&lt;MetadataFieldRequest&gt;**](MetadataFieldRequest.md) | The template metadata fields. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CreateMetadataTemplateRequestDto.new(
  name: Contracts,
  visible: true,
  fields: [{name=Contract number, type=0}, {name=Signed on, type=1}]
)
```
