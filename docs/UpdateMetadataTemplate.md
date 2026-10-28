# DocspaceApiSdk::UpdateMetadataTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The new template name. | [optional] |
| **visible** | **Boolean** | Specifies if the template is visible in the UI pickers. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateMetadataTemplate.new(
  name: Contracts,
  visible: true
)
```
