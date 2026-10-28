# DocspaceApiSdk::ValidationErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | Error type identifier | [optional] |
| **message** | **String** | General error message | [optional] |
| **errors** | [**Array&lt;FieldError&gt;**](FieldError.md) | List of field specific validation errors | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ValidationErrorResponse.new(
  error: ValidationError,
  message: Validation failed,
  errors: null
)
```
