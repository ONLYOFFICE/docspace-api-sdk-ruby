# DocspaceApiSdk::ExternalResourcesDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **admin_panel** | [**ExternalResourceDto**](ExternalResourceDto.md) | The link to the administration panel. It is returned only to the full administrators of a licensed (Enterprise) server (standalone) portal. | [optional] |
| **api** | [**ExternalResourceDto**](ExternalResourceDto.md) | The link to the product API. | [optional] |
| **common** | [**ExternalResourceDto**](ExternalResourceDto.md) | The link to the common product information. | [optional] |
| **forum** | [**ExternalResourceDto**](ExternalResourceDto.md) | The link to the forum. | [optional] |
| **helpcenter** | [**ExternalResourceDto**](ExternalResourceDto.md) | The link to the Help Center. | [optional] |
| **integrations** | [**ExternalResourceDto**](ExternalResourceDto.md) | The link to the product integrations. | [optional] |
| **site** | [**ExternalResourceDto**](ExternalResourceDto.md) | The link to the product website. | [optional] |
| **social_networks** | [**ExternalResourceDto**](ExternalResourceDto.md) | The link to the product social nerworks. | [optional] |
| **support** | [**ExternalResourceDto**](ExternalResourceDto.md) | The link to the product support. | [optional] |
| **videoguides** | [**ExternalResourceDto**](ExternalResourceDto.md) | The link to the video guides. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ExternalResourcesDto.new(
  admin_panel: null,
  api: null,
  common: null,
  forum: null,
  helpcenter: null,
  integrations: null,
  site: null,
  social_networks: null,
  support: null,
  videoguides: null
)
```
