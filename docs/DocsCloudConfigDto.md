# DocspaceApiSdk::DocsCloudConfigDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_name** | **String** | The tenant name. | [optional] |
| **security** | [**DocsCloudSecurityConfigDto**](DocsCloudSecurityConfigDto.md) | The security configuration. | [optional] |
| **server** | [**DocsCloudServerConfigDto**](DocsCloudServerConfigDto.md) | The server configuration. | [optional] |
| **wopi** | [**DocsCloudWopiConfigDto**](DocsCloudWopiConfigDto.md) | The WOPI configuration. | [optional] |
| **ip_filter** | [**DocsCloudIpFilterConfigDto**](DocsCloudIpFilterConfigDto.md) | The IP filter configuration. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudConfigDto.new(
  tenant_name: My Portal,
  security: null,
  server: null,
  wopi: null,
  ip_filter: null
)
```
