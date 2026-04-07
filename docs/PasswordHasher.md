# DocspaceApiSdk::PasswordHasher

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **size** | **Integer** |  | [optional][readonly] |
| **iterations** | **Integer** |  | [optional][readonly] |
| **salt** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::PasswordHasher.new(
  size: null,
  iterations: null,
  salt: null
)
```
