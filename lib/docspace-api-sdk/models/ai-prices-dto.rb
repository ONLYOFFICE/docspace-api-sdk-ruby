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
  # What the AI features cost out of the portal wallet, grouped by the kind of model, in one currency.
  class AiPricesDto < ApiModelBase
    # The chat models on offer, each priced per million prompt and completion tokens. A model listed here is one  the installation can bill for, not necessarily one this portal may use -  `GET api/2.0/portal/payment/ai-model/restrictions` says which are allowed.
    attr_accessor :chat

    # The embedding models on offer, priced per million tokens of input; an embedding model has no completion  side, so its price object carries `prompt` alone.
    attr_accessor :embedding

    # The image models on offer, priced per million prompt and completion tokens plus a price for each image  produced.
    attr_accessor :image

    # The web search providers on offer. Their `price` is a bare number - the cost of one search - rather than  an object, because there are no tokens to distinguish.
    attr_accessor :web_search

    # The currency every price above is expressed in, with its ISO code and symbol. One answer never mixes  currencies, so this is the only place to read it.
    attr_accessor :currency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'chat' => :'chat',
        :'embedding' => :'embedding',
        :'image' => :'image',
        :'web_search' => :'webSearch',
        :'currency' => :'currency'
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
        :'chat' => :'Array<AiEntryPricingDtoAiChatPriceDto>',
        :'embedding' => :'Array<AiEntryPricingDtoAiEmbeddingPriceDto>',
        :'image' => :'Array<AiEntryPricingDtoAiImagePriceDto>',
        :'web_search' => :'Array<AiEntryPricingDtoDecimal>',
        :'currency' => :'CurrencyInfo'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'chat',
        :'embedding',
        :'image',
        :'web_search',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AiPricesDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AiPricesDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'chat')
        if (value = attributes[:'chat']).is_a?(Array)
          self.chat = value
        end
      else
        self.chat = nil
      end

      if attributes.key?(:'embedding')
        if (value = attributes[:'embedding']).is_a?(Array)
          self.embedding = value
        end
      else
        self.embedding = nil
      end

      if attributes.key?(:'image')
        if (value = attributes[:'image']).is_a?(Array)
          self.image = value
        end
      else
        self.image = nil
      end

      if attributes.key?(:'web_search')
        if (value = attributes[:'web_search']).is_a?(Array)
          self.web_search = value
        end
      else
        self.web_search = nil
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @currency.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] currency Value to be assigned
    def currency=(currency)
      if currency.nil?
        fail ArgumentError, 'currency cannot be nil'
      end

      @currency = currency
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          chat == o.chat &&
          embedding == o.embedding &&
          image == o.image &&
          web_search == o.web_search &&
          currency == o.currency
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [chat, embedding, image, web_search, currency].hash
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
