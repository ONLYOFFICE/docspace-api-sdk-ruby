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
  # Parameters for updating an existing MCP server. All fields are optional — only provided fields will be modified.
  class UpdateServerRequestBody < ApiModelBase
    # New display name for the server. Only letters, numbers, underscores, and hyphens are allowed. Maximum 128 characters.
    attr_accessor :name

    # New human-readable description of the server's purpose. Maximum 255 characters.
    attr_accessor :description

    # New base URL of the MCP server endpoint. If changed, the system will re-verify connectivity before saving.
    attr_accessor :endpoint

    # New HTTP headers to include with every request. If changed alongside the endpoint, connectivity is re-verified.
    attr_accessor :headers

    # Set to true to update the server icon. When true, the Icon field value (or null to remove) will be applied.
    attr_accessor :update_icon

    # New Base64-encoded icon image for the server, or null to remove the existing icon. Only applied when UpdateIcon is true.
    attr_accessor :icon

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'description' => :'description',
        :'endpoint' => :'endpoint',
        :'headers' => :'headers',
        :'update_icon' => :'updateIcon',
        :'icon' => :'icon'
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
        :'name' => :'String',
        :'description' => :'String',
        :'endpoint' => :'String',
        :'headers' => :'Hash<String, String>',
        :'update_icon' => :'Boolean',
        :'icon' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'description',
        :'endpoint',
        :'headers',
        :'icon'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::UpdateServerRequestBody` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::UpdateServerRequestBody`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'endpoint')
        self.endpoint = attributes[:'endpoint']
      end

      if attributes.key?(:'headers')
        if (value = attributes[:'headers']).is_a?(Hash)
          self.headers = value
        end
      end

      if attributes.key?(:'update_icon')
        self.update_icon = attributes[:'update_icon']
      end

      if attributes.key?(:'icon')
        self.icon = attributes[:'icon']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 128
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 128.')
      end

      if !@description.nil? && @description.to_s.length > 255
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 255.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@name.nil? && @name.to_s.length > 128
      return false if !@description.nil? && @description.to_s.length > 255
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 128
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 128.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 255
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 255.'
      end

      @description = description
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          description == o.description &&
          endpoint == o.endpoint &&
          headers == o.headers &&
          update_icon == o.update_icon &&
          icon == o.icon
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, description, endpoint, headers, update_icon, icon].hash
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
