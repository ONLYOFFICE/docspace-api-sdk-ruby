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
  # The editor configuration parameters.
  class EditorConfigurationDto < ApiModelBase
    # The callback URL of the editor.
    attr_accessor :callback_url

    attr_accessor :co_editing

    # The creation URL of the editor.
    attr_accessor :create_url

    attr_accessor :customization

    attr_accessor :embedded

    attr_accessor :encryption_keys

    # The language of the editor configuration.
    attr_accessor :lang

    # The mode of the editor configuration.
    attr_accessor :mode

    # Specifies if the mode is write of the editor configuration.
    attr_accessor :mode_write

    attr_accessor :plugins

    # The recent configuration of the editor.
    attr_accessor :recent

    # The templates of the editor configuration.
    attr_accessor :templates

    attr_accessor :user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'callback_url' => :'callbackUrl',
        :'co_editing' => :'coEditing',
        :'create_url' => :'createUrl',
        :'customization' => :'customization',
        :'embedded' => :'embedded',
        :'encryption_keys' => :'encryptionKeys',
        :'lang' => :'lang',
        :'mode' => :'mode',
        :'mode_write' => :'modeWrite',
        :'plugins' => :'plugins',
        :'recent' => :'recent',
        :'templates' => :'templates',
        :'user' => :'user'
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
        :'callback_url' => :'String',
        :'co_editing' => :'CoEditingConfig',
        :'create_url' => :'String',
        :'customization' => :'CustomizationConfigDto',
        :'embedded' => :'EmbeddedConfig',
        :'encryption_keys' => :'EncryptionKeysConfig',
        :'lang' => :'String',
        :'mode' => :'String',
        :'mode_write' => :'Boolean',
        :'plugins' => :'PluginsConfig',
        :'recent' => :'Array<RecentConfig>',
        :'templates' => :'Array<TemplatesConfig>',
        :'user' => :'UserConfig'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'callback_url',
        :'create_url',
        :'lang',
        :'mode',
        :'recent',
        :'templates',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::EditorConfigurationDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::EditorConfigurationDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'callback_url')
        self.callback_url = attributes[:'callback_url']
      end

      if attributes.key?(:'co_editing')
        self.co_editing = attributes[:'co_editing']
      end

      if attributes.key?(:'create_url')
        self.create_url = attributes[:'create_url']
      end

      if attributes.key?(:'customization')
        self.customization = attributes[:'customization']
      end

      if attributes.key?(:'embedded')
        self.embedded = attributes[:'embedded']
      end

      if attributes.key?(:'encryption_keys')
        self.encryption_keys = attributes[:'encryption_keys']
      end

      if attributes.key?(:'lang')
        self.lang = attributes[:'lang']
      else
        self.lang = nil
      end

      if attributes.key?(:'mode')
        self.mode = attributes[:'mode']
      else
        self.mode = nil
      end

      if attributes.key?(:'mode_write')
        self.mode_write = attributes[:'mode_write']
      end

      if attributes.key?(:'plugins')
        self.plugins = attributes[:'plugins']
      end

      if attributes.key?(:'recent')
        if (value = attributes[:'recent']).is_a?(Array)
          self.recent = value
        end
      end

      if attributes.key?(:'templates')
        if (value = attributes[:'templates']).is_a?(Array)
          self.templates = value
        end
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
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
          callback_url == o.callback_url &&
          co_editing == o.co_editing &&
          create_url == o.create_url &&
          customization == o.customization &&
          embedded == o.embedded &&
          encryption_keys == o.encryption_keys &&
          lang == o.lang &&
          mode == o.mode &&
          mode_write == o.mode_write &&
          plugins == o.plugins &&
          recent == o.recent &&
          templates == o.templates &&
          user == o.user
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [callback_url, co_editing, create_url, customization, embedded, encryption_keys, lang, mode, mode_write, plugins, recent, templates, user].hash
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
