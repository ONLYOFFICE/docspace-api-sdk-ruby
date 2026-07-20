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
  # A single model settings entry within a provider create or update request.
  class ModelSettingsItemDto < ApiModelBase
    # The model identifier.
    attr_accessor :model_id

    # Whether the model is enabled for use in chat.
    attr_accessor :is_enabled

    # The display name for the model. Only applies to non-recommended models.
    attr_accessor :_alias

    attr_accessor :capabilities

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'model_id' => :'modelId',
        :'is_enabled' => :'isEnabled',
        :'_alias' => :'alias',
        :'capabilities' => :'capabilities'
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
        :'model_id' => :'String',
        :'is_enabled' => :'Boolean',
        :'_alias' => :'String',
        :'capabilities' => :'AiModelCapabilities'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'_alias',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::ModelSettingsItemDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::ModelSettingsItemDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'model_id')
        self.model_id = attributes[:'model_id']
      else
        self.model_id = nil
      end

      if attributes.key?(:'is_enabled')
        self.is_enabled = attributes[:'is_enabled']
      end

      if attributes.key?(:'_alias')
        self._alias = attributes[:'_alias']
      end

      if attributes.key?(:'capabilities')
        self.capabilities = attributes[:'capabilities']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @model_id.nil?
        invalid_properties.push('invalid value for "model_id", model_id cannot be nil.')
      end

      if @model_id.to_s.length > 255
        invalid_properties.push('invalid value for "model_id", the character length must be smaller than or equal to 255.')
      end

      if @model_id.to_s.length < 1
        invalid_properties.push('invalid value for "model_id", the character length must be greater than or equal to 1.')
      end

      if !@_alias.nil? && @_alias.to_s.length > 255
        invalid_properties.push('invalid value for "_alias", the character length must be smaller than or equal to 255.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @model_id.nil?
      return false if @model_id.to_s.length > 255
      return false if @model_id.to_s.length < 1
      return false if !@_alias.nil? && @_alias.to_s.length > 255
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] model_id Value to be assigned
    def model_id=(model_id)
      if model_id.nil?
        fail ArgumentError, 'model_id cannot be nil'
      end

      if model_id.to_s.length > 255
        fail ArgumentError, 'invalid value for "model_id", the character length must be smaller than or equal to 255.'
      end

      if model_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "model_id", the character length must be greater than or equal to 1.'
      end

      @model_id = model_id
    end

    # Custom attribute writer method with validation
    # @param [Object] _alias Value to be assigned
    def _alias=(_alias)
      if !_alias.nil? && _alias.to_s.length > 255
        fail ArgumentError, 'invalid value for "_alias", the character length must be smaller than or equal to 255.'
      end

      @_alias = _alias
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          model_id == o.model_id &&
          is_enabled == o.is_enabled &&
          _alias == o._alias &&
          capabilities == o.capabilities
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [model_id, is_enabled, _alias, capabilities].hash
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
