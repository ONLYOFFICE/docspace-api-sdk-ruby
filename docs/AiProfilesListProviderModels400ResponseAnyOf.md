# DocspaceApiSdk::AiProfilesListProviderModels400ResponseAnyOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | The error message, ready to be shown to the caller. |  |
| **field** | **String** | Name of the request field that was missing or rejected. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiProfilesListProviderModels400ResponseAnyOf.new(
  error: providerType required,
  field: providerType
)
```
