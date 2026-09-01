# DocspaceApiSdk::AccountInfoDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** | The account provider. |  |
| **url** | **String** | The account URL. |  |
| **linked** | **Boolean** | Specifies if an account is linked with other profiles or not. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AccountInfoDto.new(
  provider: Google,
  url: https://example.com/account,
  linked: true
)
```
