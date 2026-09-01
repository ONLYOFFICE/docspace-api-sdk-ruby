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
  # The response data for the API key operations.
  class ApiKeyResponseDto < ApiModelBase
    # The API key unique identifier.
    attr_accessor :id

    # The API key name.
    attr_accessor :name

    # The full API key value (only returned when creating a new key).
    attr_accessor :key

    # The API key postfix (used for identification).
    attr_accessor :key_postfix

    # The list of permissions granted to the API key.
    attr_accessor :permissions

    # The date and time when the API key was last used.
    attr_accessor :last_used

    # The date and time when the API key was created.
    attr_accessor :create_on

    # The identifier of the user who created the API key.
    attr_accessor :create_by

    # The date and time when the API key expires.
    attr_accessor :expires_at

    # Indicates whether the API key is active or not.
    attr_accessor :is_active

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'key' => :'key',
        :'key_postfix' => :'keyPostfix',
        :'permissions' => :'permissions',
        :'last_used' => :'lastUsed',
        :'create_on' => :'createOn',
        :'create_by' => :'createBy',
        :'expires_at' => :'expiresAt',
        :'is_active' => :'isActive'
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
        :'id' => :'String',
        :'name' => :'String',
        :'key' => :'String',
        :'key_postfix' => :'String',
        :'permissions' => :'Array<String>',
        :'last_used' => :'Time',
        :'create_on' => :'Time',
        :'create_by' => :'EmployeeDto',
        :'expires_at' => :'Time',
        :'is_active' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'key',
        :'key_postfix',
        :'permissions',
        :'last_used',
        :'create_on',
        :'expires_at',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::ApiKeyResponseDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::ApiKeyResponseDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'key')
        self.key = attributes[:'key']
      else
        self.key = nil
      end

      if attributes.key?(:'key_postfix')
        self.key_postfix = attributes[:'key_postfix']
      end

      if attributes.key?(:'permissions')
        if (value = attributes[:'permissions']).is_a?(Array)
          self.permissions = value
        end
      else
        self.permissions = nil
      end

      if attributes.key?(:'last_used')
        self.last_used = attributes[:'last_used']
      end

      if attributes.key?(:'create_on')
        self.create_on = attributes[:'create_on']
      end

      if attributes.key?(:'create_by')
        self.create_by = attributes[:'create_by']
      end

      if attributes.key?(:'expires_at')
        self.expires_at = attributes[:'expires_at']
      end

      if attributes.key?(:'is_active')
        self.is_active = attributes[:'is_active']
      else
        self.is_active = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @is_active.nil?
        invalid_properties.push('invalid value for "is_active", is_active cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @is_active.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] is_active Value to be assigned
    def is_active=(is_active)
      if is_active.nil?
        fail ArgumentError, 'is_active cannot be nil'
      end

      @is_active = is_active
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          key == o.key &&
          key_postfix == o.key_postfix &&
          permissions == o.permissions &&
          last_used == o.last_used &&
          create_on == o.create_on &&
          create_by == o.create_by &&
          expires_at == o.expires_at &&
          is_active == o.is_active
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, key, key_postfix, permissions, last_used, create_on, create_by, expires_at, is_active].hash
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
