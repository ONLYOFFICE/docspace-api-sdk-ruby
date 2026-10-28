# DocspaceApiSdk::AccountInfoDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** | The name of the identity provider, in lowercase, as every other operation of this group expects it: `google`,  `zoom`, `linkedin`, `facebook`, `twitter`, `microsoft`, `appleid`, `weixin` or `nextcloud`. |  |
| **url** | **String** | The URL that starts the login with this provider. Open it as it is - it already carries the provider and the  popup or redirect mode the request asked for. |  |
| **linked** | **Boolean** | Whether this provider is already linked to the calling profile. It is always false for an anonymous caller,  because there is no profile to compare against. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AccountInfoDto.new(
  provider: google,
  url: /login.ashx?auth=google&mode=popup&callback=onAuthCallback,
  linked: true
)
```
