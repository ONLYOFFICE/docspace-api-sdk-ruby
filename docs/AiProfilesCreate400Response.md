# DocspaceApiSdk::AiProfilesCreate400Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | True when the profile was persisted. |  |
| **profile** | [**AiProfile**](AiProfile.md) | The persisted profile. Present on success. | [optional] |
| **error** | **String** | The error message, ready to be shown to the caller. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiProfilesCreate400Response.new(
  success: true,
  profile: null,
  error: threadId required
)
```
