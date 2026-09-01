# DocspaceApiSdk::DocumentConfigDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_type** | **String** | The file type of the document. | [optional] |
| **info** | [**InfoConfigDto**](InfoConfigDto.md) | The configuration information of the document. | [optional] |
| **is_linked_for_me** | **Boolean** | Specifies if the documnet is linked for current user. | [optional] |
| **key** | **String** | The document key. | [optional] |
| **permissions** | [**PermissionsConfig**](PermissionsConfig.md) | The document permissions. | [optional] |
| **shared_link_param** | **String** | The shared link parameter of the document. | [optional] |
| **shared_link_key** | **String** | The shared link key of the document. | [optional] |
| **reference_data** | [**FileReferenceData**](FileReferenceData.md) | The reference data of the document. | [optional] |
| **title** | **String** | The document title. | [optional] |
| **url** | **String** | The document url. | [optional] |
| **is_form** | **Boolean** | Indicates whether this is a form. | [optional] |
| **options** | [**Options**](Options.md) | The options of the document. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocumentConfigDto.new(
  file_type: docx,
  info: null,
  is_linked_for_me: false,
  key: doc-key-123-abc,
  permissions: null,
  shared_link_param: share-param-123,
  shared_link_key: share-key-abc,
  reference_data: null,
  title: Document Title,
  url: http://localhost/documents/doc.docx,
  is_form: false,
  options: null
)
```
