# DocspaceApiSdk::PermissionsConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **Boolean** | Defines if the document can be commented or not. | [optional] |
| **chat** | **Boolean** | Defines if the chat functionality is enabled in the document or not. | [optional] |
| **download** | **Boolean** | Defines if the document can be downloaded or only viewed or edited online. | [optional] |
| **edit** | **Boolean** | Defines if the document can be edited or only viewed. | [optional] |
| **fill_forms** | **Boolean** | Defines if the forms can be filled. | [optional] |
| **modify_filter** | **Boolean** | Defines if the filter can be applied globally (true) affecting all the other users,  or locally (false), i.e. for the current user only. | [optional] |
| **protect** | **Boolean** | Defines if the Protection tab on the toolbar and the Protect button in the left menu are displayedor hidden. | [optional] |
| **print** | **Boolean** | Defines if the document can be printed or not. | [optional] |
| **review** | **Boolean** | Defines if the document can be reviewed or not. | [optional] |
| **copy** | **Boolean** | Defines if the content can be copied to the clipboard or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::PermissionsConfig.new(
  comment: true,
  chat: true,
  download: true,
  edit: true,
  fill_forms: true,
  modify_filter: true,
  protect: true,
  print: true,
  review: true,
  copy: true
)
```
