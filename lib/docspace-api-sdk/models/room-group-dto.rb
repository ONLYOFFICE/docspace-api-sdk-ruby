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
  # A personal collection of rooms: the name and icon it was given, the account that owns it, and the rooms it gathers  at the moment it was read.
  class RoomGroupDto < ApiModelBase
    # The identifier of the group, which addresses it in every other group operation and is kept for as long as the  group exists.
    attr_accessor :id

    # The name its owner gave the group, stored trimmed of surrounding spaces. Names are not unique, so two groups  of the same account can be told apart only by their identifier.
    attr_accessor :name

    # The built-in cover chosen for the group, carrying the cover identifier and its rendering in each available  size. Null when the group has no icon, either because it was never given one or because the icon was cleared  by setting it to an empty value.
    attr_accessor :icon

    # The account that created the group and the only one able to read, change or delete it; for any other member of  the portal the group does not exist.
    attr_accessor :user_id

    # The section the group belongs to, which categorizes it within the application's structure. This property determines  which area of the interface the group is associated with and affects how its rooms are filtered and displayed.  Common values include Active for standard rooms, Forms for form-based rooms, Archive for archived content, and  Templates for template rooms. The search area ensures that when retrieving a group, only rooms that belong to  the specified section are included in the results, maintaining proper organizational boundaries within the system.
    attr_accessor :search_area

    # The rooms the group gathers, those stored in the portal first and those on connected third-party accounts  after them. Null when the group was asked for without its members, and an empty array when the group holds no  room the caller can still see. A room moved to the archive is left out until it is taken out of the archive.
    attr_accessor :rooms

    # How many rooms the group shows: the same rooms `rooms` lists, so archived ones are not counted either. It is  filled even when the rooms themselves were not asked for, which makes it the cheap way to tell an empty group  from a populated one.
    attr_accessor :total_rooms

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
        :'id' => :'id',
        :'name' => :'name',
        :'icon' => :'icon',
        :'user_id' => :'userId',
        :'search_area' => :'searchArea',
        :'rooms' => :'rooms',
        :'total_rooms' => :'totalRooms'
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
        :'id' => :'Integer',
        :'name' => :'String',
        :'icon' => :'MultiSizeLogoCover',
        :'user_id' => :'String',
        :'search_area' => :'SearchArea',
        :'rooms' => :'Array<FileEntryBaseDto>',
        :'total_rooms' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'rooms',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::RoomGroupDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::RoomGroupDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'icon')
        self.icon = attributes[:'icon']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'search_area')
        self.search_area = attributes[:'search_area']
      end

      if attributes.key?(:'rooms')
        if (value = attributes[:'rooms']).is_a?(Array)
          self.rooms = value
        end
      end

      if attributes.key?(:'total_rooms')
        self.total_rooms = attributes[:'total_rooms']
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
          id == o.id &&
          name == o.name &&
          icon == o.icon &&
          user_id == o.user_id &&
          search_area == o.search_area &&
          rooms == o.rooms &&
          total_rooms == o.total_rooms
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, icon, user_id, search_area, rooms, total_rooms].hash
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
