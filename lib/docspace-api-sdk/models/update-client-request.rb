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
  # Client update request containing modified client details
  class UpdateClientRequest < ApiModelBase
    # The name of the client
    attr_accessor :name

    # The description of the client
    attr_accessor :description

    # The logo of the client in base64 format
    attr_accessor :logo

    attr_accessor :public

    # Indicates whether PKCE is allowed for the client
    attr_accessor :allow_pkce

    # Indicates whether client is accessible by third-party tenants
    attr_accessor :is_public

    # The allowed origins for the client
    attr_accessor :allowed_origins

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'description' => :'description',
        :'logo' => :'logo',
        :'public' => :'public',
        :'allow_pkce' => :'allow_pkce',
        :'is_public' => :'is_public',
        :'allowed_origins' => :'allowed_origins'
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
        :'logo' => :'String',
        :'public' => :'Boolean',
        :'allow_pkce' => :'Boolean',
        :'is_public' => :'Boolean',
        :'allowed_origins' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::UpdateClientRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::UpdateClientRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'logo')
        self.logo = attributes[:'logo']
      end

      if attributes.key?(:'public')
        self.public = attributes[:'public']
      end

      if attributes.key?(:'allow_pkce')
        self.allow_pkce = attributes[:'allow_pkce']
      end

      if attributes.key?(:'is_public')
        self.is_public = attributes[:'is_public']
      end

      if attributes.key?(:'allowed_origins')
        if (value = attributes[:'allowed_origins']).is_a?(Array)
          self.allowed_origins = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be greater than or equal to 1.')
      end

      if !@description.nil? && @description.to_s.length > 255
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 255.')
      end

      if !@description.nil? && @description.to_s.length < 0
        invalid_properties.push('invalid value for "description", the character length must be greater than or equal to 0.')
      end

      if !@logo.nil? && @logo.to_s.length < 1
        invalid_properties.push('invalid value for "logo", the character length must be greater than or equal to 1.')
      end

      pattern = Regexp.new(/^data:image\/(?:png|jpeg|jpg|svg\+xml);base64,.*.{1,}/)
      if !@logo.nil? && @logo !~ pattern
        invalid_properties.push("invalid value for \"logo\", must conform to the pattern #{pattern}.")
      end

      if !@allowed_origins.nil? && @allowed_origins.length > 12
        invalid_properties.push('invalid value for "allowed_origins", number of items must be less than or equal to 12.')
      end

      if !@allowed_origins.nil? && @allowed_origins.length < 1
        invalid_properties.push('invalid value for "allowed_origins", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@name.nil? && @name.to_s.length < 1
      return false if !@description.nil? && @description.to_s.length > 255
      return false if !@description.nil? && @description.to_s.length < 0
      return false if !@logo.nil? && @logo.to_s.length < 1
      return false if !@logo.nil? && @logo !~ Regexp.new(/^data:image\/(?:png|jpeg|jpg|svg\+xml);base64,.*.{1,}/)
      return false if !@allowed_origins.nil? && @allowed_origins.length > 12
      return false if !@allowed_origins.nil? && @allowed_origins.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be greater than or equal to 1.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if description.nil?
        fail ArgumentError, 'description cannot be nil'
      end

      if description.to_s.length > 255
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 255.'
      end

      if description.to_s.length < 0
        fail ArgumentError, 'invalid value for "description", the character length must be greater than or equal to 0.'
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] logo Value to be assigned
    def logo=(logo)
      if logo.nil?
        fail ArgumentError, 'logo cannot be nil'
      end

      if logo.to_s.length < 1
        fail ArgumentError, 'invalid value for "logo", the character length must be greater than or equal to 1.'
      end

      pattern = Regexp.new(/^data:image\/(?:png|jpeg|jpg|svg\+xml);base64,.*.{1,}/)
      if logo !~ pattern
        fail ArgumentError, "invalid value for \"logo\", must conform to the pattern #{pattern}."
      end

      @logo = logo
    end

    # Custom attribute writer method with validation
    # @param [Object] allowed_origins Value to be assigned
    def allowed_origins=(allowed_origins)
      if allowed_origins.nil?
        fail ArgumentError, 'allowed_origins cannot be nil'
      end

      if allowed_origins.length > 12
        fail ArgumentError, 'invalid value for "allowed_origins", number of items must be less than or equal to 12.'
      end

      if allowed_origins.length < 1
        fail ArgumentError, 'invalid value for "allowed_origins", number of items must be greater than or equal to 1.'
      end

      @allowed_origins = allowed_origins
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          description == o.description &&
          logo == o.logo &&
          public == o.public &&
          allow_pkce == o.allow_pkce &&
          is_public == o.is_public &&
          allowed_origins == o.allowed_origins
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, description, logo, public, allow_pkce, is_public, allowed_origins].hash
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
