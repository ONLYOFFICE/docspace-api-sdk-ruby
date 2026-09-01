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
  # The external sharing information and validation data.
  class ExternalShareDto < ApiModelBase
    # The external data status.
    attr_accessor :status

    # The external data ID.
    attr_accessor :id

    # The external data title.
    attr_accessor :title

    # The type of the external data.
    attr_accessor :type

    # The tenant ID.
    attr_accessor :tenant_id

    # The unique identifier of the shared entity.
    attr_accessor :entity_id

    # The title of the shared entity.
    attr_accessor :entity_title

    # The entry type of the external data.
    attr_accessor :entity_type

    # Indicates whether the entity represents a room.
    attr_accessor :is_room

    # Specifies whether to share the external data or not.
    attr_accessor :shared

    # The link ID of the external data.
    attr_accessor :link_id

    # Specifies whether the user is authenticated or not.
    attr_accessor :is_authenticated

    # The room ID of the external data.
    attr_accessor :is_room_member

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
        :'status' => :'status',
        :'id' => :'id',
        :'title' => :'title',
        :'type' => :'type',
        :'tenant_id' => :'tenantId',
        :'entity_id' => :'entityId',
        :'entity_title' => :'entityTitle',
        :'entity_type' => :'entityType',
        :'is_room' => :'isRoom',
        :'shared' => :'shared',
        :'link_id' => :'linkId',
        :'is_authenticated' => :'isAuthenticated',
        :'is_room_member' => :'isRoomMember'
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
        :'status' => :'Status',
        :'id' => :'String',
        :'title' => :'String',
        :'type' => :'FileEntryType',
        :'tenant_id' => :'Integer',
        :'entity_id' => :'String',
        :'entity_title' => :'String',
        :'entity_type' => :'FileEntryType',
        :'is_room' => :'Boolean',
        :'shared' => :'Boolean',
        :'link_id' => :'String',
        :'is_authenticated' => :'Boolean',
        :'is_room_member' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'title',
        :'entity_id',
        :'entity_title',
        :'is_room',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::ExternalShareDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::ExternalShareDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'tenant_id')
        self.tenant_id = attributes[:'tenant_id']
      else
        self.tenant_id = nil
      end

      if attributes.key?(:'entity_id')
        self.entity_id = attributes[:'entity_id']
      end

      if attributes.key?(:'entity_title')
        self.entity_title = attributes[:'entity_title']
      end

      if attributes.key?(:'entity_type')
        self.entity_type = attributes[:'entity_type']
      end

      if attributes.key?(:'is_room')
        self.is_room = attributes[:'is_room']
      end

      if attributes.key?(:'shared')
        self.shared = attributes[:'shared']
      else
        self.shared = nil
      end

      if attributes.key?(:'link_id')
        self.link_id = attributes[:'link_id']
      else
        self.link_id = nil
      end

      if attributes.key?(:'is_authenticated')
        self.is_authenticated = attributes[:'is_authenticated']
      else
        self.is_authenticated = nil
      end

      if attributes.key?(:'is_room_member')
        self.is_room_member = attributes[:'is_room_member']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @tenant_id.nil?
        invalid_properties.push('invalid value for "tenant_id", tenant_id cannot be nil.')
      end

      if @shared.nil?
        invalid_properties.push('invalid value for "shared", shared cannot be nil.')
      end

      if @link_id.nil?
        invalid_properties.push('invalid value for "link_id", link_id cannot be nil.')
      end

      if @is_authenticated.nil?
        invalid_properties.push('invalid value for "is_authenticated", is_authenticated cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @status.nil?
      return false if @tenant_id.nil?
      return false if @shared.nil?
      return false if @link_id.nil?
      return false if @is_authenticated.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] status Value to be assigned
    def status=(status)
      if status.nil?
        fail ArgumentError, 'status cannot be nil'
      end

      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] tenant_id Value to be assigned
    def tenant_id=(tenant_id)
      if tenant_id.nil?
        fail ArgumentError, 'tenant_id cannot be nil'
      end

      @tenant_id = tenant_id
    end

    # Custom attribute writer method with validation
    # @param [Object] shared Value to be assigned
    def shared=(shared)
      if shared.nil?
        fail ArgumentError, 'shared cannot be nil'
      end

      @shared = shared
    end

    # Custom attribute writer method with validation
    # @param [Object] link_id Value to be assigned
    def link_id=(link_id)
      if link_id.nil?
        fail ArgumentError, 'link_id cannot be nil'
      end

      @link_id = link_id
    end

    # Custom attribute writer method with validation
    # @param [Object] is_authenticated Value to be assigned
    def is_authenticated=(is_authenticated)
      if is_authenticated.nil?
        fail ArgumentError, 'is_authenticated cannot be nil'
      end

      @is_authenticated = is_authenticated
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          status == o.status &&
          id == o.id &&
          title == o.title &&
          type == o.type &&
          tenant_id == o.tenant_id &&
          entity_id == o.entity_id &&
          entity_title == o.entity_title &&
          entity_type == o.entity_type &&
          is_room == o.is_room &&
          shared == o.shared &&
          link_id == o.link_id &&
          is_authenticated == o.is_authenticated &&
          is_room_member == o.is_room_member
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [status, id, title, type, tenant_id, entity_id, entity_title, entity_type, is_room, shared, link_id, is_authenticated, is_room_member].hash
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
