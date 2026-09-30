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
  # One feature a quota switches on, with the limit it grants and how much of that limit is used.
  class TenantQuotaFeatureDto < ApiModelBase
    # The stable key of the feature - `total_size`, `manager`, `room`, `backup` and so on. It is the value to  branch on, since `title` is prose in the portal language.
    attr_accessor :id

    # The feature described in the portal language, with its limit already substituted into the sentence, so it  can be printed as it is. It is empty when this build ships no wording for the feature.
    attr_accessor :title

    # The feature's icon as SVG markup to render inline - not a URL to fetch. It is filled in only when the  quota comes from the catalogue, and left empty on the quota the portal is actually on, on a feature that  this quota switches off, and on a feature that ships no icon.
    attr_accessor :image

    attr_accessor :value

    # How to read `value` and `used`: `size` for bytes, `count` for a number of things, `flag` for a feature  that is merely on or off.
    attr_accessor :type

    # How much of the limit is already used. It is present only on the quota the portal is actually on, and  only for a feature whose consumption is counted; a guest is shown none of these figures and a plain member  only the one for total size, so an absent value can mean the caller may not see it rather than that  nothing is used.
    attr_accessor :used

    # What the feature is charged as, in the portal language - for instance the per-unit price of an add-on. It  is filled in only for a feature that costs money on top of the plan.
    attr_accessor :price_title

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'title' => :'title',
        :'image' => :'image',
        :'value' => :'value',
        :'type' => :'type',
        :'used' => :'used',
        :'price_title' => :'priceTitle'
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
        :'title' => :'String',
        :'image' => :'String',
        :'value' => :'Object',
        :'type' => :'String',
        :'used' => :'FeatureUsedDto',
        :'price_title' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'title',
        :'image',
        :'value',
        :'type',
        :'price_title'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::TenantQuotaFeatureDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::TenantQuotaFeatureDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'image')
        self.image = attributes[:'image']
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'used')
        self.used = attributes[:'used']
      end

      if attributes.key?(:'price_title')
        self.price_title = attributes[:'price_title']
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
          id == o.id &&
          title == o.title &&
          image == o.image &&
          value == o.value &&
          type == o.type &&
          used == o.used &&
          price_title == o.price_title
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, title, image, value, type, used, price_title].hash
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
