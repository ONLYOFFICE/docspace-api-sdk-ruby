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
  # The addresses the framed viewer needs. It is reported for the embedded layout only.
  class EmbeddedConfig < ApiModelBase
    # The page to put into the frame. It is empty when the opening carries no external share key, since a framed  viewer cannot authenticate a portal member.
    attr_accessor :embed_url

    # Where the download button of the framed viewer leads.
    attr_accessor :save_url

    # The query fragment carrying the external share key, ampersand included, out of which the addresses around it  are built.
    attr_accessor :share_link_param

    # The address behind the share button of the framed viewer, the document opened full-screen for reading. It is  empty when the opening carries no external share key.
    attr_accessor :share_url

    # Where the framed viewer puts its toolbar. The portal always asks for the top.
    attr_accessor :toolbar_docked

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'embed_url' => :'embedUrl',
        :'save_url' => :'saveUrl',
        :'share_link_param' => :'shareLinkParam',
        :'share_url' => :'shareUrl',
        :'toolbar_docked' => :'toolbarDocked'
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
        :'embed_url' => :'String',
        :'save_url' => :'String',
        :'share_link_param' => :'String',
        :'share_url' => :'String',
        :'toolbar_docked' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'embed_url',
        :'save_url',
        :'share_link_param',
        :'share_url',
        :'toolbar_docked'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::EmbeddedConfig` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::EmbeddedConfig`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'embed_url')
        self.embed_url = attributes[:'embed_url']
      end

      if attributes.key?(:'save_url')
        self.save_url = attributes[:'save_url']
      end

      if attributes.key?(:'share_link_param')
        self.share_link_param = attributes[:'share_link_param']
      end

      if attributes.key?(:'share_url')
        self.share_url = attributes[:'share_url']
      end

      if attributes.key?(:'toolbar_docked')
        self.toolbar_docked = attributes[:'toolbar_docked']
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
          embed_url == o.embed_url &&
          save_url == o.save_url &&
          share_link_param == o.share_link_param &&
          share_url == o.share_url &&
          toolbar_docked == o.toolbar_docked
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [embed_url, save_url, share_link_param, share_url, toolbar_docked].hash
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
