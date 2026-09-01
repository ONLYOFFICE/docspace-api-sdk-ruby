# DocspaceApiSdk::PasswordHasher

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **size** | **Integer** | The password hash size. | [optional][readonly] |
| **iterations** | **Integer** | The number of iterations to generate the ppassword hash. | [optional][readonly] |
| **salt** | **String** | The salt to generate the ppassword hash. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::PasswordHasher.new(
  size: 32,
  iterations: 1000,
  salt: random_salt_value
)
```
