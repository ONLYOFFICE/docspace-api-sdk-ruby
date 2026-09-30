# DocspaceApiSdk::FilesSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exts_image_previewed** | **Array&lt;String&gt;** | Images the portal can show in its own viewer. Anything outside the list has to be downloaded to be seen. | [optional] |
| **exts_media_previewed** | **Array&lt;String&gt;** | Audio and video the portal can play in its own player. | [optional] |
| **exts_web_previewed** | **Array&lt;String&gt;** | Documents the editor can open read-only. A format that is here but not in the edited list can be viewed and  not changed. | [optional] |
| **exts_web_edited** | **Array&lt;String&gt;** | Documents the editor can open for editing. Uploading a format outside this list and outside the convertible  list leaves a file that can only be downloaded. | [optional] |
| **exts_web_encrypt** | **Array&lt;String&gt;** | Documents that can be edited inside a private room, where the content is encrypted on the client. | [optional] |
| **exts_web_reviewed** | **Array&lt;String&gt;** | Documents that support the reviewing mode, so that granting review access to them is meaningful. | [optional] |
| **exts_web_custom_filter_editing** | **Array&lt;String&gt;** | Spreadsheets that support the custom filter mode, where a filter applied by one editor does not disturb the  others. | [optional] |
| **exts_web_restricted_editing** | **Array&lt;String&gt;** | Documents that can only be filled in or commented on rather than edited freely, whatever access the caller  holds. | [optional] |
| **exts_web_commented** | **Array&lt;String&gt;** | Documents that support comments, so that granting comment access to them is meaningful. | [optional] |
| **exts_web_template** | **Array&lt;String&gt;** | Documents the portal treats as templates to create new files from. | [optional] |
| **exts_must_convert** | **Array&lt;String&gt;** | Formats that cannot be edited as they are and are converted on upload or on first opening. Which target each  one has is in the convertible table below. | [optional] |
| **exts_convertible** | **Hash&lt;String, Array&lt;String&gt;&gt;** | The conversion map of the portal: for each source extension, the extensions it can be converted into. Use it  to fill the target format of a conversion request instead of guessing one. | [optional] |
| **exts_uploadable** | **Array&lt;String&gt;** | Formats the portal offers to create and upload as documents. It is not an upload filter: files of other  formats are stored as they are. | [optional] |
| **exts_archive** | **Array&lt;String&gt;** | Formats recognised as archives, which is what decides the archive icon and the offer to unpack. | [optional] |
| **exts_video** | **Array&lt;String&gt;** | Formats classified as video. The classification lists drive icons and the media filters of the listing  operations, and are wider than what the built-in player can show. | [optional] |
| **exts_audio** | **Array&lt;String&gt;** | Formats classified as audio. | [optional] |
| **exts_image** | **Array&lt;String&gt;** | Formats classified as images. | [optional] |
| **exts_spreadsheet** | **Array&lt;String&gt;** | Formats classified as spreadsheets. | [optional] |
| **exts_presentation** | **Array&lt;String&gt;** | Formats classified as presentations. | [optional] |
| **exts_document** | **Array&lt;String&gt;** | Formats classified as text documents. | [optional] |
| **exts_diagram** | **Array&lt;String&gt;** | Formats classified as diagrams. | [optional] |
| **internal_formats** | [**FilesSettingsDtoInternalFormats**](FilesSettingsDtoInternalFormats.md) |  | [optional] |
| **master_form_extension** | **String** | The extension of a fillable form template in this portal. It is configurable, so read it rather than assuming  the product default. | [optional] |
| **param_version** | **String** | The name of the query parameter that pins a document address to one version. Append it to the addresses below  instead of composing a version address by hand. | [optional] |
| **param_out_type** | **String** | The name of the query parameter that asks a download address for a converted copy in another format. | [optional] |
| **file_download_url_string** | **String** | The template of the address a file is downloaded from: substitute the file identifier for the `{0}`  placeholder. Add the version and output-type parameters named above for a particular version or format. | [optional] |
| **file_web_viewer_url_string** | **String** | The template of the address that opens a file in the viewer inside the portal, with `{0}` for the file  identifier. It is a portal-relative address, meant to be opened in a browser rather than called as an API. | [optional] |
| **file_web_viewer_external_url_string** | **String** | The same viewer address as an absolute one, for a message or a page outside the portal. | [optional] |
| **file_web_editor_url_string** | **String** | The template of the address that opens a file for editing inside the portal, with `{0}` for the file  identifier. Whether the session really becomes editable still depends on the access the caller holds. | [optional] |
| **file_web_editor_external_url_string** | **String** | The same editing address as an absolute one, for use outside the portal. | [optional] |
| **file_redirect_preview_url_string** | **String** | The template of the address that sends the browser on to whichever viewer or editor suits the file, with `{0}`  for the file identifier. Use it when the kind of the file is not known in advance. | [optional] |
| **file_thumbnail_url_string** | **String** | The template of the address a file thumbnail is fetched from, with `{0}` for the file identifier. A thumbnail  is built in the background, so the address can answer with nothing for a while after the file appears. | [optional] |
| **confirm_delete** | **Boolean** | Whether the caller asked to be prompted before a deletion. Written by `PUT api/2.0/files/changedeleteconfrim`. | [optional] |
| **enable_third_party** | **Boolean** | Whether this portal allows third-party storages to be connected at all. It is set portal-wide by an  administrator, so a member sees it as read-only. | [optional] |
| **external_share** | **Boolean** | Whether links that open an entry without a portal account may be created in this portal. Set portal-wide by an  administrator. | [optional] |
| **external_share_social_media** | **Boolean** | Whether the share-to-network buttons are offered next to an external link. It is reported as false whenever  external sharing itself is off. | [optional] |
| **store_original_files** | **Boolean** | Whether the caller's uploads keep the original file when the portal converts them. With false the conversion  replaces the uploaded file with a new version of it. | [optional] |
| **keep_new_file_name** | **Boolean** | Whether the caller asked for new documents to be created with the default name instead of being prompted for  one. | [optional] |
| **display_file_extension** | **Boolean** | Whether the caller asked to see extensions in file titles. Stored titles always carry the extension whatever  this says. | [optional] |
| **show_quick_actions** | **Boolean** | Specifies whether to display the quick action buttons. | [optional] |
| **convert_notify** | **Boolean** | Whether the caller is told about the result of a conversion. There is no operation in this document that  writes it. | [optional] |
| **hide_confirm_cancel_operation** | **Boolean** | Whether the prompt shown before a running operation is abandoned is hidden for the caller. | [optional] |
| **hide_confirm_convert_save** | **Boolean** | Whether the prompt that offers to keep a copy in the original format on conversion is hidden for the caller.  Once true it cannot be turned back through the API. | [optional] |
| **hide_confirm_convert_open** | **Boolean** | Whether the prompt that offers to open the conversion result is hidden for the caller. Once true it cannot be  turned back through the API. | [optional] |
| **hide_confirm_room_lifetime** | **Boolean** | Whether the warning shown before the lifetime settings of a room are changed is hidden for the caller. | [optional] |
| **default_order** | [**OrderBy**](OrderBy.md) | The ordering the listing operations fall back to when a request names none. It follows the last order the  caller asked a listing for, so it changes on its own as the account is used. | [optional] |
| **forcesave** | **Boolean** | Whether the editor writes a document back to storage while the session is still open. It is on for every  portal and cannot be switched off. | [optional] |
| **store_forcesave** | **Boolean** | Whether those intermediate saves are kept as separate versions. They are not, in any portal: they update the  current version instead. | [optional] |
| **recent_section** | **Boolean** | Whether the Recent section is offered to the caller among the section roots. | [optional] |
| **favorites_section** | **Boolean** | Whether the Favorites section is offered to the caller among the section roots. | [optional] |
| **templates_section** | **Boolean** | Whether the Templates section is offered to the caller among the section roots. | [optional] |
| **download_tar_gz** | **Boolean** | The archive format the caller's multi-item downloads are packed into: true for `.tar.gz`, false for `.zip`. | [optional] |
| **automatically_clean_up** | [**AutoCleanUpData**](AutoCleanUpData.md) | The trash auto-clearing setting of the caller, the same pair `GET api/2.0/files/settings/autocleanup` returns. | [optional] |
| **can_search_by_content** | **Boolean** | Whether documents in this portal can be searched by what is inside them and not only by title. It depends on  the full-text search service being configured and having indexed the portal. | [optional] |
| **default_sharing_access_rights** | **Array&lt;Integer&gt;** | The access rights the sharing dialog offers the caller by default. The portal normalises the set it stores, so  this can be shorter than what was last sent. | [optional] |
| **max_upload_thread_count** | **Integer** | How many upload requests the portal accepts from one account at a time. Sending more than this in parallel  gets the extra ones refused rather than queued. | [optional] |
| **chunk_upload_size** | **Integer** | The size in bytes of one chunk of a chunked upload. Split a large file exactly along this size: a chunk that  does not match is refused by the upload session. | [optional] |
| **open_editor_in_same_tab** | **Boolean** | Whether the caller asked for documents to open in the current browser tab. | [optional] |
| **organize_rooms_grouping** | **Boolean** | Whether the caller asked to see rooms arranged by the groups they belong to. | [optional] |
| **default_share_link_internal** | **Boolean** | The kind of external link this portal offers first: true for a link only its own accounts can open, false for  one anyone holding it can open. | [optional] |
| **external_share_apply_to_documents** | **Boolean** | Whether the external sharing restriction covers personal documents. It matters only while external sharing is  off. | [optional] |
| **external_share_apply_to_rooms** | **Boolean** | Whether the external sharing restriction covers rooms, including making a new one public. It matters only  while external sharing is off. | [optional] |
| **block_existing_links_on_restrict** | **Boolean** | Whether links created before the restriction stop opening as well, rather than only new ones being refused. | [optional] |
| **exts_files_vectorized** | **Array&lt;String&gt;** | Formats whose content can be indexed for the AI features of the portal. A file outside the list is left out of  that index. | [optional] |
| **max_vectorization_file_size** | **Integer** | The largest file size in bytes that is indexed for the AI features. A larger file is skipped even when its  format is listed above. | [optional] |

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
  master_form_extension: .pdf,
  param_version: version,
  param_out_type: outputtype,
  file_download_url_string: https://example.com/filehandler.ashx?action=download&fileid={0},
  file_web_viewer_url_string: /products/files/doceditor?fileid={0}&action=view,
  file_web_viewer_external_url_string: https://example.com/products/files/doceditor?fileid={0}&action=view,
  file_web_editor_url_string: /products/files/doceditor?fileid={0}&action=edit,
  file_web_editor_external_url_string: https://example.com/products/files/doceditor?fileid={0}&action=edit,
  file_redirect_preview_url_string: https://example.com/products/files/{0},
  file_thumbnail_url_string: https://example.com/filehandler.ashx?action=thumb&fileid={0},
  confirm_delete: true,
  enable_third_party: true,
  external_share: true,
  external_share_social_media: true,
  store_original_files: true,
  keep_new_file_name: false,
  display_file_extension: true,
  show_quick_actions: true,
  convert_notify: true,
  hide_confirm_cancel_operation: false,
  hide_confirm_convert_save: false,
  hide_confirm_convert_open: false,
  hide_confirm_room_lifetime: false,
  default_order: null,
  forcesave: true,
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
