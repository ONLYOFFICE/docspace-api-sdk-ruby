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
  # The folder, with the fields that only a room carries filled in when the folder is a room.
  class FolderDto < FileEntryDto
    # The folder this one is listed in. For a room it is the root of the section the room lives in, and for an entry  opened through a sharing link whose real parent the caller may not read it is the root of the section with the  entries shared with them.
    attr_accessor :parent_id

    # How many files lie directly in the folder, without counting the subfolders. The roots of the `Rooms`, room  templates, default templates and AI agents sections always report 0, because the number is not collected for  them.
    attr_accessor :files_count

    # How many subfolders lie directly in the folder. For an AI room the two service subfolders it always holds are  subtracted, so the number matches what a listing of it shows, and the roots of the `Rooms`, templates and AI  agents sections report 0.
    attr_accessor :folders_count

    # Whether the caller may hand out access to the folder. It is filled in only for the folder a folder-contents  answer is about, and is null in every other answer, so null says nothing about the sharing rights.
    attr_accessor :is_shareable

    # How many entries inside the folder the caller has not opened yet, the number drawn as the badge on it. An  account that turned the badges off in its own settings always reads 0 here, so 0 alone does not prove that  everything has been seen.
    attr_accessor :new

    # Whether the caller silenced the notifications of this room: true means no message about its activity reaches  them. The choice belongs to the reading account rather than to the room, so two members of one room read  different values.
    attr_accessor :mute

    # The names of the tags attached to the room. Empty for a folder that is not a room, since only rooms carry  tags, and the names are the ones from the portal tag catalogue.
    attr_accessor :tags

    # The addresses of the room logo in four sizes, together with the colour and the built-in cover that are drawn  when no logo was uploaded. A room without a logo answers with four empty addresses rather than with null, and  the field is null for a folder that is not a room.
    attr_accessor :logo

    # Whether the caller pinned the room to the top of their own room list. Pinning is personal and is lost when the  room is archived.
    attr_accessor :pinned

    # The kind of the room, which decides the default access rules of its members. Null for a folder that is not a  room.
    attr_accessor :room_type

    # Whether the room is a private one, which limits it to the accounts invited into it and needs encryption keys  set up for each of them.
    attr_accessor :private

    # Whether the contents of the room are kept in an explicit numbered order, the one reported as `order` on each  entry, instead of being left to the sorting the reader asks for.
    attr_accessor :indexing

    # Whether downloading and printing the contents of the room is forbidden, which leaves its members with viewing  and editing in the editor.
    attr_accessor :deny_download

    # The rule by which the files of the room are removed once they grow old. Null when the room has no such rule,  which is also what is reported after the rule is switched off, because switching it off erases it.
    attr_accessor :lifetime

    # The watermark stamped over the documents of the room while they are viewed and printed. Null when the room has  no watermark, and for every folder that is not a room.
    attr_accessor :watermark

    # The part the folder plays inside its room: one of the service folders of the form-filling flow, or the  knowledge and result storages of an AI room. It stays null for an ordinary folder and for the room itself, so  it does not describe folders in general.
    attr_accessor :type

    # Whether the caller holds the room through an invitation of their own: true for the account that created it and  for a member invited personally, false when the access comes from a group they belong to, and null for a  folder that is not a room.
    attr_accessor :in_room

    # How much space the files of the room may take, in bytes. It is the limit set on this room, or the portal  default for rooms when none was set. Null when the tariff of the portal does not count room statistics, when  room quotas are switched off, when the room lies in the archive or the trash, or when the role of the caller  in the room carries no editing rights - a viewer, a commenter, a reviewer and a form filler do not see the  figure, a room manager, a content creator and an editor do.
    attr_accessor :quota_limit

    # Whether `quotaLimit` is a limit set on this room (true) or the portal default for rooms (false). Null exactly  when `quotaLimit` is null.
    attr_accessor :is_custom_quota

    # How much the files of the room take, in bytes, as of the last time the counter was recomputed. The counter is  refreshed when a file operation finishes, so a read right after an upload or a deletion can still report the  previous figure. Null for a folder that is not a room.
    attr_accessor :used_space

    # Whether the sharing link the folder was opened through asks for a password that has not been entered yet.  While it is true the contents stay unreadable; send the password to `POST api/2.0/files/share/{key}/password`  first. Null when the folder was not reached through a link.
    attr_accessor :password_protected

    # Deprecated, read `isLinkExpired` instead: whether the sharing link the folder was opened through has run out  of its lifetime.
    attr_accessor :expired

    # The chat configuration of an AI room. Only the system prompt is reported here, whatever else the room stores,  and the field is null for every folder that is not an AI room.
    attr_accessor :chat_settings

    # The kind of the room the folder lies in. It is filled in only for the folder a folder-contents answer is  about, and only when that room is an AI room, so it is null in every other answer and for every other room  kind.
    attr_accessor :root_room_type

    # Whether the answers collected in this form-filling room are also gathered into a spreadsheet next to the  completed copies. Filled in for form-filling rooms only.
    attr_accessor :save_form_as_xlsx

    # Whether the answers collected in this form-filling room are also pushed into the external database configured  for the portal. Filled in for form-filling rooms only.
    attr_accessor :send_form_to_external_db

    # The form the completed copies in this folder were filled from, taken from the copy submitted last. Null while  the folder holds no completed copy, and for every folder that does not collect them.
    attr_accessor :original_form_id

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
        :'parent_id' => :'parentId',
        :'files_count' => :'filesCount',
        :'folders_count' => :'foldersCount',
        :'is_shareable' => :'isShareable',
        :'new' => :'new',
        :'mute' => :'mute',
        :'tags' => :'tags',
        :'logo' => :'logo',
        :'pinned' => :'pinned',
        :'room_type' => :'roomType',
        :'private' => :'private',
        :'indexing' => :'indexing',
        :'deny_download' => :'denyDownload',
        :'lifetime' => :'lifetime',
        :'watermark' => :'watermark',
        :'type' => :'type',
        :'in_room' => :'inRoom',
        :'quota_limit' => :'quotaLimit',
        :'is_custom_quota' => :'isCustomQuota',
        :'used_space' => :'usedSpace',
        :'password_protected' => :'passwordProtected',
        :'expired' => :'expired',
        :'chat_settings' => :'chatSettings',
        :'root_room_type' => :'rootRoomType',
        :'save_form_as_xlsx' => :'saveFormAsXLSX',
        :'send_form_to_external_db' => :'sendFormToExternalDB',
        :'original_form_id' => :'originalFormId'
      }
    end

    # Returns attribute mapping this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attribute_map
      superclass.acceptable_attribute_map.merge(attribute_map)
    end

    # Returns all the JSON keys this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'parent_id' => :'Integer',
        :'files_count' => :'Integer',
        :'folders_count' => :'Integer',
        :'is_shareable' => :'Boolean',
        :'new' => :'Integer',
        :'mute' => :'Boolean',
        :'tags' => :'Array<String>',
        :'logo' => :'LogoDto',
        :'pinned' => :'Boolean',
        :'room_type' => :'RoomType',
        :'private' => :'Boolean',
        :'indexing' => :'Boolean',
        :'deny_download' => :'Boolean',
        :'lifetime' => :'RoomDataLifetimeDto',
        :'watermark' => :'WatermarkDto',
        :'type' => :'FolderType',
        :'in_room' => :'Boolean',
        :'quota_limit' => :'Integer',
        :'is_custom_quota' => :'Boolean',
        :'used_space' => :'Integer',
        :'password_protected' => :'Boolean',
        :'expired' => :'Boolean',
        :'chat_settings' => :'ChatSettingsDto',
        :'root_room_type' => :'RoomType',
        :'save_form_as_xlsx' => :'Boolean',
        :'send_form_to_external_db' => :'Boolean',
        :'original_form_id' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'is_shareable',
        :'tags',
        :'in_room',
        :'quota_limit',
        :'is_custom_quota',
        :'used_space',
        :'password_protected',
        :'expired',
        :'save_form_as_xlsx',
        :'send_form_to_external_db',
        :'original_form_id'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'FileEntryDto'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::FolderDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::FolderDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'parent_id')
        self.parent_id = attributes[:'parent_id']
      end

      if attributes.key?(:'files_count')
        self.files_count = attributes[:'files_count']
      end

      if attributes.key?(:'folders_count')
        self.folders_count = attributes[:'folders_count']
      end

      if attributes.key?(:'is_shareable')
        self.is_shareable = attributes[:'is_shareable']
      end

      if attributes.key?(:'new')
        self.new = attributes[:'new']
      end

      if attributes.key?(:'mute')
        self.mute = attributes[:'mute']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'logo')
        self.logo = attributes[:'logo']
      end

      if attributes.key?(:'pinned')
        self.pinned = attributes[:'pinned']
      end

      if attributes.key?(:'room_type')
        self.room_type = attributes[:'room_type']
      end

      if attributes.key?(:'private')
        self.private = attributes[:'private']
      end

      if attributes.key?(:'indexing')
        self.indexing = attributes[:'indexing']
      end

      if attributes.key?(:'deny_download')
        self.deny_download = attributes[:'deny_download']
      end

      if attributes.key?(:'lifetime')
        self.lifetime = attributes[:'lifetime']
      end

      if attributes.key?(:'watermark')
        self.watermark = attributes[:'watermark']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'in_room')
        self.in_room = attributes[:'in_room']
      end

      if attributes.key?(:'quota_limit')
        self.quota_limit = attributes[:'quota_limit']
      end

      if attributes.key?(:'is_custom_quota')
        self.is_custom_quota = attributes[:'is_custom_quota']
      end

      if attributes.key?(:'used_space')
        self.used_space = attributes[:'used_space']
      end

      if attributes.key?(:'password_protected')
        self.password_protected = attributes[:'password_protected']
      end

      if attributes.key?(:'expired')
        self.expired = attributes[:'expired']
      end

      if attributes.key?(:'chat_settings')
        self.chat_settings = attributes[:'chat_settings']
      end

      if attributes.key?(:'root_room_type')
        self.root_room_type = attributes[:'root_room_type']
      end

      if attributes.key?(:'save_form_as_xlsx')
        self.save_form_as_xlsx = attributes[:'save_form_as_xlsx']
      end

      if attributes.key?(:'send_form_to_external_db')
        self.send_form_to_external_db = attributes[:'send_form_to_external_db']
      end

      if attributes.key?(:'original_form_id')
        self.original_form_id = attributes[:'original_form_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = super
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true && super
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          parent_id == o.parent_id &&
          files_count == o.files_count &&
          folders_count == o.folders_count &&
          is_shareable == o.is_shareable &&
          new == o.new &&
          mute == o.mute &&
          tags == o.tags &&
          logo == o.logo &&
          pinned == o.pinned &&
          room_type == o.room_type &&
          private == o.private &&
          indexing == o.indexing &&
          deny_download == o.deny_download &&
          lifetime == o.lifetime &&
          watermark == o.watermark &&
          type == o.type &&
          in_room == o.in_room &&
          quota_limit == o.quota_limit &&
          is_custom_quota == o.is_custom_quota &&
          used_space == o.used_space &&
          password_protected == o.password_protected &&
          expired == o.expired &&
          chat_settings == o.chat_settings &&
          root_room_type == o.root_room_type &&
          save_form_as_xlsx == o.save_form_as_xlsx &&
          send_form_to_external_db == o.send_form_to_external_db &&
          original_form_id == o.original_form_id && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [parent_id, files_count, folders_count, is_shareable, new, mute, tags, logo, pinned, room_type, private, indexing, deny_download, lifetime, watermark, type, in_room, quota_limit, is_custom_quota, used_space, password_protected, expired, chat_settings, root_room_type, save_form_as_xlsx, send_form_to_external_db, original_form_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      super(attributes)
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
      hash = super
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
