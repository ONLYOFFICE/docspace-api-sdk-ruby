# DocspaceApiSdk::AiVectorizationStartTask200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | Envelope field from the internal service; 0 for this operation. |  |
| **status** | **Integer** | Envelope status flag from the internal service. |  |
| **status_code** | **Integer** | HTTP status the internal service answered with. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiVectorizationStartTask200Response.new(
  count: 0,
  status: 0,
  status_code: 200
)
```
