# DocspaceApiSdk::TenantDomainValidator

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **regex** | **String** | The regex string to validate a domain. | [optional][readonly] |
| **min_length** | **Integer** | The minimum length of the valid domain. | [optional][readonly] |
| **max_length** | **Integer** | The maximum length of the valid domain. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantDomainValidator.new(
  regex: ^[a-z0-9]([a-z0-9-]){1,61}[a-z0-9]$,
  min_length: 6,
  max_length: 63
)
```
