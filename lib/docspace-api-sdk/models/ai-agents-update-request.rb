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
  class AiAgentsUpdateRequest < ApiModelBase
    # Profile id to rebind (optional).
    attr_accessor :profile_id

    # Chat settings (`ChatSettings`); requires a valid provider/model.
    attr_accessor :chat_settings

    # Whether form results are sent to an external DB.
    attr_accessor :send_form_to_external_db

    # Whether forms are saved as XLSX.
    attr_accessor :save_form_as_xlsx

    # Agent (room) title.
    attr_accessor :title

    # Room quota in bytes.
    attr_accessor :quota

    # Whether room content is indexed for search.
    attr_accessor :indexing

    # Whether downloading room content is denied.
    attr_accessor :deny_download

    # Room data lifetime policy (`RoomDataLifetimeDto`).
    attr_accessor :lifetime

    # Watermark settings (`WatermarkRequestDto`).
    attr_accessor :watermark

    # Room logo (`LogoRequest`).
    attr_accessor :logo

    # Room tags.
    attr_accessor :tags

    # Room accent color.
    attr_accessor :color

    # Room cover image id.
    attr_accessor :cover

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'profile_id' => :'profileId',
        :'chat_settings' => :'chatSettings',
        :'send_form_to_external_db' => :'sendFormToExternalDB',
        :'save_form_as_xlsx' => :'saveFormAsXLSX',
        :'title' => :'title',
        :'quota' => :'quota',
        :'indexing' => :'indexing',
        :'deny_download' => :'denyDownload',
        :'lifetime' => :'lifetime',
        :'watermark' => :'watermark',
        :'logo' => :'logo',
        :'tags' => :'tags',
        :'color' => :'color',
        :'cover' => :'cover'
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
        :'profile_id' => :'String',
        :'chat_settings' => :'Object',
        :'send_form_to_external_db' => :'Boolean',
        :'save_form_as_xlsx' => :'Boolean',
        :'title' => :'String',
        :'quota' => :'Float',
        :'indexing' => :'Boolean',
        :'deny_download' => :'Boolean',
        :'lifetime' => :'Object',
        :'watermark' => :'Object',
        :'logo' => :'Object',
        :'tags' => :'Array<String>',
        :'color' => :'String',
        :'cover' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AiAgentsUpdateRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AiAgentsUpdateRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'profile_id')
        self.profile_id = attributes[:'profile_id']
      end

      if attributes.key?(:'chat_settings')
        self.chat_settings = attributes[:'chat_settings']
      end

      if attributes.key?(:'send_form_to_external_db')
        self.send_form_to_external_db = attributes[:'send_form_to_external_db']
      end

      if attributes.key?(:'save_form_as_xlsx')
        self.save_form_as_xlsx = attributes[:'save_form_as_xlsx']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
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

      if attributes.key?(:'logo')
        self.logo = attributes[:'logo']
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
          profile_id == o.profile_id &&
          chat_settings == o.chat_settings &&
          send_form_to_external_db == o.send_form_to_external_db &&
          save_form_as_xlsx == o.save_form_as_xlsx &&
          title == o.title &&
          quota == o.quota &&
          indexing == o.indexing &&
          deny_download == o.deny_download &&
          lifetime == o.lifetime &&
          watermark == o.watermark &&
          logo == o.logo &&
          tags == o.tags &&
          color == o.color &&
          cover == o.cover
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [profile_id, chat_settings, send_form_to_external_db, save_form_as_xlsx, title, quota, indexing, deny_download, lifetime, watermark, logo, tags, color, cover].hash
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
