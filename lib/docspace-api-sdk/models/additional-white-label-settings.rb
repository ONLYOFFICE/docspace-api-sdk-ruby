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
  # The additional white label settings.
  class AdditionalWhiteLabelSettings < ApiModelBase
    # Specifies if the sample documents are displayed or hidden.
    attr_accessor :start_docs_enabled

    # Specifies if the Help Center link is available or not.
    attr_accessor :help_center_enabled

    # Specifies if the Feedback & Support link is available or not.
    attr_accessor :feedback_and_support_enabled

    # Specifies if the user forum is available or not.
    attr_accessor :user_forum_enabled

    # Specifies if the Video Guides link is available or not.
    attr_accessor :video_guides_enabled

    # Specifies if the License Agreements link is available or not.
    attr_accessor :license_agreements_enabled

    # The timestamp indicating when the settings were last modified.
    attr_accessor :last_modified

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'start_docs_enabled' => :'startDocsEnabled',
        :'help_center_enabled' => :'helpCenterEnabled',
        :'feedback_and_support_enabled' => :'feedbackAndSupportEnabled',
        :'user_forum_enabled' => :'userForumEnabled',
        :'video_guides_enabled' => :'videoGuidesEnabled',
        :'license_agreements_enabled' => :'licenseAgreementsEnabled',
        :'last_modified' => :'lastModified'
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
        :'start_docs_enabled' => :'Boolean',
        :'help_center_enabled' => :'Boolean',
        :'feedback_and_support_enabled' => :'Boolean',
        :'user_forum_enabled' => :'Boolean',
        :'video_guides_enabled' => :'Boolean',
        :'license_agreements_enabled' => :'Boolean',
        :'last_modified' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AdditionalWhiteLabelSettings` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AdditionalWhiteLabelSettings`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'start_docs_enabled')
        self.start_docs_enabled = attributes[:'start_docs_enabled']
      end

      if attributes.key?(:'help_center_enabled')
        self.help_center_enabled = attributes[:'help_center_enabled']
      end

      if attributes.key?(:'feedback_and_support_enabled')
        self.feedback_and_support_enabled = attributes[:'feedback_and_support_enabled']
      end

      if attributes.key?(:'user_forum_enabled')
        self.user_forum_enabled = attributes[:'user_forum_enabled']
      end

      if attributes.key?(:'video_guides_enabled')
        self.video_guides_enabled = attributes[:'video_guides_enabled']
      end

      if attributes.key?(:'license_agreements_enabled')
        self.license_agreements_enabled = attributes[:'license_agreements_enabled']
      end

      if attributes.key?(:'last_modified')
        self.last_modified = attributes[:'last_modified']
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
          start_docs_enabled == o.start_docs_enabled &&
          help_center_enabled == o.help_center_enabled &&
          feedback_and_support_enabled == o.feedback_and_support_enabled &&
          user_forum_enabled == o.user_forum_enabled &&
          video_guides_enabled == o.video_guides_enabled &&
          license_agreements_enabled == o.license_agreements_enabled &&
          last_modified == o.last_modified
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [start_docs_enabled, help_center_enabled, feedback_and_support_enabled, user_forum_enabled, video_guides_enabled, license_agreements_enabled, last_modified].hash
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
