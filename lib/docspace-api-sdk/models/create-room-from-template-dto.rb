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
  # The parameters for creating a room from a template.
  class CreateRoomFromTemplateDto < ApiModelBase
    # The template ID from which the room to be created.
    attr_accessor :template_id

    # The room title.
    attr_accessor :title

    # The logo request parameters.
    attr_accessor :logo

    # Specifies whether to copy a logo or not.
    attr_accessor :copy_logo

    # The collection of tags.
    attr_accessor :tags

    # The color of the room to be created.
    attr_accessor :color

    # The cover of the room to be created.
    attr_accessor :cover

    # The room quota.
    attr_accessor :quota

    # Specifies whether to create a room with indexing.
    attr_accessor :indexing

    # Specifies whether to deny downloads from the room.
    attr_accessor :deny_download

    # The room data lifetime information.
    attr_accessor :lifetime

    # The watermark settings.
    attr_accessor :watermark

    # Specifies whether the room to be created is private or not.
    attr_accessor :private

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'template_id' => :'templateId',
        :'title' => :'title',
        :'logo' => :'logo',
        :'copy_logo' => :'copyLogo',
        :'tags' => :'tags',
        :'color' => :'color',
        :'cover' => :'cover',
        :'quota' => :'quota',
        :'indexing' => :'indexing',
        :'deny_download' => :'denyDownload',
        :'lifetime' => :'lifetime',
        :'watermark' => :'watermark',
        :'private' => :'private'
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
        :'template_id' => :'Integer',
        :'title' => :'String',
        :'logo' => :'LogoRequest',
        :'copy_logo' => :'Boolean',
        :'tags' => :'Array<String>',
        :'color' => :'String',
        :'cover' => :'String',
        :'quota' => :'Integer',
        :'indexing' => :'Boolean',
        :'deny_download' => :'Boolean',
        :'lifetime' => :'RoomDataLifetimeDto',
        :'watermark' => :'WatermarkRequestDto',
        :'private' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'title',
        :'tags',
        :'color',
        :'cover',
        :'quota',
        :'indexing',
        :'deny_download',
        :'private'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::CreateRoomFromTemplateDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::CreateRoomFromTemplateDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'template_id')
        self.template_id = attributes[:'template_id']
      else
        self.template_id = nil
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      else
        self.title = nil
      end

      if attributes.key?(:'logo')
        self.logo = attributes[:'logo']
      end

      if attributes.key?(:'copy_logo')
        self.copy_logo = attributes[:'copy_logo']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'color')
        self.color = attributes[:'color']
      end

      if attributes.key?(:'cover')
        self.cover = attributes[:'cover']
      end

      if attributes.key?(:'quota')
        self.quota = attributes[:'quota']
      end

      if attributes.key?(:'indexing')
        self.indexing = attributes[:'indexing']
      end

      if attributes.key?(:'deny_download')
        self.deny_download = attributes[:'deny_download']
      end

      if attributes.key?(:'lifetime')
        self.lifetime = attributes[:'lifetime']
      end

      if attributes.key?(:'watermark')
        self.watermark = attributes[:'watermark']
      end

      if attributes.key?(:'private')
        self.private = attributes[:'private']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @template_id.nil?
        invalid_properties.push('invalid value for "template_id", template_id cannot be nil.')
      end

      if @title.to_s.length > 170
        invalid_properties.push('invalid value for "title", the character length must be smaller than or equal to 170.')
      end

      if @title.to_s.length < 0
        invalid_properties.push('invalid value for "title", the character length must be greater than or equal to 0.')
      end

      if !@color.nil? && @color.to_s.length > 6
        invalid_properties.push('invalid value for "color", the character length must be smaller than or equal to 6.')
      end

      if !@color.nil? && @color.to_s.length < 0
        invalid_properties.push('invalid value for "color", the character length must be greater than or equal to 0.')
      end

      if !@cover.nil? && @cover.to_s.length > 50
        invalid_properties.push('invalid value for "cover", the character length must be smaller than or equal to 50.')
      end

      if !@cover.nil? && @cover.to_s.length < 0
        invalid_properties.push('invalid value for "cover", the character length must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @template_id.nil?
      return false if @title.to_s.length > 170
      return false if @title.to_s.length < 0
      return false if !@color.nil? && @color.to_s.length > 6
      return false if !@color.nil? && @color.to_s.length < 0
      return false if !@cover.nil? && @cover.to_s.length > 50
      return false if !@cover.nil? && @cover.to_s.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] template_id Value to be assigned
    def template_id=(template_id)
      if template_id.nil?
        fail ArgumentError, 'template_id cannot be nil'
      end

      @template_id = template_id
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      if !title.nil? && title.to_s.length > 170
        fail ArgumentError, 'invalid value for "title", the character length must be smaller than or equal to 170.'
      end

      if !title.nil? && title.to_s.length < 0
        fail ArgumentError, 'invalid value for "title", the character length must be greater than or equal to 0.'
      end

      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] color Value to be assigned
    def color=(color)
      if !color.nil? && color.to_s.length > 6
        fail ArgumentError, 'invalid value for "color", the character length must be smaller than or equal to 6.'
      end

      if !color.nil? && color.to_s.length < 0
        fail ArgumentError, 'invalid value for "color", the character length must be greater than or equal to 0.'
      end

      @color = color
    end

    # Custom attribute writer method with validation
    # @param [Object] cover Value to be assigned
    def cover=(cover)
      if !cover.nil? && cover.to_s.length > 50
        fail ArgumentError, 'invalid value for "cover", the character length must be smaller than or equal to 50.'
      end

      if !cover.nil? && cover.to_s.length < 0
        fail ArgumentError, 'invalid value for "cover", the character length must be greater than or equal to 0.'
      end

      @cover = cover
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          template_id == o.template_id &&
          title == o.title &&
          logo == o.logo &&
          copy_logo == o.copy_logo &&
          tags == o.tags &&
          color == o.color &&
          cover == o.cover &&
          quota == o.quota &&
          indexing == o.indexing &&
          deny_download == o.deny_download &&
          lifetime == o.lifetime &&
          watermark == o.watermark &&
          private == o.private
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [template_id, title, logo, copy_logo, tags, color, cover, quota, indexing, deny_download, lifetime, watermark, private].hash
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
