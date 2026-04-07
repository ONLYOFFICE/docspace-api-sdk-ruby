# DocspaceApiSdk::PasswordSettingsRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **min_length** | **Integer** | The minimum number of characters required for valid passwords. |  |
| **upper_case** | **Boolean** | Specifies whether the password should contain the uppercase letters or not. | [optional] |
| **digits** | **Boolean** | Specifies whether the password should contain the digits or not. | [optional] |
| **spec_symbols** | **Boolean** | Specifies whether the password should contain the special symbols or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::PasswordSettingsRequestsDto.new(
  min_length: 8,
  upper_case: true,
  digits: true,
  spec_symbols: true
)
```
