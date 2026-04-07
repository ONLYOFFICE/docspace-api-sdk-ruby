# DocspaceApiSdk::EmbeddedConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **embed_url** | **String** | The absolute URL to the document serving as a source file for the document embedded into the web page. | [optional] |
| **save_url** | **String** | The absolute URL that will allow the document to be saved onto the user personal computer. | [optional][readonly] |
| **share_link_param** | **String** | The shared URL parameter. | [optional] |
| **share_url** | **String** | The absolute URL that will allow other users to share this document. | [optional] |
| **toolbar_docked** | **String** | The place for the embedded viewer toolbar, can be either top or bottom. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EmbeddedConfig.new(
  embed_url: https://portal.example.com/files/editor?action=embedded&share=abc123,
  save_url: https://portal.example.com/files/filehandler?action=download&share=abc123,
  share_link_param: &share=abc123,
  share_url: https://portal.example.com/files/editor?action=view&share=abc123,
  toolbar_docked: top
)
```
