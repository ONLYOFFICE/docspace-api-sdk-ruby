# DocspaceApiSdk::TemplatesConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image** | **String** | The absolute URL to the image for template. | [optional] |
| **title** | **String** | The template title that will be displayed in the Create New... menu option. | [optional] |
| **url** | **String** | The absolute URL to the document where it will be created and available after creation. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TemplatesConfig.new(
  image: https://portal.example.com/templates/template1.png,
  title: Blank Document,
  url: https://portal.example.com/editor/new?template=blank
)
```
