# DocspaceApiSdk::MessageDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the message. | [optional] |
| **role** | [**Role**](Role.md) |  | [optional] |
| **contents** | [**Array&lt;MessageContentDto&gt;**](MessageContentDto.md) | The ordered collection of content blocks that make up the message body (text, tool calls, or attachments). | [optional] |
| **created_on** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MessageDto.new(
  id: 42,
  role: null,
  contents: null,
  created_on: null
)
```
