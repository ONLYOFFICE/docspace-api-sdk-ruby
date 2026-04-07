# DocspaceApiSdk::OwnerChangeInstructionsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** | The owner change instructions status. | [optional] |
| **message** | **String** | The owner change instructions message. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::OwnerChangeInstructionsDto.new(
  status: 1,
  message: Ownership transferred successfully
)
```
