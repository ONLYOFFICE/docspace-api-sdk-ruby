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
  # The backup history parameters.
  class BackupHistoryRecord < ApiModelBase
    # The backup ID.
    attr_accessor :id

    # The backup file name.
    attr_accessor :file_name

    # The backup storage type.
    attr_accessor :storage_type

    # The backup creation date.
    attr_accessor :created_on

    # The backup expiration date.
    attr_accessor :expires_on

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
        :'file_name' => :'fileName',
        :'storage_type' => :'storageType',
        :'created_on' => :'createdOn',
        :'expires_on' => :'expiresOn'
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
        :'file_name' => :'String',
        :'storage_type' => :'BackupStorageType',
        :'created_on' => :'Time',
        :'expires_on' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'file_name',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::BackupHistoryRecord` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::BackupHistoryRecord`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'file_name')
        self.file_name = attributes[:'file_name']
      else
        self.file_name = nil
      end

      if attributes.key?(:'storage_type')
        self.storage_type = attributes[:'storage_type']
      else
        self.storage_type = nil
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      else
        self.created_on = nil
      end

      if attributes.key?(:'expires_on')
        self.expires_on = attributes[:'expires_on']
      else
        self.expires_on = nil
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

      if @storage_type.nil?
        invalid_properties.push('invalid value for "storage_type", storage_type cannot be nil.')
      end

      if @created_on.nil?
        invalid_properties.push('invalid value for "created_on", created_on cannot be nil.')
      end

      if @expires_on.nil?
        invalid_properties.push('invalid value for "expires_on", expires_on cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @storage_type.nil?
      return false if @created_on.nil?
      return false if @expires_on.nil?
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
    # @param [Object] storage_type Value to be assigned
    def storage_type=(storage_type)
      if storage_type.nil?
        fail ArgumentError, 'storage_type cannot be nil'
      end

      @storage_type = storage_type
    end

    # Custom attribute writer method with validation
    # @param [Object] created_on Value to be assigned
    def created_on=(created_on)
      if created_on.nil?
        fail ArgumentError, 'created_on cannot be nil'
      end

      @created_on = created_on
    end

    # Custom attribute writer method with validation
    # @param [Object] expires_on Value to be assigned
    def expires_on=(expires_on)
      if expires_on.nil?
        fail ArgumentError, 'expires_on cannot be nil'
      end

      @expires_on = expires_on
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          file_name == o.file_name &&
          storage_type == o.storage_type &&
          created_on == o.created_on &&
          expires_on == o.expires_on
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, file_name, storage_type, created_on, expires_on].hash
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
