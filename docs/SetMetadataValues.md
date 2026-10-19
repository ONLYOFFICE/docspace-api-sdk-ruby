# DocspaceApiSdk::SetMetadataValues

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **values** | [**Array&lt;MetadataValueRequest&gt;**](MetadataValueRequest.md) | The metadata field values. An empty value clears the field. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SetMetadataValues.new(
  values: [{fieldId=1, stringValue=ACME Corp}, {fieldId=2, numberValue=150000}]
)
```
