# DocspaceApiSdk::AiToolsListSystemTools200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **groups** | **Hash&lt;String, Array&lt;AiTMCPItem&gt;&gt;** | Tools by server name, covering both the host-configured system servers and the custom MCP servers registered for this scope. |  |
| **errors** | **Hash&lt;String, String&gt;** | Why a registered custom server could not be reached, keyed by server name. A server that answered is absent from this map. |  |
| **system** | **Array&lt;String&gt;** | Names of the host-configured system servers among the keys of `groups`; everything else there was registered as a custom server. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiToolsListSystemTools200Response.new(
  groups: null,
  errors: null,
  system: null
)
```
