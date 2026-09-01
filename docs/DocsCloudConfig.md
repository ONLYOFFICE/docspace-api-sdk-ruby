# DocspaceApiSdk::DocsCloudConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_name** | **String** | The tenant name. | [optional] |
| **security** | [**DocsCloudSecurityConfig**](DocsCloudSecurityConfig.md) | The security configuration. | [optional] |
| **server** | [**DocsCloudServerConfig**](DocsCloudServerConfig.md) | The server configuration. | [optional] |
| **wopi** | [**DocsCloudWopiConfig**](DocsCloudWopiConfig.md) | The WOPI configuration. | [optional] |
| **ip_filter** | [**DocsCloudIpFilterConfig**](DocsCloudIpFilterConfig.md) | The IP filter configuration. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudConfig.new(
  tenant_name: My Portal,
  security: null,
  server: null,
  wopi: null,
  ip_filter: null
)
```
