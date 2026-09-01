# DocspaceApiSdk::FormGalleryDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** | The form gallery path. |  |
| **domain** | **String** | The form gallery domain. |  |
| **ext** | **String** | The form gallery extension. |  |
| **upload_path** | **String** | The form gallery upload path. |  |
| **upload_domain** | **String** | The form gallery upload domain. |  |
| **upload_ext** | **String** | The form gallery upload extension. |  |
| **upload_dashboard** | **String** | The form gallery upload dashboard. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FormGalleryDto.new(
  path: /forms/templates,
  domain: https://forms.example.com,
  ext: .docxf,
  upload_path: /forms/upload,
  upload_domain: https://upload.forms.example.com,
  upload_ext: .docxf,
  upload_dashboard: /dashboard/forms
)
```
