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
  # The file settings parameters.
  class FilesSettingsDto < ApiModelBase
    # The list of extensions of the viewed images.
    attr_accessor :exts_image_previewed

    # The list of extensions of the viewed media files.
    attr_accessor :exts_media_previewed

    # The list of extensions of the viewed files.
    attr_accessor :exts_web_previewed

    # The list of extensions of the edited files.
    attr_accessor :exts_web_edited

    # The list of extensions of the encrypted files.
    attr_accessor :exts_web_encrypt

    # The list of extensions of the reviewed files.
    attr_accessor :exts_web_reviewed

    # The list of extensions of the custom filter files.
    attr_accessor :exts_web_custom_filter_editing

    # The list of extensions of the files that are restricted for editing.
    attr_accessor :exts_web_restricted_editing

    # The list of extensions of the commented files.
    attr_accessor :exts_web_commented

    # The list of extensions of the template files.
    attr_accessor :exts_web_template

    # The list of extensions of the files that must be converted.
    attr_accessor :exts_must_convert

    # The list of the convertible extensions.
    attr_accessor :exts_convertible

    # The list of the uploadable extensions.
    attr_accessor :exts_uploadable

    # The list of extensions of the archive files.
    attr_accessor :exts_archive

    # The list of the video extensions.
    attr_accessor :exts_video

    # The list of the audio extensions.
    attr_accessor :exts_audio

    # The list of the image extensions.
    attr_accessor :exts_image

    # The list of the spreadsheet extensions.
    attr_accessor :exts_spreadsheet

    # The list of the presentation extensions.
    attr_accessor :exts_presentation

    # The list of the text document extensions.
    attr_accessor :exts_document

    # The list of the diagram extensions.
    attr_accessor :exts_diagram

    attr_accessor :internal_formats

    # The master form extension.
    attr_accessor :master_form_extension

    # The URL parameter which specifies the file version.
    attr_accessor :param_version

    # The URL parameter which specifies the output type of the converted file.
    attr_accessor :param_out_type

    # The URL to download a file.
    attr_accessor :file_download_url_string

    # The URL to the file web viewer.
    attr_accessor :file_web_viewer_url_string

    # The external URL to the file web viewer.
    attr_accessor :file_web_viewer_external_url_string

    # The URL to the file web editor.
    attr_accessor :file_web_editor_url_string

    # The external URL to the file web editor.
    attr_accessor :file_web_editor_external_url_string

    # The redirect URL to the file viewer.
    attr_accessor :file_redirect_preview_url_string

    # The URL to the file thumbnail.
    attr_accessor :file_thumbnail_url_string

    # Specifies whether to confirm the file deletion or not.
    attr_accessor :confirm_delete

    # Specifies whether to allow users to connect the third-party storages.
    attr_accessor :enable_third_party

    # Specifies whether to enable sharing external links to the files.
    attr_accessor :external_share

    # Specifies whether to enable sharing files on social media.
    attr_accessor :external_share_social_media

    # Specifies whether to enable storing original files.
    attr_accessor :store_original_files

    # Specifies whether to keep the new file name.
    attr_accessor :keep_new_file_name

    # Specifies whether to display the file extension.
    attr_accessor :display_file_extension

    # Specifies whether to display the conversion notification.
    attr_accessor :convert_notify

    # Specifies whether to hide the confirmation dialog for the cancel operation.
    attr_accessor :hide_confirm_cancel_operation

    # Specifies whether to hide the confirmation dialog  for saving the file copy in the original format when converting a file.
    attr_accessor :hide_confirm_convert_save

    # Specifies whether to hide the confirmation dialog  for opening the conversion result.
    attr_accessor :hide_confirm_convert_open

    # Specifies whether to hide the confirmation dialog about the file lifetime in the room.
    attr_accessor :hide_confirm_room_lifetime

    attr_accessor :default_order

    # Specifies whether to forcesave the files or not.
    attr_accessor :forcesave

    # Specifies whether to store the forcesaved file versions or not.
    attr_accessor :store_forcesave

    # Specifies if the Recent section is displayed or not.
    attr_accessor :recent_section

    # Specifies if the Favorites section is displayed or not.
    attr_accessor :favorites_section

    # Specifies if the Templates section is displayed or not.
    attr_accessor :templates_section

    # Specifies whether to download the .tar.gz files or not.
    attr_accessor :download_tar_gz

    attr_accessor :automatically_clean_up

    # Specifies whether the file can be searched by its content or not.
    attr_accessor :can_search_by_content

    # The default access rights in sharing settings.
    attr_accessor :default_sharing_access_rights

    # The maximum number of upload threads.
    attr_accessor :max_upload_thread_count

    # The size of a large file that is uploaded in chunks.
    attr_accessor :chunk_upload_size

    # Specifies whether to open the editor in the same tab or not.
    attr_accessor :open_editor_in_same_tab

    # Specifies whether the grouping of rooms is enabled or not.
    attr_accessor :organize_rooms_grouping

    # Specifies the default sharing link type: true = DocSpace users only (internal), false = Anyone with the link.
    attr_accessor :default_share_link_internal

    # When external sharing is restricted, specifies whether the restriction applies to the My Documents section.
    attr_accessor :external_share_apply_to_documents

    # When external sharing is restricted, specifies whether the restriction applies to the Rooms section.
    attr_accessor :external_share_apply_to_rooms

    # When external sharing is restricted, specifies whether existing public links are blocked immediately.
    attr_accessor :block_existing_links_on_restrict

    # List of extensions available for vectorization
    attr_accessor :exts_files_vectorized

    # The maximum file size for vectorization
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
        :'exts_convertible',
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
      [exts_image_previewed, exts_media_previewed, exts_web_previewed, exts_web_edited, exts_web_encrypt, exts_web_reviewed, exts_web_custom_filter_editing, exts_web_restricted_editing, exts_web_commented, exts_web_template, exts_must_convert, exts_convertible, exts_uploadable, exts_archive, exts_video, exts_audio, exts_image, exts_spreadsheet, exts_presentation, exts_document, exts_diagram, internal_formats, master_form_extension, param_version, param_out_type, file_download_url_string, file_web_viewer_url_string, file_web_viewer_external_url_string, file_web_editor_url_string, file_web_editor_external_url_string, file_redirect_preview_url_string, file_thumbnail_url_string, confirm_delete, enable_third_party, external_share, external_share_social_media, store_original_files, keep_new_file_name, display_file_extension, convert_notify, hide_confirm_cancel_operation, hide_confirm_convert_save, hide_confirm_convert_open, hide_confirm_room_lifetime, default_order, forcesave, store_forcesave, recent_section, favorites_section, templates_section, download_tar_gz, automatically_clean_up, can_search_by_content, default_sharing_access_rights, max_upload_thread_count, chunk_upload_size, open_editor_in_same_tab, organize_rooms_grouping, default_share_link_internal, external_share_apply_to_documents, external_share_apply_to_rooms, block_existing_links_on_restrict, exts_files_vectorized, max_vectorization_file_size].hash
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
