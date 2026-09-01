# DocspaceApiSdk::PasswordSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **min_length** | **Integer** | The minimum number of characters required for valid passwords. |  |
| **upper_case** | **Boolean** | Specifies whether the password should contain the uppercase letters or not. |  |
| **digits** | **Boolean** | Specifies whether the password should contain the digits or not. |  |
| **spec_symbols** | **Boolean** | Specifies whether the password should contain the special symbols or not. |  |
| **allowed_characters_regex_str** | **String** | The allowed password characters in the regex string format. |  |
| **digits_regex_str** | **String** | The password digits in the regex string format. |  |
| **upper_case_regex_str** | **String** | The password uppercase letters in the regex string format. |  |
| **spec_symbols_regex_str** | **String** | The passaword special symbols in the regex string format. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::PasswordSettingsDto.new(
  min_length: 8,
  upper_case: true,
  digits: true,
  spec_symbols: false,
  allowed_characters_regex_str: ^[a-zA-Z0-9!@#$%^&*()]+$,
  digits_regex_str: (?=.*\\d),
  upper_case_regex_str: (?=.*[A-Z]),
  spec_symbols_regex_str: (?=.*[!@#$%^&*()])
)
```
