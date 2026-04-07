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
  # The SSO IdP settings.
  class SsoIdpSettings < ApiModelBase
    # The entity ID.
    attr_accessor :entity_id

    # The SSO URL.
    attr_accessor :sso_url

    # The SSO binding.
    attr_accessor :sso_binding

    # The SLO URL.
    attr_accessor :slo_url

    # The SLO binding.
    attr_accessor :slo_binding

    # The name ID format.
    attr_accessor :name_id_format

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'entity_id' => :'entityId',
        :'sso_url' => :'ssoUrl',
        :'sso_binding' => :'ssoBinding',
        :'slo_url' => :'sloUrl',
        :'slo_binding' => :'sloBinding',
        :'name_id_format' => :'nameIdFormat'
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
        :'entity_id' => :'String',
        :'sso_url' => :'String',
        :'sso_binding' => :'String',
        :'slo_url' => :'String',
        :'slo_binding' => :'String',
        :'name_id_format' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'entity_id',
        :'sso_url',
        :'sso_binding',
        :'slo_url',
        :'slo_binding',
        :'name_id_format'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::SsoIdpSettings` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::SsoIdpSettings`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'entity_id')
        self.entity_id = attributes[:'entity_id']
      end

      if attributes.key?(:'sso_url')
        self.sso_url = attributes[:'sso_url']
      end

      if attributes.key?(:'sso_binding')
        self.sso_binding = attributes[:'sso_binding']
      end

      if attributes.key?(:'slo_url')
        self.slo_url = attributes[:'slo_url']
      end

      if attributes.key?(:'slo_binding')
        self.slo_binding = attributes[:'slo_binding']
      end

      if attributes.key?(:'name_id_format')
        self.name_id_format = attributes[:'name_id_format']
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
          entity_id == o.entity_id &&
          sso_url == o.sso_url &&
          sso_binding == o.sso_binding &&
          slo_url == o.slo_url &&
          slo_binding == o.slo_binding &&
          name_id_format == o.name_id_format
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [entity_id, sso_url, sso_binding, slo_url, slo_binding, name_id_format].hash
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
