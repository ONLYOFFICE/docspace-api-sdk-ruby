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
  # The file parameters.
  class FileDtoInteger < ApiModelBase
    # The file entry title.
    attr_accessor :title

    attr_accessor :access

    attr_accessor :shared_by

    attr_accessor :owned_by

    # Specifies if the file entry is shared via link or not.
    attr_accessor :shared

    # Specifies if the file entry is shared for user or not.
    attr_accessor :shared_for_user

    # Specifies if the file entry is shared via a public (non-internal) external link.
    attr_accessor :shared_external

    # Indicates whether the parent entity is shared.
    attr_accessor :parent_shared

    # The short Web URL.
    attr_accessor :short_web_url

    attr_accessor :created

    attr_accessor :created_by

    attr_accessor :updated

    attr_accessor :auto_delete

    attr_accessor :root_folder_type

    attr_accessor :parent_room_type

    attr_accessor :updated_by

    # Specifies if the file entry provider is specified or not.
    attr_accessor :provider_item

    # The provider key of the file entry.
    attr_accessor :provider_key

    # The provider ID of the file entry.
    attr_accessor :provider_id

    # The order of the file entry.
    attr_accessor :order

    # Specifies if the file is a favorite or not.
    attr_accessor :is_favorite

    attr_accessor :file_entry_type

    # The file entry ID.
    attr_accessor :id

    # The root folder ID of the file entry.
    attr_accessor :root_folder_id

    # The origin ID of the file entry.
    attr_accessor :origin_id

    # The origin room ID of the file entry.
    attr_accessor :origin_room_id

    # The origin title of the file entry.
    attr_accessor :origin_title

    # The origin room title of the file entry.
    attr_accessor :origin_room_title

    # Specifies if the file entry can be shared or not.
    attr_accessor :can_share

    attr_accessor :share_settings

    attr_accessor :security

    attr_accessor :available_share_rights

    # The request token of the file entry.
    attr_accessor :request_token

    # Specifies if the folder can be accessed via an external link or not.
    attr_accessor :external

    attr_accessor :expiration_date

    # Indicates whether the shareable link associated with the file or folder has expired.
    attr_accessor :is_link_expired

    # The folder ID where the file is located.
    attr_accessor :folder_id

    # The file version.
    attr_accessor :version

    # The version group of the file.
    attr_accessor :version_group

    # The content length of the file.
    attr_accessor :content_length

    # The pure content length of the file.
    attr_accessor :pure_content_length

    attr_accessor :file_status

    # The list of users editing the file.
    attr_accessor :editing_by

    # Specifies if the file is muted or not.
    attr_accessor :mute

    # The URL link to view the file.
    attr_accessor :view_url

    # The Web URL link to the file.
    attr_accessor :web_url

    attr_accessor :file_type

    # The file extension.
    attr_accessor :file_exst

    # The comment to the file.
    attr_accessor :comment

    # Specifies if the file is encrypted or not.
    attr_accessor :encrypted

    # The thumbnail URL of the file.
    attr_accessor :thumbnail_url

    attr_accessor :thumbnail_status

    # Specifies if the file is locked or not.
    attr_accessor :locked

    # The user ID of the person who locked the file.
    attr_accessor :locked_by

    # Specifies if the file has a draft or not.
    attr_accessor :has_draft

    attr_accessor :form_filling_status

    # Specifies if the file is a form or not.
    attr_accessor :is_form

    # Specifies if the Custom Filter editing mode is enabled for a file or not.
    attr_accessor :custom_filter_enabled

    # The name of the user who enabled a Custom Filter editing mode for a file.
    attr_accessor :custom_filter_enabled_by

    # Specifies if the filling has started or not.
    attr_accessor :start_filling

    # Specifies if the form filling has started but the file is still being saved by the document editor. Filling and editing are not allowed.
    attr_accessor :is_filling_preparing

    # The InProcess folder ID of the file.
    attr_accessor :in_process_folder_id

    # The InProcess folder title of the file.
    attr_accessor :in_process_folder_title

    # The ID of the FormFillingFolderDone folder that corresponds to this original form.
    attr_accessor :results_folder_id

    attr_accessor :draft_location

    attr_accessor :view_accessibility

    attr_accessor :last_opened

    attr_accessor :expired

    attr_accessor :vectorization_status

    # The name of the table in the external database that corresponds to this form.
    attr_accessor :external_db_table_name

    attr_accessor :dimensions

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
        :'title' => :'title',
        :'access' => :'access',
        :'shared_by' => :'sharedBy',
        :'owned_by' => :'ownedBy',
        :'shared' => :'shared',
        :'shared_for_user' => :'sharedForUser',
        :'shared_external' => :'sharedExternal',
        :'parent_shared' => :'parentShared',
        :'short_web_url' => :'shortWebUrl',
        :'created' => :'created',
        :'created_by' => :'createdBy',
        :'updated' => :'updated',
        :'auto_delete' => :'autoDelete',
        :'root_folder_type' => :'rootFolderType',
        :'parent_room_type' => :'parentRoomType',
        :'updated_by' => :'updatedBy',
        :'provider_item' => :'providerItem',
        :'provider_key' => :'providerKey',
        :'provider_id' => :'providerId',
        :'order' => :'order',
        :'is_favorite' => :'isFavorite',
        :'file_entry_type' => :'fileEntryType',
        :'id' => :'id',
        :'root_folder_id' => :'rootFolderId',
        :'origin_id' => :'originId',
        :'origin_room_id' => :'originRoomId',
        :'origin_title' => :'originTitle',
        :'origin_room_title' => :'originRoomTitle',
        :'can_share' => :'canShare',
        :'share_settings' => :'shareSettings',
        :'security' => :'security',
        :'available_share_rights' => :'availableShareRights',
        :'request_token' => :'requestToken',
        :'external' => :'external',
        :'expiration_date' => :'expirationDate',
        :'is_link_expired' => :'isLinkExpired',
        :'folder_id' => :'folderId',
        :'version' => :'version',
        :'version_group' => :'versionGroup',
        :'content_length' => :'contentLength',
        :'pure_content_length' => :'pureContentLength',
        :'file_status' => :'fileStatus',
        :'editing_by' => :'editingBy',
        :'mute' => :'mute',
        :'view_url' => :'viewUrl',
        :'web_url' => :'webUrl',
        :'file_type' => :'fileType',
        :'file_exst' => :'fileExst',
        :'comment' => :'comment',
        :'encrypted' => :'encrypted',
        :'thumbnail_url' => :'thumbnailUrl',
        :'thumbnail_status' => :'thumbnailStatus',
        :'locked' => :'locked',
        :'locked_by' => :'lockedBy',
        :'has_draft' => :'hasDraft',
        :'form_filling_status' => :'formFillingStatus',
        :'is_form' => :'isForm',
        :'custom_filter_enabled' => :'customFilterEnabled',
        :'custom_filter_enabled_by' => :'customFilterEnabledBy',
        :'start_filling' => :'startFilling',
        :'is_filling_preparing' => :'isFillingPreparing',
        :'in_process_folder_id' => :'inProcessFolderId',
        :'in_process_folder_title' => :'inProcessFolderTitle',
        :'results_folder_id' => :'resultsFolderId',
        :'draft_location' => :'draftLocation',
        :'view_accessibility' => :'viewAccessibility',
        :'last_opened' => :'lastOpened',
        :'expired' => :'expired',
        :'vectorization_status' => :'vectorizationStatus',
        :'external_db_table_name' => :'externalDbTableName',
        :'dimensions' => :'dimensions'
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
        :'title' => :'String',
        :'access' => :'FileShare',
        :'shared_by' => :'EmployeeDto',
        :'owned_by' => :'EmployeeDto',
        :'shared' => :'Boolean',
        :'shared_for_user' => :'Boolean',
        :'shared_external' => :'Boolean',
        :'parent_shared' => :'Boolean',
        :'short_web_url' => :'String',
        :'created' => :'ApiDateTime',
        :'created_by' => :'EmployeeDto',
        :'updated' => :'ApiDateTime',
        :'auto_delete' => :'ApiDateTime',
        :'root_folder_type' => :'FolderType',
        :'parent_room_type' => :'FolderType',
        :'updated_by' => :'EmployeeDto',
        :'provider_item' => :'Boolean',
        :'provider_key' => :'String',
        :'provider_id' => :'Integer',
        :'order' => :'String',
        :'is_favorite' => :'Boolean',
        :'file_entry_type' => :'FileEntryType',
        :'id' => :'Integer',
        :'root_folder_id' => :'Integer',
        :'origin_id' => :'Integer',
        :'origin_room_id' => :'Integer',
        :'origin_title' => :'String',
        :'origin_room_title' => :'String',
        :'can_share' => :'Boolean',
        :'share_settings' => :'FileEntryDtoIntegerAllOfShareSettings',
        :'security' => :'FileEntryDtoIntegerAllOfSecurity',
        :'available_share_rights' => :'FileEntryDtoIntegerAllOfAvailableShareRights',
        :'request_token' => :'String',
        :'external' => :'Boolean',
        :'expiration_date' => :'ApiDateTime',
        :'is_link_expired' => :'Boolean',
        :'folder_id' => :'Integer',
        :'version' => :'Integer',
        :'version_group' => :'Integer',
        :'content_length' => :'String',
        :'pure_content_length' => :'Integer',
        :'file_status' => :'FileStatus',
        :'editing_by' => :'Hash<String, String>',
        :'mute' => :'Boolean',
        :'view_url' => :'String',
        :'web_url' => :'String',
        :'file_type' => :'FileType',
        :'file_exst' => :'String',
        :'comment' => :'String',
        :'encrypted' => :'Boolean',
        :'thumbnail_url' => :'String',
        :'thumbnail_status' => :'Thumbnail',
        :'locked' => :'Boolean',
        :'locked_by' => :'String',
        :'has_draft' => :'Boolean',
        :'form_filling_status' => :'FormFillingStatus',
        :'is_form' => :'Boolean',
        :'custom_filter_enabled' => :'Boolean',
        :'custom_filter_enabled_by' => :'String',
        :'start_filling' => :'Boolean',
        :'is_filling_preparing' => :'Boolean',
        :'in_process_folder_id' => :'Integer',
        :'in_process_folder_title' => :'String',
        :'results_folder_id' => :'Integer',
        :'draft_location' => :'DraftLocationInteger',
        :'view_accessibility' => :'FileDtoIntegerAllOfViewAccessibility',
        :'last_opened' => :'ApiDateTime',
        :'expired' => :'ApiDateTime',
        :'vectorization_status' => :'VectorizationStatus',
        :'external_db_table_name' => :'String',
        :'dimensions' => :'Size'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'title',
        :'short_web_url',
        :'provider_item',
        :'provider_key',
        :'provider_id',
        :'order',
        :'is_favorite',
        :'origin_title',
        :'origin_room_title',
        :'share_settings',
        :'security',
        :'available_share_rights',
        :'request_token',
        :'external',
        :'is_link_expired',
        :'content_length',
        :'pure_content_length',
        :'editing_by',
        :'view_url',
        :'web_url',
        :'file_exst',
        :'comment',
        :'encrypted',
        :'thumbnail_url',
        :'locked',
        :'locked_by',
        :'has_draft',
        :'is_form',
        :'custom_filter_enabled',
        :'custom_filter_enabled_by',
        :'start_filling',
        :'is_filling_preparing',
        :'in_process_folder_id',
        :'in_process_folder_title',
        :'results_folder_id',
        :'view_accessibility',
        :'external_db_table_name',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'FileEntryDtoInteger'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::FileDtoInteger` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::FileDtoInteger`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'access')
        self.access = attributes[:'access']
      end

      if attributes.key?(:'shared_by')
        self.shared_by = attributes[:'shared_by']
      end

      if attributes.key?(:'owned_by')
        self.owned_by = attributes[:'owned_by']
      end

      if attributes.key?(:'shared')
        self.shared = attributes[:'shared']
      end

      if attributes.key?(:'shared_for_user')
        self.shared_for_user = attributes[:'shared_for_user']
      end

      if attributes.key?(:'shared_external')
        self.shared_external = attributes[:'shared_external']
      end

      if attributes.key?(:'parent_shared')
        self.parent_shared = attributes[:'parent_shared']
      end

      if attributes.key?(:'short_web_url')
        self.short_web_url = attributes[:'short_web_url']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.key?(:'auto_delete')
        self.auto_delete = attributes[:'auto_delete']
      end

      if attributes.key?(:'root_folder_type')
        self.root_folder_type = attributes[:'root_folder_type']
      end

      if attributes.key?(:'parent_room_type')
        self.parent_room_type = attributes[:'parent_room_type']
      end

      if attributes.key?(:'updated_by')
        self.updated_by = attributes[:'updated_by']
      end

      if attributes.key?(:'provider_item')
        self.provider_item = attributes[:'provider_item']
      end

      if attributes.key?(:'provider_key')
        self.provider_key = attributes[:'provider_key']
      end

      if attributes.key?(:'provider_id')
        self.provider_id = attributes[:'provider_id']
      end

      if attributes.key?(:'order')
        self.order = attributes[:'order']
      end

      if attributes.key?(:'is_favorite')
        self.is_favorite = attributes[:'is_favorite']
      end

      if attributes.key?(:'file_entry_type')
        self.file_entry_type = attributes[:'file_entry_type']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'root_folder_id')
        self.root_folder_id = attributes[:'root_folder_id']
      end

      if attributes.key?(:'origin_id')
        self.origin_id = attributes[:'origin_id']
      end

      if attributes.key?(:'origin_room_id')
        self.origin_room_id = attributes[:'origin_room_id']
      end

      if attributes.key?(:'origin_title')
        self.origin_title = attributes[:'origin_title']
      end

      if attributes.key?(:'origin_room_title')
        self.origin_room_title = attributes[:'origin_room_title']
      end

      if attributes.key?(:'can_share')
        self.can_share = attributes[:'can_share']
      end

      if attributes.key?(:'share_settings')
        self.share_settings = attributes[:'share_settings']
      end

      if attributes.key?(:'security')
        self.security = attributes[:'security']
      end

      if attributes.key?(:'available_share_rights')
        self.available_share_rights = attributes[:'available_share_rights']
      end

      if attributes.key?(:'request_token')
        self.request_token = attributes[:'request_token']
      end

      if attributes.key?(:'external')
        self.external = attributes[:'external']
      end

      if attributes.key?(:'expiration_date')
        self.expiration_date = attributes[:'expiration_date']
      end

      if attributes.key?(:'is_link_expired')
        self.is_link_expired = attributes[:'is_link_expired']
      end

      if attributes.key?(:'folder_id')
        self.folder_id = attributes[:'folder_id']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'version_group')
        self.version_group = attributes[:'version_group']
      end

      if attributes.key?(:'content_length')
        self.content_length = attributes[:'content_length']
      end

      if attributes.key?(:'pure_content_length')
        self.pure_content_length = attributes[:'pure_content_length']
      end

      if attributes.key?(:'file_status')
        self.file_status = attributes[:'file_status']
      end

      if attributes.key?(:'editing_by')
        if (value = attributes[:'editing_by']).is_a?(Hash)
          self.editing_by = value
        end
      end

      if attributes.key?(:'mute')
        self.mute = attributes[:'mute']
      end

      if attributes.key?(:'view_url')
        self.view_url = attributes[:'view_url']
      end

      if attributes.key?(:'web_url')
        self.web_url = attributes[:'web_url']
      end

      if attributes.key?(:'file_type')
        self.file_type = attributes[:'file_type']
      end

      if attributes.key?(:'file_exst')
        self.file_exst = attributes[:'file_exst']
      end

      if attributes.key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.key?(:'encrypted')
        self.encrypted = attributes[:'encrypted']
      end

      if attributes.key?(:'thumbnail_url')
        self.thumbnail_url = attributes[:'thumbnail_url']
      end

      if attributes.key?(:'thumbnail_status')
        self.thumbnail_status = attributes[:'thumbnail_status']
      end

      if attributes.key?(:'locked')
        self.locked = attributes[:'locked']
      end

      if attributes.key?(:'locked_by')
        self.locked_by = attributes[:'locked_by']
      end

      if attributes.key?(:'has_draft')
        self.has_draft = attributes[:'has_draft']
      end

      if attributes.key?(:'form_filling_status')
        self.form_filling_status = attributes[:'form_filling_status']
      end

      if attributes.key?(:'is_form')
        self.is_form = attributes[:'is_form']
      end

      if attributes.key?(:'custom_filter_enabled')
        self.custom_filter_enabled = attributes[:'custom_filter_enabled']
      end

      if attributes.key?(:'custom_filter_enabled_by')
        self.custom_filter_enabled_by = attributes[:'custom_filter_enabled_by']
      end

      if attributes.key?(:'start_filling')
        self.start_filling = attributes[:'start_filling']
      end

      if attributes.key?(:'is_filling_preparing')
        self.is_filling_preparing = attributes[:'is_filling_preparing']
      end

      if attributes.key?(:'in_process_folder_id')
        self.in_process_folder_id = attributes[:'in_process_folder_id']
      end

      if attributes.key?(:'in_process_folder_title')
        self.in_process_folder_title = attributes[:'in_process_folder_title']
      end

      if attributes.key?(:'results_folder_id')
        self.results_folder_id = attributes[:'results_folder_id']
      end

      if attributes.key?(:'draft_location')
        self.draft_location = attributes[:'draft_location']
      end

      if attributes.key?(:'view_accessibility')
        self.view_accessibility = attributes[:'view_accessibility']
      end

      if attributes.key?(:'last_opened')
        self.last_opened = attributes[:'last_opened']
      end

      if attributes.key?(:'expired')
        self.expired = attributes[:'expired']
      end

      if attributes.key?(:'vectorization_status')
        self.vectorization_status = attributes[:'vectorization_status']
      end

      if attributes.key?(:'external_db_table_name')
        self.external_db_table_name = attributes[:'external_db_table_name']
      end

      if attributes.key?(:'dimensions')
        self.dimensions = attributes[:'dimensions']
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
          title == o.title &&
          access == o.access &&
          shared_by == o.shared_by &&
          owned_by == o.owned_by &&
          shared == o.shared &&
          shared_for_user == o.shared_for_user &&
          shared_external == o.shared_external &&
          parent_shared == o.parent_shared &&
          short_web_url == o.short_web_url &&
          created == o.created &&
          created_by == o.created_by &&
          updated == o.updated &&
          auto_delete == o.auto_delete &&
          root_folder_type == o.root_folder_type &&
          parent_room_type == o.parent_room_type &&
          updated_by == o.updated_by &&
          provider_item == o.provider_item &&
          provider_key == o.provider_key &&
          provider_id == o.provider_id &&
          order == o.order &&
          is_favorite == o.is_favorite &&
          file_entry_type == o.file_entry_type &&
          id == o.id &&
          root_folder_id == o.root_folder_id &&
          origin_id == o.origin_id &&
          origin_room_id == o.origin_room_id &&
          origin_title == o.origin_title &&
          origin_room_title == o.origin_room_title &&
          can_share == o.can_share &&
          share_settings == o.share_settings &&
          security == o.security &&
          available_share_rights == o.available_share_rights &&
          request_token == o.request_token &&
          external == o.external &&
          expiration_date == o.expiration_date &&
          is_link_expired == o.is_link_expired &&
          folder_id == o.folder_id &&
          version == o.version &&
          version_group == o.version_group &&
          content_length == o.content_length &&
          pure_content_length == o.pure_content_length &&
          file_status == o.file_status &&
          editing_by == o.editing_by &&
          mute == o.mute &&
          view_url == o.view_url &&
          web_url == o.web_url &&
          file_type == o.file_type &&
          file_exst == o.file_exst &&
          comment == o.comment &&
          encrypted == o.encrypted &&
          thumbnail_url == o.thumbnail_url &&
          thumbnail_status == o.thumbnail_status &&
          locked == o.locked &&
          locked_by == o.locked_by &&
          has_draft == o.has_draft &&
          form_filling_status == o.form_filling_status &&
          is_form == o.is_form &&
          custom_filter_enabled == o.custom_filter_enabled &&
          custom_filter_enabled_by == o.custom_filter_enabled_by &&
          start_filling == o.start_filling &&
          is_filling_preparing == o.is_filling_preparing &&
          in_process_folder_id == o.in_process_folder_id &&
          in_process_folder_title == o.in_process_folder_title &&
          results_folder_id == o.results_folder_id &&
          draft_location == o.draft_location &&
          view_accessibility == o.view_accessibility &&
          last_opened == o.last_opened &&
          expired == o.expired &&
          vectorization_status == o.vectorization_status &&
          external_db_table_name == o.external_db_table_name &&
          dimensions == o.dimensions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [title, access, shared_by, owned_by, shared, shared_for_user, shared_external, parent_shared, short_web_url, created, created_by, updated, auto_delete, root_folder_type, parent_room_type, updated_by, provider_item, provider_key, provider_id, order, is_favorite, file_entry_type, id, root_folder_id, origin_id, origin_room_id, origin_title, origin_room_title, can_share, share_settings, security, available_share_rights, request_token, external, expiration_date, is_link_expired, folder_id, version, version_group, content_length, pure_content_length, file_status, editing_by, mute, view_url, web_url, file_type, file_exst, comment, encrypted, thumbnail_url, thumbnail_status, locked, locked_by, has_draft, form_filling_status, is_form, custom_filter_enabled, custom_filter_enabled_by, start_filling, is_filling_preparing, in_process_folder_id, in_process_folder_title, results_folder_id, draft_location, view_accessibility, last_opened, expired, vectorization_status, external_db_table_name, dimensions].hash
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
