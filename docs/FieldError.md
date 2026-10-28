# DocspaceApiSdk::FieldError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** | The name of the field that failed validation | [optional] |
| **code** | **String** | Error code for localization purposes | [optional] |
| **message** | **String** | Human readable error message | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FieldError.new(
  field: policy_url,
  code: InvalidPolicyUrl,
  message: policy url is expected to be passed as url
)
```
