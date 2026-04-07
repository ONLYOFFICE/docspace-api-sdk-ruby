# DocspaceApiSdk::FileDtoIntegerAllOfViewAccessibility

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_view** | **Boolean** |  | [optional] |
| **media_view** | **Boolean** |  | [optional] |
| **web_view** | **Boolean** |  | [optional] |
| **web_edit** | **Boolean** |  | [optional] |
| **web_review** | **Boolean** |  | [optional] |
| **web_custom_filter_editing** | **Boolean** |  | [optional] |
| **web_restricted_editing** | **Boolean** |  | [optional] |
| **web_comment** | **Boolean** |  | [optional] |
| **can_convert** | **Boolean** |  | [optional] |
| **must_convert** | **Boolean** |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileDtoIntegerAllOfViewAccessibility.new(
  image_view: null,
  media_view: null,
  web_view: null,
  web_edit: null,
  web_review: null,
  web_custom_filter_editing: null,
  web_restricted_editing: null,
  web_comment: null,
  can_convert: null,
  must_convert: null
)
```
