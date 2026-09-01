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
  # The user parameters.
  class AiEmployeeDto < ApiModelBase
    # The user ID.
    attr_accessor :id

    # The HTML-encoded user's display name formatted according to the default format for the current culture.
    attr_accessor :display_name

    # The user avatar.
    attr_accessor :avatar

    # The user original size avatar.
    attr_accessor :avatar_original

    # The user maximum size avatar.
    attr_accessor :avatar_max

    # The user medium size avatar.
    attr_accessor :avatar_medium

    # The user small size avatar.
    attr_accessor :avatar_small

    # The user profile URL.
    attr_accessor :profile_url

    # Specifies if the user has an avatar or not.
    attr_accessor :has_avatar

    # Specifies if the user is anonymous or not.
    attr_accessor :is_anonim

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'display_name' => :'displayName',
        :'avatar' => :'avatar',
        :'avatar_original' => :'avatarOriginal',
        :'avatar_max' => :'avatarMax',
        :'avatar_medium' => :'avatarMedium',
        :'avatar_small' => :'avatarSmall',
        :'profile_url' => :'profileUrl',
        :'has_avatar' => :'hasAvatar',
        :'is_anonim' => :'isAnonim'
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
        :'display_name' => :'String',
        :'avatar' => :'String',
        :'avatar_original' => :'String',
        :'avatar_max' => :'String',
        :'avatar_medium' => :'String',
        :'avatar_small' => :'String',
        :'profile_url' => :'String',
        :'has_avatar' => :'Boolean',
        :'is_anonim' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'display_name',
        :'avatar',
        :'avatar_original',
        :'avatar_max',
        :'avatar_medium',
        :'avatar_small',
        :'profile_url',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AiEmployeeDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AiEmployeeDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'avatar')
        self.avatar = attributes[:'avatar']
      end

      if attributes.key?(:'avatar_original')
        self.avatar_original = attributes[:'avatar_original']
      end

      if attributes.key?(:'avatar_max')
        self.avatar_max = attributes[:'avatar_max']
      end

      if attributes.key?(:'avatar_medium')
        self.avatar_medium = attributes[:'avatar_medium']
      end

      if attributes.key?(:'avatar_small')
        self.avatar_small = attributes[:'avatar_small']
      end

      if attributes.key?(:'profile_url')
        self.profile_url = attributes[:'profile_url']
      end

      if attributes.key?(:'has_avatar')
        self.has_avatar = attributes[:'has_avatar']
      end

      if attributes.key?(:'is_anonim')
        self.is_anonim = attributes[:'is_anonim']
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
          display_name == o.display_name &&
          avatar == o.avatar &&
          avatar_original == o.avatar_original &&
          avatar_max == o.avatar_max &&
          avatar_medium == o.avatar_medium &&
          avatar_small == o.avatar_small &&
          profile_url == o.profile_url &&
          has_avatar == o.has_avatar &&
          is_anonim == o.is_anonim
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, display_name, avatar, avatar_original, avatar_max, avatar_medium, avatar_small, profile_url, has_avatar, is_anonim].hash
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
