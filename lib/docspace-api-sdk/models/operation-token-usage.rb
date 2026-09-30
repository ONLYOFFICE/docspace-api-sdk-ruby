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
  # Tokens an AI operation consumed, as recorded in the operation metadata. A kind the provider did not report is `0`.
  class OperationTokenUsage < ApiModelBase
    # All tokens of the request: prompt plus completion.
    attr_accessor :total_tokens

    # Tokens sent to the model, cached ones included.
    attr_accessor :prompt_tokens

    # Tokens the model generated, reasoning ones included.
    attr_accessor :completion_tokens

    # Part of the prompt tokens read from the provider cache.
    attr_accessor :cached_tokens

    # Part of the prompt tokens written to the provider cache.
    attr_accessor :cache_write_tokens

    # Part of the completion tokens the model spent on reasoning.
    attr_accessor :reasoning_tokens

    # Tokens spent on images.
    attr_accessor :image_tokens

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'total_tokens' => :'totalTokens',
        :'prompt_tokens' => :'promptTokens',
        :'completion_tokens' => :'completionTokens',
        :'cached_tokens' => :'cachedTokens',
        :'cache_write_tokens' => :'cacheWriteTokens',
        :'reasoning_tokens' => :'reasoningTokens',
        :'image_tokens' => :'imageTokens'
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
        :'total_tokens' => :'Integer',
        :'prompt_tokens' => :'Integer',
        :'completion_tokens' => :'Integer',
        :'cached_tokens' => :'Integer',
        :'cache_write_tokens' => :'Integer',
        :'reasoning_tokens' => :'Integer',
        :'image_tokens' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::OperationTokenUsage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::OperationTokenUsage`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'total_tokens')
        self.total_tokens = attributes[:'total_tokens']
      end

      if attributes.key?(:'prompt_tokens')
        self.prompt_tokens = attributes[:'prompt_tokens']
      end

      if attributes.key?(:'completion_tokens')
        self.completion_tokens = attributes[:'completion_tokens']
      end

      if attributes.key?(:'cached_tokens')
        self.cached_tokens = attributes[:'cached_tokens']
      end

      if attributes.key?(:'cache_write_tokens')
        self.cache_write_tokens = attributes[:'cache_write_tokens']
      end

      if attributes.key?(:'reasoning_tokens')
        self.reasoning_tokens = attributes[:'reasoning_tokens']
      end

      if attributes.key?(:'image_tokens')
        self.image_tokens = attributes[:'image_tokens']
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
          total_tokens == o.total_tokens &&
          prompt_tokens == o.prompt_tokens &&
          completion_tokens == o.completion_tokens &&
          cached_tokens == o.cached_tokens &&
          cache_write_tokens == o.cache_write_tokens &&
          reasoning_tokens == o.reasoning_tokens &&
          image_tokens == o.image_tokens
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [total_tokens, prompt_tokens, completion_tokens, cached_tokens, cache_write_tokens, reasoning_tokens, image_tokens].hash
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
