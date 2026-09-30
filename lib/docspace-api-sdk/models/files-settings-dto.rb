# (c) Copyright Ascensio System SIA 2026
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


require 'date'
require 'time'

module DocspaceApiSdk
  # Everything a client needs to work with documents in this portal: the format tables, the address templates, the  upload limits, the portal-wide switches and the preferences of the calling account.
  class FilesSettingsDto < ApiModelBase
    # Images the portal can show in its own viewer. Anything outside the list has to be downloaded to be seen.
    attr_accessor :exts_image_previewed

    # Audio and video the portal can play in its own player.
    attr_accessor :exts_media_previewed

    # Documents the editor can open read-only. A format that is here but not in the edited list can be viewed and  not changed.
    attr_accessor :exts_web_previewed

    # Documents the editor can open for editing. Uploading a format outside this list and outside the convertible  list leaves a file that can only be downloaded.
    attr_accessor :exts_web_edited

    # Documents that can be edited inside a private room, where the content is encrypted on the client.
    attr_accessor :exts_web_encrypt

    # Documents that support the reviewing mode, so that granting review access to them is meaningful.
    attr_accessor :exts_web_reviewed

    # Spreadsheets that support the custom filter mode, where a filter applied by one editor does not disturb the  others.
    attr_accessor :exts_web_custom_filter_editing

    # Documents that can only be filled in or commented on rather than edited freely, whatever access the caller  holds.
    attr_accessor :exts_web_restricted_editing

    # Documents that support comments, so that granting comment access to them is meaningful.
    attr_accessor :exts_web_commented

    # Documents the portal treats as templates to create new files from.
    attr_accessor :exts_web_template

    # Formats that cannot be edited as they are and are converted on upload or on first opening. Which target each  one has is in the convertible table below.
    attr_accessor :exts_must_convert

    # The conversion map of the portal: for each source extension, the extensions it can be converted into. Use it  to fill the target format of a conversion request instead of guessing one.
    attr_accessor :exts_convertible

    # Formats the portal offers to create and upload as documents. It is not an upload filter: files of other  formats are stored as they are.
    attr_accessor :exts_uploadable

    # Formats recognised as archives, which is what decides the archive icon and the offer to unpack.
    attr_accessor :exts_archive

    # Formats classified as video. The classification lists drive icons and the media filters of the listing  operations, and are wider than what the built-in player can show.
    attr_accessor :exts_video

    # Formats classified as audio.
    attr_accessor :exts_audio

    # Formats classified as images.
    attr_accessor :exts_image

    # Formats classified as spreadsheets.
    attr_accessor :exts_spreadsheet

    # Formats classified as presentations.
    attr_accessor :exts_presentation

    # Formats classified as text documents.
    attr_accessor :exts_document

    # Formats classified as diagrams.
    attr_accessor :exts_diagram

    attr_accessor :internal_formats

    # The extension of a fillable form template in this portal. It is configurable, so read it rather than assuming  the product default.
    attr_accessor :master_form_extension

    # The name of the query parameter that pins a document address to one version. Append it to the addresses below  instead of composing a version address by hand.
    attr_accessor :param_version

    # The name of the query parameter that asks a download address for a converted copy in another format.
    attr_accessor :param_out_type

    # The template of the address a file is downloaded from: substitute the file identifier for the `{0}`  placeholder. Add the version and output-type parameters named above for a particular version or format.
    attr_accessor :file_download_url_string

    # The template of the address that opens a file in the viewer inside the portal, with `{0}` for the file  identifier. It is a portal-relative address, meant to be opened in a browser rather than called as an API.
    attr_accessor :file_web_viewer_url_string

    # The same viewer address as an absolute one, for a message or a page outside the portal.
    attr_accessor :file_web_viewer_external_url_string

    # The template of the address that opens a file for editing inside the portal, with `{0}` for the file  identifier. Whether the session really becomes editable still depends on the access the caller holds.
    attr_accessor :file_web_editor_url_string

    # The same editing address as an absolute one, for use outside the portal.
    attr_accessor :file_web_editor_external_url_string

    # The template of the address that sends the browser on to whichever viewer or editor suits the file, with `{0}`  for the file identifier. Use it when the kind of the file is not known in advance.
    attr_accessor :file_redirect_preview_url_string

    # The template of the address a file thumbnail is fetched from, with `{0}` for the file identifier. A thumbnail  is built in the background, so the address can answer with nothing for a while after the file appears.
    attr_accessor :file_thumbnail_url_string

    # Whether the caller asked to be prompted before a deletion. Written by `PUT api/2.0/files/changedeleteconfrim`.
    attr_accessor :confirm_delete

    # Whether this portal allows third-party storages to be connected at all. It is set portal-wide by an  administrator, so a member sees it as read-only.
    attr_accessor :enable_third_party

    # Whether links that open an entry without a portal account may be created in this portal. Set portal-wide by an  administrator.
    attr_accessor :external_share

    # Whether the share-to-network buttons are offered next to an external link. It is reported as false whenever  external sharing itself is off.
    attr_accessor :external_share_social_media

    # Whether the caller's uploads keep the original file when the portal converts them. With false the conversion  replaces the uploaded file with a new version of it.
    attr_accessor :store_original_files

    # Whether the caller asked for new documents to be created with the default name instead of being prompted for  one.
    attr_accessor :keep_new_file_name

    # Whether the caller asked to see extensions in file titles. Stored titles always carry the extension whatever  this says.
    attr_accessor :display_file_extension

    # Specifies whether to display the quick action buttons.
    attr_accessor :show_quick_actions

    # Whether the caller is told about the result of a conversion. There is no operation in this document that  writes it.
    attr_accessor :convert_notify

    # Whether the prompt shown before a running operation is abandoned is hidden for the caller.
    attr_accessor :hide_confirm_cancel_operation

    # Whether the prompt that offers to keep a copy in the original format on conversion is hidden for the caller.  Once true it cannot be turned back through the API.
    attr_accessor :hide_confirm_convert_save

    # Whether the prompt that offers to open the conversion result is hidden for the caller. Once true it cannot be  turned back through the API.
    attr_accessor :hide_confirm_convert_open

    # Whether the warning shown before the lifetime settings of a room are changed is hidden for the caller.
    attr_accessor :hide_confirm_room_lifetime

    # The ordering the listing operations fall back to when a request names none. It follows the last order the  caller asked a listing for, so it changes on its own as the account is used.
    attr_accessor :default_order

    # Whether the editor writes a document back to storage while the session is still open. It is on for every  portal and cannot be switched off.
    attr_accessor :forcesave

    # Whether those intermediate saves are kept as separate versions. They are not, in any portal: they update the  current version instead.
    attr_accessor :store_forcesave

    # Whether the Recent section is offered to the caller among the section roots.
    attr_accessor :recent_section

    # Whether the Favorites section is offered to the caller among the section roots.
    attr_accessor :favorites_section

    # Whether the Templates section is offered to the caller among the section roots.
    attr_accessor :templates_section

    # The archive format the caller's multi-item downloads are packed into: true for `.tar.gz`, false for `.zip`.
    attr_accessor :download_tar_gz

    # The trash auto-clearing setting of the caller, the same pair `GET api/2.0/files/settings/autocleanup` returns.
    attr_accessor :automatically_clean_up

    # Whether documents in this portal can be searched by what is inside them and not only by title. It depends on  the full-text search service being configured and having indexed the portal.
    attr_accessor :can_search_by_content

    # The access rights the sharing dialog offers the caller by default. The portal normalises the set it stores, so  this can be shorter than what was last sent.
    attr_accessor :default_sharing_access_rights

    # How many upload requests the portal accepts from one account at a time. Sending more than this in parallel  gets the extra ones refused rather than queued.
    attr_accessor :max_upload_thread_count

    # The size in bytes of one chunk of a chunked upload. Split a large file exactly along this size: a chunk that  does not match is refused by the upload session.
    attr_accessor :chunk_upload_size

    # Whether the caller asked for documents to open in the current browser tab.
    attr_accessor :open_editor_in_same_tab

    # Whether the caller asked to see rooms arranged by the groups they belong to.
    attr_accessor :organize_rooms_grouping

    # The kind of external link this portal offers first: true for a link only its own accounts can open, false for  one anyone holding it can open.
    attr_accessor :default_share_link_internal

    # Whether the external sharing restriction covers personal documents. It matters only while external sharing is  off.
    attr_accessor :external_share_apply_to_documents

    # Whether the external sharing restriction covers rooms, including making a new one public. It matters only  while external sharing is off.
    attr_accessor :external_share_apply_to_rooms

    # Whether links created before the restriction stop opening as well, rather than only new ones being refused.
    attr_accessor :block_existing_links_on_restrict

    # Formats whose content can be indexed for the AI features of the portal. A file outside the list is left out of  that index.
    attr_accessor :exts_files_vectorized

    # The largest file size in bytes that is indexed for the AI features. A larger file is skipped even when its  format is listed above.
    attr_accessor :max_vectorization_file_size

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'exts_image_previewed' => :'extsImagePreviewed',
        :'exts_media_previewed' => :'extsMediaPreviewed',
        :'exts_web_previewed' => :'extsWebPreviewed',
        :'exts_web_edited' => :'extsWebEdited',
        :'exts_web_encrypt' => :'extsWebEncrypt',
        :'exts_web_reviewed' => :'extsWebReviewed',
        :'exts_web_custom_filter_editing' => :'extsWebCustomFilterEditing',
        :'exts_web_restricted_editing' => :'extsWebRestrictedEditing',
        :'exts_web_commented' => :'extsWebCommented',
        :'exts_web_template' => :'extsWebTemplate',
        :'exts_must_convert' => :'extsMustConvert',
        :'exts_convertible' => :'extsConvertible',
        :'exts_uploadable' => :'extsUploadable',
        :'exts_archive' => :'extsArchive',
        :'exts_video' => :'extsVideo',
        :'exts_audio' => :'extsAudio',
        :'exts_image' => :'extsImage',
        :'exts_spreadsheet' => :'extsSpreadsheet',
        :'exts_presentation' => :'extsPresentation',
        :'exts_document' => :'extsDocument',
        :'exts_diagram' => :'extsDiagram',
        :'internal_formats' => :'internalFormats',
        :'master_form_extension' => :'masterFormExtension',
        :'param_version' => :'paramVersion',
        :'param_out_type' => :'paramOutType',
        :'file_download_url_string' => :'fileDownloadUrlString',
        :'file_web_viewer_url_string' => :'fileWebViewerUrlString',
        :'file_web_viewer_external_url_string' => :'fileWebViewerExternalUrlString',
        :'file_web_editor_url_string' => :'fileWebEditorUrlString',
        :'file_web_editor_external_url_string' => :'fileWebEditorExternalUrlString',
        :'file_redirect_preview_url_string' => :'fileRedirectPreviewUrlString',
        :'file_thumbnail_url_string' => :'fileThumbnailUrlString',
        :'confirm_delete' => :'confirmDelete',
        :'enable_third_party' => :'enableThirdParty',
        :'external_share' => :'externalShare',
        :'external_share_social_media' => :'externalShareSocialMedia',
        :'store_original_files' => :'storeOriginalFiles',
        :'keep_new_file_name' => :'keepNewFileName',
        :'display_file_extension' => :'displayFileExtension',
        :'show_quick_actions' => :'showQuickActions',
        :'convert_notify' => :'convertNotify',
        :'hide_confirm_cancel_operation' => :'hideConfirmCancelOperation',
        :'hide_confirm_convert_save' => :'hideConfirmConvertSave',
        :'hide_confirm_convert_open' => :'hideConfirmConvertOpen',
        :'hide_confirm_room_lifetime' => :'hideConfirmRoomLifetime',
        :'default_order' => :'defaultOrder',
        :'forcesave' => :'forcesave',
        :'store_forcesave' => :'storeForcesave',
        :'recent_section' => :'recentSection',
        :'favorites_section' => :'favoritesSection',
        :'templates_section' => :'templatesSection',
        :'download_tar_gz' => :'downloadTarGz',
        :'automatically_clean_up' => :'automaticallyCleanUp',
        :'can_search_by_content' => :'canSearchByContent',
        :'default_sharing_access_rights' => :'defaultSharingAccessRights',
        :'max_upload_thread_count' => :'maxUploadThreadCount',
        :'chunk_upload_size' => :'chunkUploadSize',
        :'open_editor_in_same_tab' => :'openEditorInSameTab',
        :'organize_rooms_grouping' => :'organizeRoomsGrouping',
        :'default_share_link_internal' => :'defaultShareLinkInternal',
        :'external_share_apply_to_documents' => :'externalShareApplyToDocuments',
        :'external_share_apply_to_rooms' => :'externalShareApplyToRooms',
        :'block_existing_links_on_restrict' => :'blockExistingLinksOnRestrict',
        :'exts_files_vectorized' => :'extsFilesVectorized',
        :'max_vectorization_file_size' => :'maxVectorizationFileSize'
      }
    end

    # Returns attribute mapping this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'exts_image_previewed' => :'Array<String>',
        :'exts_media_previewed' => :'Array<String>',
        :'exts_web_previewed' => :'Array<String>',
        :'exts_web_edited' => :'Array<String>',
        :'exts_web_encrypt' => :'Array<String>',
        :'exts_web_reviewed' => :'Array<String>',
        :'exts_web_custom_filter_editing' => :'Array<String>',
        :'exts_web_restricted_editing' => :'Array<String>',
        :'exts_web_commented' => :'Array<String>',
        :'exts_web_template' => :'Array<String>',
        :'exts_must_convert' => :'Array<String>',
        :'exts_convertible' => :'Hash<String, Array<String>>',
        :'exts_uploadable' => :'Array<String>',
        :'exts_archive' => :'Array<String>',
        :'exts_video' => :'Array<String>',
        :'exts_audio' => :'Array<String>',
        :'exts_image' => :'Array<String>',
        :'exts_spreadsheet' => :'Array<String>',
        :'exts_presentation' => :'Array<String>',
        :'exts_document' => :'Array<String>',
        :'exts_diagram' => :'Array<String>',
        :'internal_formats' => :'FilesSettingsDtoInternalFormats',
        :'master_form_extension' => :'String',
        :'param_version' => :'String',
        :'param_out_type' => :'String',
        :'file_download_url_string' => :'String',
        :'file_web_viewer_url_string' => :'String',
        :'file_web_viewer_external_url_string' => :'String',
        :'file_web_editor_url_string' => :'String',
        :'file_web_editor_external_url_string' => :'String',
        :'file_redirect_preview_url_string' => :'String',
        :'file_thumbnail_url_string' => :'String',
        :'confirm_delete' => :'Boolean',
        :'enable_third_party' => :'Boolean',
        :'external_share' => :'Boolean',
        :'external_share_social_media' => :'Boolean',
        :'store_original_files' => :'Boolean',
        :'keep_new_file_name' => :'Boolean',
        :'display_file_extension' => :'Boolean',
        :'show_quick_actions' => :'Boolean',
        :'convert_notify' => :'Boolean',
        :'hide_confirm_cancel_operation' => :'Boolean',
        :'hide_confirm_convert_save' => :'Boolean',
        :'hide_confirm_convert_open' => :'Boolean',
        :'hide_confirm_room_lifetime' => :'Boolean',
        :'default_order' => :'OrderBy',
        :'forcesave' => :'Boolean',
        :'store_forcesave' => :'Boolean',
        :'recent_section' => :'Boolean',
        :'favorites_section' => :'Boolean',
        :'templates_section' => :'Boolean',
        :'download_tar_gz' => :'Boolean',
        :'automatically_clean_up' => :'AutoCleanUpData',
        :'can_search_by_content' => :'Boolean',
        :'default_sharing_access_rights' => :'Array<Integer>',
        :'max_upload_thread_count' => :'Integer',
        :'chunk_upload_size' => :'Integer',
        :'open_editor_in_same_tab' => :'Boolean',
        :'organize_rooms_grouping' => :'Boolean',
        :'default_share_link_internal' => :'Boolean',
        :'external_share_apply_to_documents' => :'Boolean',
        :'external_share_apply_to_rooms' => :'Boolean',
        :'block_existing_links_on_restrict' => :'Boolean',
        :'exts_files_vectorized' => :'Array<String>',
        :'max_vectorization_file_size' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'exts_image_previewed',
        :'exts_media_previewed',
        :'exts_web_previewed',
        :'exts_web_edited',
        :'exts_web_encrypt',
        :'exts_web_reviewed',
        :'exts_web_custom_filter_editing',
        :'exts_web_restricted_editing',
        :'exts_web_commented',
        :'exts_web_template',
        :'exts_must_convert',
        :'exts_uploadable',
        :'exts_archive',
        :'exts_video',
        :'exts_audio',
        :'exts_image',
        :'exts_spreadsheet',
        :'exts_presentation',
        :'exts_document',
        :'exts_diagram',
        :'internal_formats',
        :'master_form_extension',
        :'param_version',
        :'param_out_type',
        :'file_download_url_string',
        :'file_web_viewer_url_string',
        :'file_web_viewer_external_url_string',
        :'file_web_editor_url_string',
        :'file_web_editor_external_url_string',
        :'file_redirect_preview_url_string',
        :'file_thumbnail_url_string',
        :'default_sharing_access_rights',
        :'exts_files_vectorized',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::FilesSettingsDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::FilesSettingsDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'exts_image_previewed')
        if (value = attributes[:'exts_image_previewed']).is_a?(Array)
          self.exts_image_previewed = value
        end
      end

      if attributes.key?(:'exts_media_previewed')
        if (value = attributes[:'exts_media_previewed']).is_a?(Array)
          self.exts_media_previewed = value
        end
      end

      if attributes.key?(:'exts_web_previewed')
        if (value = attributes[:'exts_web_previewed']).is_a?(Array)
          self.exts_web_previewed = value
        end
      end

      if attributes.key?(:'exts_web_edited')
        if (value = attributes[:'exts_web_edited']).is_a?(Array)
          self.exts_web_edited = value
        end
      end

      if attributes.key?(:'exts_web_encrypt')
        if (value = attributes[:'exts_web_encrypt']).is_a?(Array)
          self.exts_web_encrypt = value
        end
      end

      if attributes.key?(:'exts_web_reviewed')
        if (value = attributes[:'exts_web_reviewed']).is_a?(Array)
          self.exts_web_reviewed = value
        end
      end

      if attributes.key?(:'exts_web_custom_filter_editing')
        if (value = attributes[:'exts_web_custom_filter_editing']).is_a?(Array)
          self.exts_web_custom_filter_editing = value
        end
      end

      if attributes.key?(:'exts_web_restricted_editing')
        if (value = attributes[:'exts_web_restricted_editing']).is_a?(Array)
          self.exts_web_restricted_editing = value
        end
      end

      if attributes.key?(:'exts_web_commented')
        if (value = attributes[:'exts_web_commented']).is_a?(Array)
          self.exts_web_commented = value
        end
      end

      if attributes.key?(:'exts_web_template')
        if (value = attributes[:'exts_web_template']).is_a?(Array)
          self.exts_web_template = value
        end
      end

      if attributes.key?(:'exts_must_convert')
        if (value = attributes[:'exts_must_convert']).is_a?(Array)
          self.exts_must_convert = value
        end
      end

      if attributes.key?(:'exts_convertible')
        if (value = attributes[:'exts_convertible']).is_a?(Hash)
          self.exts_convertible = value
        end
      end

      if attributes.key?(:'exts_uploadable')
        if (value = attributes[:'exts_uploadable']).is_a?(Array)
          self.exts_uploadable = value
        end
      end

      if attributes.key?(:'exts_archive')
        if (value = attributes[:'exts_archive']).is_a?(Array)
          self.exts_archive = value
        end
      end

      if attributes.key?(:'exts_video')
        if (value = attributes[:'exts_video']).is_a?(Array)
          self.exts_video = value
        end
      end

      if attributes.key?(:'exts_audio')
        if (value = attributes[:'exts_audio']).is_a?(Array)
          self.exts_audio = value
        end
      end

      if attributes.key?(:'exts_image')
        if (value = attributes[:'exts_image']).is_a?(Array)
          self.exts_image = value
        end
      end

      if attributes.key?(:'exts_spreadsheet')
        if (value = attributes[:'exts_spreadsheet']).is_a?(Array)
          self.exts_spreadsheet = value
        end
      end

      if attributes.key?(:'exts_presentation')
        if (value = attributes[:'exts_presentation']).is_a?(Array)
          self.exts_presentation = value
        end
      end

      if attributes.key?(:'exts_document')
        if (value = attributes[:'exts_document']).is_a?(Array)
          self.exts_document = value
        end
      end

      if attributes.key?(:'exts_diagram')
        if (value = attributes[:'exts_diagram']).is_a?(Array)
          self.exts_diagram = value
        end
      end

      if attributes.key?(:'internal_formats')
        self.internal_formats = attributes[:'internal_formats']
      end

      if attributes.key?(:'master_form_extension')
        self.master_form_extension = attributes[:'master_form_extension']
      end

      if attributes.key?(:'param_version')
        self.param_version = attributes[:'param_version']
      end

      if attributes.key?(:'param_out_type')
        self.param_out_type = attributes[:'param_out_type']
      end

      if attributes.key?(:'file_download_url_string')
        self.file_download_url_string = attributes[:'file_download_url_string']
      end

      if attributes.key?(:'file_web_viewer_url_string')
        self.file_web_viewer_url_string = attributes[:'file_web_viewer_url_string']
      end

      if attributes.key?(:'file_web_viewer_external_url_string')
        self.file_web_viewer_external_url_string = attributes[:'file_web_viewer_external_url_string']
      end

      if attributes.key?(:'file_web_editor_url_string')
        self.file_web_editor_url_string = attributes[:'file_web_editor_url_string']
      end

      if attributes.key?(:'file_web_editor_external_url_string')
        self.file_web_editor_external_url_string = attributes[:'file_web_editor_external_url_string']
      end

      if attributes.key?(:'file_redirect_preview_url_string')
        self.file_redirect_preview_url_string = attributes[:'file_redirect_preview_url_string']
      end

      if attributes.key?(:'file_thumbnail_url_string')
        self.file_thumbnail_url_string = attributes[:'file_thumbnail_url_string']
      end

      if attributes.key?(:'confirm_delete')
        self.confirm_delete = attributes[:'confirm_delete']
      end

      if attributes.key?(:'enable_third_party')
        self.enable_third_party = attributes[:'enable_third_party']
      end

      if attributes.key?(:'external_share')
        self.external_share = attributes[:'external_share']
      end

      if attributes.key?(:'external_share_social_media')
        self.external_share_social_media = attributes[:'external_share_social_media']
      end

      if attributes.key?(:'store_original_files')
        self.store_original_files = attributes[:'store_original_files']
      end

      if attributes.key?(:'keep_new_file_name')
        self.keep_new_file_name = attributes[:'keep_new_file_name']
      end

      if attributes.key?(:'display_file_extension')
        self.display_file_extension = attributes[:'display_file_extension']
      end

      if attributes.key?(:'show_quick_actions')
        self.show_quick_actions = attributes[:'show_quick_actions']
      end

      if attributes.key?(:'convert_notify')
        self.convert_notify = attributes[:'convert_notify']
      end

      if attributes.key?(:'hide_confirm_cancel_operation')
        self.hide_confirm_cancel_operation = attributes[:'hide_confirm_cancel_operation']
      end

      if attributes.key?(:'hide_confirm_convert_save')
        self.hide_confirm_convert_save = attributes[:'hide_confirm_convert_save']
      end

      if attributes.key?(:'hide_confirm_convert_open')
        self.hide_confirm_convert_open = attributes[:'hide_confirm_convert_open']
      end

      if attributes.key?(:'hide_confirm_room_lifetime')
        self.hide_confirm_room_lifetime = attributes[:'hide_confirm_room_lifetime']
      end

      if attributes.key?(:'default_order')
        self.default_order = attributes[:'default_order']
      end

      if attributes.key?(:'forcesave')
        self.forcesave = attributes[:'forcesave']
      end

      if attributes.key?(:'store_forcesave')
        self.store_forcesave = attributes[:'store_forcesave']
      end

      if attributes.key?(:'recent_section')
        self.recent_section = attributes[:'recent_section']
      end

      if attributes.key?(:'favorites_section')
        self.favorites_section = attributes[:'favorites_section']
      end

      if attributes.key?(:'templates_section')
        self.templates_section = attributes[:'templates_section']
      end

      if attributes.key?(:'download_tar_gz')
        self.download_tar_gz = attributes[:'download_tar_gz']
      end

      if attributes.key?(:'automatically_clean_up')
        self.automatically_clean_up = attributes[:'automatically_clean_up']
      end

      if attributes.key?(:'can_search_by_content')
        self.can_search_by_content = attributes[:'can_search_by_content']
      end

      if attributes.key?(:'default_sharing_access_rights')
        if (value = attributes[:'default_sharing_access_rights']).is_a?(Array)
          self.default_sharing_access_rights = value
        end
      end

      if attributes.key?(:'max_upload_thread_count')
        self.max_upload_thread_count = attributes[:'max_upload_thread_count']
      end

      if attributes.key?(:'chunk_upload_size')
        self.chunk_upload_size = attributes[:'chunk_upload_size']
      end

      if attributes.key?(:'open_editor_in_same_tab')
        self.open_editor_in_same_tab = attributes[:'open_editor_in_same_tab']
      end

      if attributes.key?(:'organize_rooms_grouping')
        self.organize_rooms_grouping = attributes[:'organize_rooms_grouping']
      end

      if attributes.key?(:'default_share_link_internal')
        self.default_share_link_internal = attributes[:'default_share_link_internal']
      end

      if attributes.key?(:'external_share_apply_to_documents')
        self.external_share_apply_to_documents = attributes[:'external_share_apply_to_documents']
      end

      if attributes.key?(:'external_share_apply_to_rooms')
        self.external_share_apply_to_rooms = attributes[:'external_share_apply_to_rooms']
      end

      if attributes.key?(:'block_existing_links_on_restrict')
        self.block_existing_links_on_restrict = attributes[:'block_existing_links_on_restrict']
      end

      if attributes.key?(:'exts_files_vectorized')
        if (value = attributes[:'exts_files_vectorized']).is_a?(Array)
          self.exts_files_vectorized = value
        end
      end

      if attributes.key?(:'max_vectorization_file_size')
        self.max_vectorization_file_size = attributes[:'max_vectorization_file_size']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          exts_image_previewed == o.exts_image_previewed &&
          exts_media_previewed == o.exts_media_previewed &&
          exts_web_previewed == o.exts_web_previewed &&
          exts_web_edited == o.exts_web_edited &&
          exts_web_encrypt == o.exts_web_encrypt &&
          exts_web_reviewed == o.exts_web_reviewed &&
          exts_web_custom_filter_editing == o.exts_web_custom_filter_editing &&
          exts_web_restricted_editing == o.exts_web_restricted_editing &&
          exts_web_commented == o.exts_web_commented &&
          exts_web_template == o.exts_web_template &&
          exts_must_convert == o.exts_must_convert &&
          exts_convertible == o.exts_convertible &&
          exts_uploadable == o.exts_uploadable &&
          exts_archive == o.exts_archive &&
          exts_video == o.exts_video &&
          exts_audio == o.exts_audio &&
          exts_image == o.exts_image &&
          exts_spreadsheet == o.exts_spreadsheet &&
          exts_presentation == o.exts_presentation &&
          exts_document == o.exts_document &&
          exts_diagram == o.exts_diagram &&
          internal_formats == o.internal_formats &&
          master_form_extension == o.master_form_extension &&
          param_version == o.param_version &&
          param_out_type == o.param_out_type &&
          file_download_url_string == o.file_download_url_string &&
          file_web_viewer_url_string == o.file_web_viewer_url_string &&
          file_web_viewer_external_url_string == o.file_web_viewer_external_url_string &&
          file_web_editor_url_string == o.file_web_editor_url_string &&
          file_web_editor_external_url_string == o.file_web_editor_external_url_string &&
          file_redirect_preview_url_string == o.file_redirect_preview_url_string &&
          file_thumbnail_url_string == o.file_thumbnail_url_string &&
          confirm_delete == o.confirm_delete &&
          enable_third_party == o.enable_third_party &&
          external_share == o.external_share &&
          external_share_social_media == o.external_share_social_media &&
          store_original_files == o.store_original_files &&
          keep_new_file_name == o.keep_new_file_name &&
          display_file_extension == o.display_file_extension &&
          show_quick_actions == o.show_quick_actions &&
          convert_notify == o.convert_notify &&
          hide_confirm_cancel_operation == o.hide_confirm_cancel_operation &&
          hide_confirm_convert_save == o.hide_confirm_convert_save &&
          hide_confirm_convert_open == o.hide_confirm_convert_open &&
          hide_confirm_room_lifetime == o.hide_confirm_room_lifetime &&
          default_order == o.default_order &&
          forcesave == o.forcesave &&
          store_forcesave == o.store_forcesave &&
          recent_section == o.recent_section &&
          favorites_section == o.favorites_section &&
          templates_section == o.templates_section &&
          download_tar_gz == o.download_tar_gz &&
          automatically_clean_up == o.automatically_clean_up &&
          can_search_by_content == o.can_search_by_content &&
          default_sharing_access_rights == o.default_sharing_access_rights &&
          max_upload_thread_count == o.max_upload_thread_count &&
          chunk_upload_size == o.chunk_upload_size &&
          open_editor_in_same_tab == o.open_editor_in_same_tab &&
          organize_rooms_grouping == o.organize_rooms_grouping &&
          default_share_link_internal == o.default_share_link_internal &&
          external_share_apply_to_documents == o.external_share_apply_to_documents &&
          external_share_apply_to_rooms == o.external_share_apply_to_rooms &&
          block_existing_links_on_restrict == o.block_existing_links_on_restrict &&
          exts_files_vectorized == o.exts_files_vectorized &&
          max_vectorization_file_size == o.max_vectorization_file_size
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [exts_image_previewed, exts_media_previewed, exts_web_previewed, exts_web_edited, exts_web_encrypt, exts_web_reviewed, exts_web_custom_filter_editing, exts_web_restricted_editing, exts_web_commented, exts_web_template, exts_must_convert, exts_convertible, exts_uploadable, exts_archive, exts_video, exts_audio, exts_image, exts_spreadsheet, exts_presentation, exts_document, exts_diagram, internal_formats, master_form_extension, param_version, param_out_type, file_download_url_string, file_web_viewer_url_string, file_web_viewer_external_url_string, file_web_editor_url_string, file_web_editor_external_url_string, file_redirect_preview_url_string, file_thumbnail_url_string, confirm_delete, enable_third_party, external_share, external_share_social_media, store_original_files, keep_new_file_name, display_file_extension, show_quick_actions, convert_notify, hide_confirm_cancel_operation, hide_confirm_convert_save, hide_confirm_convert_open, hide_confirm_room_lifetime, default_order, forcesave, store_forcesave, recent_section, favorites_section, templates_section, download_tar_gz, automatically_clean_up, can_search_by_content, default_sharing_access_rights, max_upload_thread_count, chunk_upload_size, open_editor_in_same_tab, organize_rooms_grouping, default_share_link_internal, external_share_apply_to_documents, external_share_apply_to_rooms, block_existing_links_on_restrict, exts_files_vectorized, max_vectorization_file_size].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

  end

end
