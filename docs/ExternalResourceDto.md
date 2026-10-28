# DocspaceApiSdk::ExternalResourceDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | The external resource domain. | [optional] |
| **entries** | **Hash&lt;String, String&gt;** | The external resource entries. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ExternalResourceDto.new(
  domain: example.com,
  entries: {welcomeMessage=Welcome, logoutButton=Log out}
)
```
