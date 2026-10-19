# DocspaceApiSdk::DocsCloudConfigRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_name** | **String** | The tenant name. | [optional] |
| **security** | [**DocsCloudSecurityConfigRequest**](DocsCloudSecurityConfigRequest.md) | The security configuration. | [optional] |
| **server** | [**DocsCloudServerConfigRequest**](DocsCloudServerConfigRequest.md) | The server configuration. | [optional] |
| **wopi** | [**DocsCloudWopiConfigRequest**](DocsCloudWopiConfigRequest.md) | The WOPI configuration. | [optional] |
| **ip_filter** | [**DocsCloudIpFilterConfigRequest**](DocsCloudIpFilterConfigRequest.md) | The IP filter configuration. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudConfigRequestDto.new(
  tenant_name: My Portal,
  security: null,
  server: null,
  wopi: null,
  ip_filter: null
)
```
