# DocspaceApiSdk::SubmitForm

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **visible** | **Boolean** | Specifies whether the Complete  & Submit button will be displayed or hidden on the top toolbar. | [optional] |
| **result_message** | **String** | A message displayed after forms are submitted. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SubmitForm.new(
  visible: true,
  result_message: Form submitted successfully
)
```
