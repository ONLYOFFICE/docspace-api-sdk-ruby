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
  # Web-search provider configuration. Credentials and provider selection for the built-in web-search tool group.
  class AiWebSearchConfig < ApiModelBase
    # Provider identifier (e.g. `exa`).
    attr_accessor :provider

    # API key for the provider. Optional for self-hosted or keyless setups.
    attr_accessor :key

    # Optional override for the provider's base URL.
    attr_accessor :base_url

    # Whether this provider is cloud-hosted (vs. self-hosted).
    attr_accessor :is_cloud_provider

    # Extra HTTP headers sent with each request to the ONLYOFFICE / cloud backend (e.g. `X-Tenant`). Merged after the derived `Authorization` header, so a custom header of the same name wins.
    attr_accessor :headers

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'provider' => :'provider',
        :'key' => :'key',
        :'base_url' => :'baseUrl',
        :'is_cloud_provider' => :'isCloudProvider',
        :'headers' => :'headers'
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
        :'provider' => :'String',
        :'key' => :'String',
        :'base_url' => :'String',
        :'is_cloud_provider' => :'Boolean',
        :'headers' => :'Hash<String, String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AiWebSearchConfig` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AiWebSearchConfig`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'provider')
        self.provider = attributes[:'provider']
      else
        self.provider = nil
      end

      if attributes.key?(:'key')
        self.key = attributes[:'key']
      end

      if attributes.key?(:'base_url')
        self.base_url = attributes[:'base_url']
      end

      if attributes.key?(:'is_cloud_provider')
        self.is_cloud_provider = attributes[:'is_cloud_provider']
      end

      if attributes.key?(:'headers')
        if (value = attributes[:'headers']).is_a?(Hash)
          self.headers = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @provider.nil?
        invalid_properties.push('invalid value for "provider", provider cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @provider.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] provider Value to be assigned
    def provider=(provider)
      if provider.nil?
        fail ArgumentError, 'provider cannot be nil'
      end

      @provider = provider
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          provider == o.provider &&
          key == o.key &&
          base_url == o.base_url &&
          is_cloud_provider == o.is_cloud_provider &&
          headers == o.headers
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [provider, key, base_url, is_cloud_provider, headers].hash
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
