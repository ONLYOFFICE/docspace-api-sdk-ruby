# DocspaceApiSdk::DeepLinkDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **android_package_name** | **String** | The package name to look for on Android, and to build a store link from when the application is missing.  All three fields are empty strings on an installation that ships no mobile application, which is the  signal to keep opening links in the browser. |  |
| **url** | **String** | The address the client redirects a portal link through so that the application can claim it. It is the  installation's own deep-link host, not a link to any particular document. |  |
| **ios_package_id** | **String** | The bundle identifier to look for on iOS, used the same way as `androidPackageName`. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DeepLinkDto.new(
  android_package_name: com.example.docspace,
  url: https://example.com/deeplink,
  ios_package_id: com.example.docspace
)
```
