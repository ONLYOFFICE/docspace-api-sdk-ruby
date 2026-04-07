# DocspaceApiSdk::DeepLinkDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **android_package_name** | **String** | The Android package name. |  |
| **url** | **String** | The deep link URL. |  |
| **ios_package_id** | **String** | The deep link IOS package ID. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DeepLinkDto.new(
  android_package_name: com.example.docspace,
  url: https://example.com/deeplink,
  ios_package_id: com.example.docspace
)
```
