# DocspaceApiSdk::AiProfileMutationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | True when the profile was persisted. |  |
| **profile** | [**AiProfile**](AiProfile.md) | The persisted profile. Present on success. | [optional] |
| **error** | [**AiTErrorData**](AiTErrorData.md) | Why the profile was rejected - the name check or the provider credential check. Present on failure. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiProfileMutationResult.new(
  success: null,
  profile: null,
  error: null
)
```
