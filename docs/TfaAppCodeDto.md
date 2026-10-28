# DocspaceApiSdk::TfaAppCodeDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_used** | **Boolean** | Whether the code has already been spent. A spent code is kept in the list but is no longer accepted, so  count the entries where this is `false` to know how many fallbacks remain. | [optional] |
| **code** | **String** | The code itself, in the form it is typed at sign-in - six characters with the default configuration. It is  stored encrypted and decrypted for this answer, so this is the one place a caller can read it. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TfaAppCodeDto.new(
  is_used: true,
  code: 123456
)
```
