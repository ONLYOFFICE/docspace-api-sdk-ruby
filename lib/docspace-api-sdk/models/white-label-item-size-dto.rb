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
  # The pixel box a logo slot is drawn in, in the shape the imaging library reports a geometry.
  class WhiteLabelItemSizeDto < ApiModelBase
    # Whether the numbers are to be read as an aspect ratio rather than as pixels. Always `false` on the sizes  this API reports.
    attr_accessor :aspect_ratio

    # Whether an image would be scaled to cover the box rather than to fit inside it. Always `false` here.
    attr_accessor :fill_area

    # Whether scaling would apply only to an image larger than the box. Always `false` here.
    attr_accessor :greater

    # The height of the box in pixels - one of the two fields of this object that carry information.
    attr_accessor :height

    # Whether scaling would be allowed to distort the image. Always `false` here.
    attr_accessor :ignore_aspect_ratio

    # Whether `width` and `height` are to be read as percentages. Always `false` here, so both are pixels.
    attr_accessor :is_percentage

    # Whether scaling would apply only to an image smaller than the box. Always `false` here.
    attr_accessor :less

    # Whether the box is to be read as a total pixel-area budget instead of as two dimensions. Always `false`  here.
    attr_accessor :limit_pixels

    # The width of the box in pixels - the other field of this object that carries information.
    attr_accessor :width

    # The horizontal offset of the box from the origin. Always `0` here.
    attr_accessor :x

    # The vertical offset of the box from the origin. Always `0` here.
    attr_accessor :y

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'aspect_ratio' => :'aspectRatio',
        :'fill_area' => :'fillArea',
        :'greater' => :'greater',
        :'height' => :'height',
        :'ignore_aspect_ratio' => :'ignoreAspectRatio',
        :'is_percentage' => :'isPercentage',
        :'less' => :'less',
        :'limit_pixels' => :'limitPixels',
        :'width' => :'width',
        :'x' => :'x',
        :'y' => :'y'
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
        :'aspect_ratio' => :'Boolean',
        :'fill_area' => :'Boolean',
        :'greater' => :'Boolean',
        :'height' => :'Integer',
        :'ignore_aspect_ratio' => :'Boolean',
        :'is_percentage' => :'Boolean',
        :'less' => :'Boolean',
        :'limit_pixels' => :'Boolean',
        :'width' => :'Integer',
        :'x' => :'Integer',
        :'y' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::WhiteLabelItemSizeDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::WhiteLabelItemSizeDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'aspect_ratio')
        self.aspect_ratio = attributes[:'aspect_ratio']
      end

      if attributes.key?(:'fill_area')
        self.fill_area = attributes[:'fill_area']
      end

      if attributes.key?(:'greater')
        self.greater = attributes[:'greater']
      end

      if attributes.key?(:'height')
        self.height = attributes[:'height']
      end

      if attributes.key?(:'ignore_aspect_ratio')
        self.ignore_aspect_ratio = attributes[:'ignore_aspect_ratio']
      end

      if attributes.key?(:'is_percentage')
        self.is_percentage = attributes[:'is_percentage']
      end

      if attributes.key?(:'less')
        self.less = attributes[:'less']
      end

      if attributes.key?(:'limit_pixels')
        self.limit_pixels = attributes[:'limit_pixels']
      end

      if attributes.key?(:'width')
        self.width = attributes[:'width']
      end

      if attributes.key?(:'x')
        self.x = attributes[:'x']
      end

      if attributes.key?(:'y')
        self.y = attributes[:'y']
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
          aspect_ratio == o.aspect_ratio &&
          fill_area == o.fill_area &&
          greater == o.greater &&
          height == o.height &&
          ignore_aspect_ratio == o.ignore_aspect_ratio &&
          is_percentage == o.is_percentage &&
          less == o.less &&
          limit_pixels == o.limit_pixels &&
          width == o.width &&
          x == o.x &&
          y == o.y
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [aspect_ratio, fill_area, greater, height, ignore_aspect_ratio, is_percentage, less, limit_pixels, width, x, y].hash
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
