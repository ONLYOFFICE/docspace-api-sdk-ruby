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
  # The parameters for creating a third-party room.
  class CreateThirdPartyRoom < ApiModelBase
    # Specifies whether to create a third-party room as a new folder or not.
    attr_accessor :create_as_new_folder

    # The third-party room name to be created.
    attr_accessor :title

    attr_accessor :room_type

    # Specifies whether to create the private third-party room or not.
    attr_accessor :private

    # Specifies whether to create the third-party room with indexing.
    attr_accessor :indexing

    # Specifies whether to deny downloads from the third-party room.
    attr_accessor :deny_download

    # The color of the third-party room.
    attr_accessor :color

    # The cover of the third-party room.
    attr_accessor :cover

    # The list of tags of the third-party room.
    attr_accessor :tags

    attr_accessor :logo

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
        :'create_as_new_folder' => :'createAsNewFolder',
        :'title' => :'title',
        :'room_type' => :'roomType',
        :'private' => :'private',
        :'indexing' => :'indexing',
        :'deny_download' => :'denyDownload',
        :'color' => :'color',
        :'cover' => :'cover',
        :'tags' => :'tags',
        :'logo' => :'logo'
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
        :'create_as_new_folder' => :'Boolean',
        :'title' => :'String',
        :'room_type' => :'RoomType',
        :'private' => :'Boolean',
        :'indexing' => :'Boolean',
        :'deny_download' => :'Boolean',
        :'color' => :'String',
        :'cover' => :'String',
        :'tags' => :'Array<String>',
        :'logo' => :'LogoRequest'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'title',
        :'color',
        :'cover',
        :'tags',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::CreateThirdPartyRoom` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::CreateThirdPartyRoom`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'create_as_new_folder')
        self.create_as_new_folder = attributes[:'create_as_new_folder']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      else
        self.title = nil
      end

      if attributes.key?(:'room_type')
        self.room_type = attributes[:'room_type']
      else
        self.room_type = nil
      end

      if attributes.key?(:'private')
        self.private = attributes[:'private']
      end

      if attributes.key?(:'indexing')
        self.indexing = attributes[:'indexing']
      end

      if attributes.key?(:'deny_download')
        self.deny_download = attributes[:'deny_download']
      end

      if attributes.key?(:'color')
        self.color = attributes[:'color']
      end

      if attributes.key?(:'cover')
        self.cover = attributes[:'cover']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'logo')
        self.logo = attributes[:'logo']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @room_type.nil?
        invalid_properties.push('invalid value for "room_type", room_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @room_type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] room_type Value to be assigned
    def room_type=(room_type)
      if room_type.nil?
        fail ArgumentError, 'room_type cannot be nil'
      end

      @room_type = room_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          create_as_new_folder == o.create_as_new_folder &&
          title == o.title &&
          room_type == o.room_type &&
          private == o.private &&
          indexing == o.indexing &&
          deny_download == o.deny_download &&
          color == o.color &&
          cover == o.cover &&
          tags == o.tags &&
          logo == o.logo
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [create_as_new_folder, title, room_type, private, indexing, deny_download, color, cover, tags, logo].hash
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
