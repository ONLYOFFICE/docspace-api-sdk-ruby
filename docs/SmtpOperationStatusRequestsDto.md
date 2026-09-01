# DocspaceApiSdk::SmtpOperationStatusRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **completed** | **Boolean** | Specifies whether the SMTP operation has finished processing. | [optional] |
| **id** | **String** | The unique identifier for tracking the SMTP operation. | [optional] |
| **error** | **String** | The error message if the SMTP operation encountered issues. | [optional] |
| **status** | **String** | The current state of the SMTP operation. | [optional] |
| **percents** | **Integer** | The progress indicator showing completion percentage of the operation. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SmtpOperationStatusRequestsDto.new(
  completed: true,
  id: smtp-op-123,
  error: SMTP connection failed.,
  status: Completed,
  percents: 1
)
```
