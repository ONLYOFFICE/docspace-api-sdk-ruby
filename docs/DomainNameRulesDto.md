# DocspaceApiSdk::DomainNameRulesDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **regex** | **String** | The pattern the portal name has to match. | [optional] |
| **min_length** | **Integer** | The shortest portal name accepted. | [optional] |
| **max_length** | **Integer** | The longest portal name accepted. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DomainNameRulesDto.new(
  regex: ^[a-z0-9]([a-z0-9-]){1,61}[a-z0-9]$,
  min_length: 6,
  max_length: 63
)
```
