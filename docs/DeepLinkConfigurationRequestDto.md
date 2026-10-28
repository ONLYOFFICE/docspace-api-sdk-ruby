# DocspaceApiSdk::DeepLinkConfigurationRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deep_link_settings** | [**DeepLinkSettingsRequestDto**](DeepLinkSettingsRequestDto.md) | The deep link configuration to store. Only its `handlingMode` is read - whether a link always opens in the  browser, always in the native application, or asks the user each time - and a mode outside the defined set is  refused with 400 before anything is stored. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DeepLinkConfigurationRequestDto.new(
  deep_link_settings: null
)
```
