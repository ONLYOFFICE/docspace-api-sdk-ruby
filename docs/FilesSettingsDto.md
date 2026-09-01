# DocspaceApiSdk::FilesSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exts_image_previewed** | **Array&lt;String&gt;** | The list of extensions of the viewed images. | [optional] |
| **exts_media_previewed** | **Array&lt;String&gt;** | The list of extensions of the viewed media files. | [optional] |
| **exts_web_previewed** | **Array&lt;String&gt;** | The list of extensions of the viewed files. | [optional] |
| **exts_web_edited** | **Array&lt;String&gt;** | The list of extensions of the edited files. | [optional] |
| **exts_web_encrypt** | **Array&lt;String&gt;** | The list of extensions of the encrypted files. | [optional] |
| **exts_web_reviewed** | **Array&lt;String&gt;** | The list of extensions of the reviewed files. | [optional] |
| **exts_web_custom_filter_editing** | **Array&lt;String&gt;** | The list of extensions of the custom filter files. | [optional] |
| **exts_web_restricted_editing** | **Array&lt;String&gt;** | The list of extensions of the files that are restricted for editing. | [optional] |
| **exts_web_commented** | **Array&lt;String&gt;** | The list of extensions of the commented files. | [optional] |
| **exts_web_template** | **Array&lt;String&gt;** | The list of extensions of the template files. | [optional] |
| **exts_must_convert** | **Array&lt;String&gt;** | The list of extensions of the files that must be converted. | [optional] |
| **exts_convertible** | **Hash&lt;String, Array&lt;String&gt;&gt;** | The list of the convertible extensions. | [optional] |
| **exts_uploadable** | **Array&lt;String&gt;** | The list of the uploadable extensions. | [optional] |
| **exts_archive** | **Array&lt;String&gt;** | The list of extensions of the archive files. | [optional] |
| **exts_video** | **Array&lt;String&gt;** | The list of the video extensions. | [optional] |
| **exts_audio** | **Array&lt;String&gt;** | The list of the audio extensions. | [optional] |
| **exts_image** | **Array&lt;String&gt;** | The list of the image extensions. | [optional] |
| **exts_spreadsheet** | **Array&lt;String&gt;** | The list of the spreadsheet extensions. | [optional] |
| **exts_presentation** | **Array&lt;String&gt;** | The list of the presentation extensions. | [optional] |
| **exts_document** | **Array&lt;String&gt;** | The list of the text document extensions. | [optional] |
| **exts_diagram** | **Array&lt;String&gt;** | The list of the diagram extensions. | [optional] |
| **internal_formats** | [**FilesSettingsDtoInternalFormats**](FilesSettingsDtoInternalFormats.md) |  | [optional] |
| **master_form_extension** | **String** | The master form extension. | [optional] |
| **param_version** | **String** | The URL parameter which specifies the file version. | [optional] |
| **param_out_type** | **String** | The URL parameter which specifies the output type of the converted file. | [optional] |
| **file_download_url_string** | **String** | The URL to download a file. | [optional] |
| **file_web_viewer_url_string** | **String** | The URL to the file web viewer. | [optional] |
| **file_web_viewer_external_url_string** | **String** | The external URL to the file web viewer. | [optional] |
| **file_web_editor_url_string** | **String** | The URL to the file web editor. | [optional] |
| **file_web_editor_external_url_string** | **String** | The external URL to the file web editor. | [optional] |
| **file_redirect_preview_url_string** | **String** | The redirect URL to the file viewer. | [optional] |
| **file_thumbnail_url_string** | **String** | The URL to the file thumbnail. | [optional] |
| **confirm_delete** | **Boolean** | Specifies whether to confirm the file deletion or not. | [optional] |
| **enable_third_party** | **Boolean** | Specifies whether to allow users to connect the third-party storages. | [optional] |
| **external_share** | **Boolean** | Specifies whether to enable sharing external links to the files. | [optional] |
| **external_share_social_media** | **Boolean** | Specifies whether to enable sharing files on social media. | [optional] |
| **store_original_files** | **Boolean** | Specifies whether to enable storing original files. | [optional] |
| **keep_new_file_name** | **Boolean** | Specifies whether to keep the new file name. | [optional] |
| **display_file_extension** | **Boolean** | Specifies whether to display the file extension. | [optional] |
| **convert_notify** | **Boolean** | Specifies whether to display the conversion notification. | [optional] |
| **hide_confirm_cancel_operation** | **Boolean** | Specifies whether to hide the confirmation dialog for the cancel operation. | [optional] |
| **hide_confirm_convert_save** | **Boolean** | Specifies whether to hide the confirmation dialog  for saving the file copy in the original format when converting a file. | [optional] |
| **hide_confirm_convert_open** | **Boolean** | Specifies whether to hide the confirmation dialog  for opening the conversion result. | [optional] |
| **hide_confirm_room_lifetime** | **Boolean** | Specifies whether to hide the confirmation dialog about the file lifetime in the room. | [optional] |
| **default_order** | [**OrderBy**](OrderBy.md) | The default order of files. | [optional] |
| **forcesave** | **Boolean** | Specifies whether to forcesave the files or not. | [optional] |
| **store_forcesave** | **Boolean** | Specifies whether to store the forcesaved file versions or not. | [optional] |
| **recent_section** | **Boolean** | Specifies if the Recent section is displayed or not. | [optional] |
| **favorites_section** | **Boolean** | Specifies if the Favorites section is displayed or not. | [optional] |
| **templates_section** | **Boolean** | Specifies if the Templates section is displayed or not. | [optional] |
| **download_tar_gz** | **Boolean** | Specifies whether to download the .tar.gz files or not. | [optional] |
| **automatically_clean_up** | [**AutoCleanUpData**](AutoCleanUpData.md) | The auto-clearing setting parameters. | [optional] |
| **can_search_by_content** | **Boolean** | Specifies whether the file can be searched by its content or not. | [optional] |
| **default_sharing_access_rights** | **Array&lt;Integer&gt;** | The default access rights in sharing settings. | [optional] |
| **max_upload_thread_count** | **Integer** | The maximum number of upload threads. | [optional] |
| **chunk_upload_size** | **Integer** | The size of a large file that is uploaded in chunks. | [optional] |
| **open_editor_in_same_tab** | **Boolean** | Specifies whether to open the editor in the same tab or not. | [optional] |
| **organize_rooms_grouping** | **Boolean** | Specifies whether the grouping of rooms is enabled or not. | [optional] |
| **default_share_link_internal** | **Boolean** | Specifies the default sharing link type: true = DocSpace users only (internal), false = Anyone with the link. | [optional] |
| **external_share_apply_to_documents** | **Boolean** | When external sharing is restricted, specifies whether the restriction applies to the My Documents section. | [optional] |
| **external_share_apply_to_rooms** | **Boolean** | When external sharing is restricted, specifies whether the restriction applies to the Rooms section. | [optional] |
| **block_existing_links_on_restrict** | **Boolean** | When external sharing is restricted, specifies whether existing public links are blocked immediately. | [optional] |
| **exts_files_vectorized** | **Array&lt;String&gt;** | List of extensions available for vectorization | [optional] |
| **max_vectorization_file_size** | **Integer** | The maximum file size for vectorization | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FilesSettingsDto.new(
  exts_image_previewed: [.bmp, .gif, .jpeg, .jpg, .png, .svg],
  exts_media_previewed: [.mp4, .webm, .mp3, .ogg],
  exts_web_previewed: [.docx, .xlsx, .pptx, .pdf],
  exts_web_edited: [.docx, .xlsx, .pptx],
  exts_web_encrypt: [.docx, .xlsx, .pptx],
  exts_web_reviewed: [.docx],
  exts_web_custom_filter_editing: [.xlsx],
  exts_web_restricted_editing: [.pdf],
  exts_web_commented: [.docx],
  exts_web_template: [.docx, .xlsx, .pptx],
  exts_must_convert: [.doc, .xls, .ppt],
  exts_convertible: {.doc=[.docx, .pdf], .xls=[.xlsx, .pdf]},
  exts_uploadable: [.docx, .xlsx, .pdf],
  exts_archive: [.zip, .rar, .7z],
  exts_video: [.mp4, .webm, .avi],
  exts_audio: [.mp3, .ogg, .wav],
  exts_image: [.png, .jpg, .gif],
  exts_spreadsheet: [.xlsx, .xls, .ods],
  exts_presentation: [.pptx, .ppt, .odp],
  exts_document: [.docx, .doc, .odt],
  exts_diagram: [.vsdx],
  internal_formats: null,
  master_form_extension: .docxf,
  param_version: ver,
  param_out_type: otype,
  file_download_url_string: https://example.com/products/files/httphandlers/filehandler.ashx?action=download&fileid={0},
  file_web_viewer_url_string: /products/files/doceditor?fileid={0}&action=view,
  file_web_viewer_external_url_string: https://example.com/products/files/doceditor?fileid={0}&action=view,
  file_web_editor_url_string: /products/files/doceditor?fileid={0}&action=edit,
  file_web_editor_external_url_string: https://example.com/products/files/doceditor?fileid={0}&action=edit,
  file_redirect_preview_url_string: https://example.com/products/files/{0},
  file_thumbnail_url_string: https://example.com/products/files/httphandlers/filehandler.ashx?action=thumb&fileid={0},
  confirm_delete: true,
  enable_third_party: true,
  external_share: true,
  external_share_social_media: true,
  store_original_files: true,
  keep_new_file_name: false,
  display_file_extension: true,
  convert_notify: true,
  hide_confirm_cancel_operation: false,
  hide_confirm_convert_save: false,
  hide_confirm_convert_open: false,
  hide_confirm_room_lifetime: false,
  default_order: null,
  forcesave: false,
  store_forcesave: false,
  recent_section: true,
  favorites_section: true,
  templates_section: true,
  download_tar_gz: true,
  automatically_clean_up: null,
  can_search_by_content: true,
  default_sharing_access_rights: [1, 2],
  max_upload_thread_count: 10,
  chunk_upload_size: 10485760,
  open_editor_in_same_tab: false,
  organize_rooms_grouping: true,
  default_share_link_internal: false,
  external_share_apply_to_documents: true,
  external_share_apply_to_rooms: true,
  block_existing_links_on_restrict: true,
  exts_files_vectorized: [.docx, .pdf, .txt],
  max_vectorization_file_size: 5242880
)
```
