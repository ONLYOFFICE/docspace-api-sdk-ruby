# DocspaceApiSdk::PasswordHashSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **size** | **Integer** | The length of the hash, in bytes. | [optional] |
| **iterations** | **Integer** | The number of PBKDF2 iterations. | [optional] |
| **salt** | **String** | The salt the installation hashes passwords with. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::PasswordHashSettingsDto.new(
  size: 32,
  iterations: 100000,
  salt: random_salt_value
)
```
