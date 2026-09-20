# DocspaceApiSdk::EmbeddedConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **embed_url** | **String** | The page to put into the frame. It is empty when the opening carries no external share key, since a framed  viewer cannot authenticate a portal member. | [optional] |
| **save_url** | **String** | Where the download button of the framed viewer leads. | [optional][readonly] |
| **share_link_param** | **String** | The query fragment carrying the external share key, ampersand included, out of which the addresses around it  are built. | [optional] |
| **share_url** | **String** | The address behind the share button of the framed viewer, the document opened full-screen for reading. It is  empty when the opening carries no external share key. | [optional] |
| **toolbar_docked** | **String** | Where the framed viewer puts its toolbar. The portal always asks for the top. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EmbeddedConfig.new(
  embed_url: https://portal.example.com/products/files/doceditor?action=embedded&share=HkQd9nT2,
  save_url: https://portal.example.com/filehandler.ashx?action=download&share=HkQd9nT2,
  share_link_param: &fileid=512&share=HkQd9nT2,
  share_url: https://portal.example.com/products/files/doceditor?action=view&share=HkQd9nT2,
  toolbar_docked: top
)
```
