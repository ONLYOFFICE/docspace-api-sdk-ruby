# DocspaceApiSdk::MetadataMatchDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | The ID of the metadata template the matching field belongs to. Null for a custom field, which belongs to no  template the API shows. | [optional] |
| **field_id** | **Integer** | The ID of the matching template field. Null for a custom field, which is addressed by its name alone. | [optional] |
| **field_name** | **String** | The name of the matching field: the template field or the custom field as it is shown in the entry metadata. | [optional] |
| **value** | **String** | The stored value that holds the searched text, as it was written, not only the matching part of it. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MetadataMatchDto.new(
  template_id: 3,
  field_id: 12,
  field_name: Client,
  value: ACME Corporation
)
```
