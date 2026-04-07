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
  # The file accessibility.
  class FileDtoIntegerAllOfViewAccessibility < ApiModelBase
    attr_accessor :image_view

    attr_accessor :media_view

    attr_accessor :web_view

    attr_accessor :web_edit

    attr_accessor :web_review

    attr_accessor :web_custom_filter_editing

    attr_accessor :web_restricted_editing

    attr_accessor :web_comment

    attr_accessor :can_convert

    attr_accessor :must_convert

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'image_view' => :'ImageView',
        :'media_view' => :'MediaView',
        :'web_view' => :'WebView',
        :'web_edit' => :'WebEdit',
        :'web_review' => :'WebReview',
        :'web_custom_filter_editing' => :'WebCustomFilterEditing',
        :'web_restricted_editing' => :'WebRestrictedEditing',
        :'web_comment' => :'WebComment',
        :'can_convert' => :'CanConvert',
        :'must_convert' => :'MustConvert'
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
        :'image_view' => :'Boolean',
        :'media_view' => :'Boolean',
        :'web_view' => :'Boolean',
        :'web_edit' => :'Boolean',
        :'web_review' => :'Boolean',
        :'web_custom_filter_editing' => :'Boolean',
        :'web_restricted_editing' => :'Boolean',
        :'web_comment' => :'Boolean',
        :'can_convert' => :'Boolean',
        :'must_convert' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::FileDtoIntegerAllOfViewAccessibility` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::FileDtoIntegerAllOfViewAccessibility`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'image_view')
        self.image_view = attributes[:'image_view']
      end

      if attributes.key?(:'media_view')
        self.media_view = attributes[:'media_view']
      end

      if attributes.key?(:'web_view')
        self.web_view = attributes[:'web_view']
      end

      if attributes.key?(:'web_edit')
        self.web_edit = attributes[:'web_edit']
      end

      if attributes.key?(:'web_review')
        self.web_review = attributes[:'web_review']
      end

      if attributes.key?(:'web_custom_filter_editing')
        self.web_custom_filter_editing = attributes[:'web_custom_filter_editing']
      end

      if attributes.key?(:'web_restricted_editing')
        self.web_restricted_editing = attributes[:'web_restricted_editing']
      end

      if attributes.key?(:'web_comment')
        self.web_comment = attributes[:'web_comment']
      end

      if attributes.key?(:'can_convert')
        self.can_convert = attributes[:'can_convert']
      end

      if attributes.key?(:'must_convert')
        self.must_convert = attributes[:'must_convert']
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
          image_view == o.image_view &&
          media_view == o.media_view &&
          web_view == o.web_view &&
          web_edit == o.web_edit &&
          web_review == o.web_review &&
          web_custom_filter_editing == o.web_custom_filter_editing &&
          web_restricted_editing == o.web_restricted_editing &&
          web_comment == o.web_comment &&
          can_convert == o.can_convert &&
          must_convert == o.must_convert
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [image_view, media_view, web_view, web_edit, web_review, web_custom_filter_editing, web_restricted_editing, web_comment, can_convert, must_convert].hash
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
