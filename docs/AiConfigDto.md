# DocspaceApiSdk::AiConfigDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disabled** | **Boolean** | Whether the editor hides its AI tools. It is set when AI is turned off for the portal, and always for an  anonymous visitor of an external link. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiConfigDto.new(
  disabled: true
)
```
