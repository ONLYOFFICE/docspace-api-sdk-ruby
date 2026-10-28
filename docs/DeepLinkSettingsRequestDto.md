# DocspaceApiSdk::DeepLinkSettingsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **handling_mode** | [**DeepLinkHandlingMode**](DeepLinkHandlingMode.md) | Whether a link always opens in the browser, always in the native application, or asks the user each time. | [optional] |
| **last_modified** | **Time** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DeepLinkSettingsRequestDto.new(
  handling_mode: null,
  last_modified: 2026-01-01T10:00:00
)
```
