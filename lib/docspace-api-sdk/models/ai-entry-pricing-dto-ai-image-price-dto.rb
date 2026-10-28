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
  # One AI model or service on the price list: how to name it, who provides it, and what it costs.
  class AiEntryPricingDtoAiImagePriceDto < ApiModelBase
    # The model identifier to send to the AI operations. It is the value to branch on, while `alias` is for display  only.
    attr_accessor :id

    # The model name as the vendor writes it, meant to be shown to a person rather than matched on.
    attr_accessor :_alias

    # Who runs the model. Two entries can share a provider, and one provider's models can be priced quite  differently, so the price always belongs to the entry and never to the provider.
    attr_accessor :provider

    # The absolute URL of the provider's icon, for rendering next to the entry.
    attr_accessor :image

    # What the entry costs, in the currency the answer names. Amounts per token are normalised per million  tokens, so they are not the price of a single call.
    attr_accessor :price

    # The provider's own page for the model, for a person to read the model's terms. It is empty when the  provider publishes none.
    attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'_alias' => :'alias',
        :'provider' => :'provider',
        :'image' => :'image',
        :'price' => :'price',
        :'link' => :'link'
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
        :'_alias' => :'String',
        :'provider' => :'String',
        :'image' => :'String',
        :'price' => :'AiImagePriceDto',
        :'link' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'_alias',
        :'provider',
        :'image',
        :'link'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AiEntryPricingDtoAiImagePriceDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AiEntryPricingDtoAiImagePriceDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'_alias')
        self._alias = attributes[:'_alias']
      else
        self._alias = nil
      end

      if attributes.key?(:'provider')
        self.provider = attributes[:'provider']
      else
        self.provider = nil
      end

      if attributes.key?(:'image')
        self.image = attributes[:'image']
      else
        self.image = nil
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      else
        self.price = nil
      end

      if attributes.key?(:'link')
        self.link = attributes[:'link']
      else
        self.link = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @price.nil?
        invalid_properties.push('invalid value for "price", price cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @price.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] price Value to be assigned
    def price=(price)
      if price.nil?
        fail ArgumentError, 'price cannot be nil'
      end

      @price = price
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          _alias == o._alias &&
          provider == o.provider &&
          image == o.image &&
          price == o.price &&
          link == o.link
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, _alias, provider, image, price, link].hash
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
