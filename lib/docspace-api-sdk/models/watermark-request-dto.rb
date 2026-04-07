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
  # The request parameters for adding watermarks.
  class WatermarkRequestDto < ApiModelBase
    # Specifies whether watermarks are on or off.
    attr_accessor :enabled

    attr_accessor :additions

    # The watermark text.
    attr_accessor :text

    # The watermark text and image rotate angle.
    attr_accessor :rotate

    # The watermark image scale.
    attr_accessor :image_scale

    # The path to the temporary image file.
    attr_accessor :image_url

    # The watermark image height.
    attr_accessor :image_height

    # The watermark image width.
    attr_accessor :image_width

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
        :'enabled' => :'enabled',
        :'additions' => :'additions',
        :'text' => :'text',
        :'rotate' => :'rotate',
        :'image_scale' => :'imageScale',
        :'image_url' => :'imageUrl',
        :'image_height' => :'imageHeight',
        :'image_width' => :'imageWidth'
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
        :'enabled' => :'Boolean',
        :'additions' => :'WatermarkAdditions',
        :'text' => :'String',
        :'rotate' => :'Integer',
        :'image_scale' => :'Integer',
        :'image_url' => :'String',
        :'image_height' => :'Float',
        :'image_width' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'enabled',
        :'text',
        :'image_url',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::WatermarkRequestDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::WatermarkRequestDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'additions')
        self.additions = attributes[:'additions']
      end

      if attributes.key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.key?(:'rotate')
        self.rotate = attributes[:'rotate']
      end

      if attributes.key?(:'image_scale')
        self.image_scale = attributes[:'image_scale']
      end

      if attributes.key?(:'image_url')
        self.image_url = attributes[:'image_url']
      end

      if attributes.key?(:'image_height')
        self.image_height = attributes[:'image_height']
      end

      if attributes.key?(:'image_width')
        self.image_width = attributes[:'image_width']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@text.nil? && @text.to_s.length > 255
        invalid_properties.push('invalid value for "text", the character length must be smaller than or equal to 255.')
      end

      if !@text.nil? && @text.to_s.length < 0
        invalid_properties.push('invalid value for "text", the character length must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@text.nil? && @text.to_s.length > 255
      return false if !@text.nil? && @text.to_s.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] text Value to be assigned
    def text=(text)
      if !text.nil? && text.to_s.length > 255
        fail ArgumentError, 'invalid value for "text", the character length must be smaller than or equal to 255.'
      end

      if !text.nil? && text.to_s.length < 0
        fail ArgumentError, 'invalid value for "text", the character length must be greater than or equal to 0.'
      end

      @text = text
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          enabled == o.enabled &&
          additions == o.additions &&
          text == o.text &&
          rotate == o.rotate &&
          image_scale == o.image_scale &&
          image_url == o.image_url &&
          image_height == o.image_height &&
          image_width == o.image_width
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [enabled, additions, text, rotate, image_scale, image_url, image_height, image_width].hash
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
