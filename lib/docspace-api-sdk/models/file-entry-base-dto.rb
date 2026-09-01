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
  # The file entry information.
  class FileEntryBaseDto < ApiModelBase
    # The file entry title.
    attr_accessor :title

    # The access rights to the file entry.
    attr_accessor :access

    # Provides information about the employee who shared the file or folder.
    attr_accessor :shared_by

    # The information about the employee who owns the file entry.
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

    # The creation date and time of the file entry.
    attr_accessor :created

    # The file entry author.
    attr_accessor :created_by

    # The last date and time when the file entry was updated.
    attr_accessor :updated

    # The date and time when the file entry will be automatically deleted.
    attr_accessor :auto_delete

    # The root folder type of the file entry.
    attr_accessor :root_folder_type

    # The parent room type of the file entry.
    attr_accessor :parent_room_type

    # The user who updated the file entry.
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

    # The file entry type.
    attr_accessor :file_entry_type

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
        :'file_entry_type' => :'fileEntryType'
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
        :'created' => :'Time',
        :'created_by' => :'EmployeeDto',
        :'updated' => :'Time',
        :'auto_delete' => :'Time',
        :'root_folder_type' => :'FolderType',
        :'parent_room_type' => :'FolderType',
        :'updated_by' => :'EmployeeDto',
        :'provider_item' => :'Boolean',
        :'provider_key' => :'String',
        :'provider_id' => :'Integer',
        :'order' => :'String',
        :'is_favorite' => :'Boolean',
        :'file_entry_type' => :'FileEntryType'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'title',
        :'short_web_url',
        :'created',
        :'updated',
        :'auto_delete',
        :'provider_item',
        :'provider_key',
        :'provider_id',
        :'order',
        :'is_favorite',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::FileEntryBaseDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::FileEntryBaseDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
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
          file_entry_type == o.file_entry_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [title, access, shared_by, owned_by, shared, shared_for_user, shared_external, parent_shared, short_web_url, created, created_by, updated, auto_delete, root_folder_type, parent_room_type, updated_by, provider_item, provider_key, provider_id, order, is_favorite, file_entry_type].hash
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
