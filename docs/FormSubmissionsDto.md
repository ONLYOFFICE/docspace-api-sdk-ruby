# DocspaceApiSdk::FormSubmissionsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**Array&lt;FormMetadata&gt;**](FormMetadata.md) | The form field metadata. | [optional] |
| **submissions** | [**Array&lt;FormResultsDto&gt;**](FormResultsDto.md) | All submissions. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FormSubmissionsDto.new(
  metadata: null,
  submissions: null
)
```
