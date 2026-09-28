# DocspaceApiSdk::CultureSpecificExternalResources

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **admin_panel** | [**CultureSpecificExternalResource**](CultureSpecificExternalResource.md) | The link to the administration panel. It is returned only to the full administrators of a licensed (Enterprise) server (standalone) portal. | [optional] |
| **api** | [**CultureSpecificExternalResource**](CultureSpecificExternalResource.md) | The link to the product API. | [optional] |
| **common** | [**CultureSpecificExternalResource**](CultureSpecificExternalResource.md) | The link to the common product information. | [optional] |
| **forum** | [**CultureSpecificExternalResource**](CultureSpecificExternalResource.md) | The link to the forum. | [optional] |
| **helpcenter** | [**CultureSpecificExternalResource**](CultureSpecificExternalResource.md) | The link to the Help Center. | [optional] |
| **integrations** | [**CultureSpecificExternalResource**](CultureSpecificExternalResource.md) | The link to the product integrations. | [optional] |
| **site** | [**CultureSpecificExternalResource**](CultureSpecificExternalResource.md) | The link to the product website. | [optional] |
| **social_networks** | [**CultureSpecificExternalResource**](CultureSpecificExternalResource.md) | The link to the product social nerworks. | [optional] |
| **support** | [**CultureSpecificExternalResource**](CultureSpecificExternalResource.md) | The link to the product support. | [optional] |
| **videoguides** | [**CultureSpecificExternalResource**](CultureSpecificExternalResource.md) | The link to the video guides. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CultureSpecificExternalResources.new(
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
