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
  # The additional white label settings parameters.
  class AdditionalWhiteLabelSettingsDto < ApiModelBase
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

    # Specifies if the additional white label settings are default or not.
    attr_accessor :is_default

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'start_docs_enabled' => :'startDocsEnabled',
        :'help_center_enabled' => :'helpCenterEnabled',
        :'feedback_and_support_enabled' => :'feedbackAndSupportEnabled',
        :'user_forum_enabled' => :'userForumEnabled',
        :'video_guides_enabled' => :'videoGuidesEnabled',
        :'license_agreements_enabled' => :'licenseAgreementsEnabled',
        :'is_default' => :'isDefault'
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
        :'is_default' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AdditionalWhiteLabelSettingsDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AdditionalWhiteLabelSettingsDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'start_docs_enabled')
        self.start_docs_enabled = attributes[:'start_docs_enabled']
      else
        self.start_docs_enabled = nil
      end

      if attributes.key?(:'help_center_enabled')
        self.help_center_enabled = attributes[:'help_center_enabled']
      else
        self.help_center_enabled = nil
      end

      if attributes.key?(:'feedback_and_support_enabled')
        self.feedback_and_support_enabled = attributes[:'feedback_and_support_enabled']
      else
        self.feedback_and_support_enabled = nil
      end

      if attributes.key?(:'user_forum_enabled')
        self.user_forum_enabled = attributes[:'user_forum_enabled']
      else
        self.user_forum_enabled = nil
      end

      if attributes.key?(:'video_guides_enabled')
        self.video_guides_enabled = attributes[:'video_guides_enabled']
      else
        self.video_guides_enabled = nil
      end

      if attributes.key?(:'license_agreements_enabled')
        self.license_agreements_enabled = attributes[:'license_agreements_enabled']
      else
        self.license_agreements_enabled = nil
      end

      if attributes.key?(:'is_default')
        self.is_default = attributes[:'is_default']
      else
        self.is_default = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @start_docs_enabled.nil?
        invalid_properties.push('invalid value for "start_docs_enabled", start_docs_enabled cannot be nil.')
      end

      if @help_center_enabled.nil?
        invalid_properties.push('invalid value for "help_center_enabled", help_center_enabled cannot be nil.')
      end

      if @feedback_and_support_enabled.nil?
        invalid_properties.push('invalid value for "feedback_and_support_enabled", feedback_and_support_enabled cannot be nil.')
      end

      if @user_forum_enabled.nil?
        invalid_properties.push('invalid value for "user_forum_enabled", user_forum_enabled cannot be nil.')
      end

      if @video_guides_enabled.nil?
        invalid_properties.push('invalid value for "video_guides_enabled", video_guides_enabled cannot be nil.')
      end

      if @license_agreements_enabled.nil?
        invalid_properties.push('invalid value for "license_agreements_enabled", license_agreements_enabled cannot be nil.')
      end

      if @is_default.nil?
        invalid_properties.push('invalid value for "is_default", is_default cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @start_docs_enabled.nil?
      return false if @help_center_enabled.nil?
      return false if @feedback_and_support_enabled.nil?
      return false if @user_forum_enabled.nil?
      return false if @video_guides_enabled.nil?
      return false if @license_agreements_enabled.nil?
      return false if @is_default.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] start_docs_enabled Value to be assigned
    def start_docs_enabled=(start_docs_enabled)
      if start_docs_enabled.nil?
        fail ArgumentError, 'start_docs_enabled cannot be nil'
      end

      @start_docs_enabled = start_docs_enabled
    end

    # Custom attribute writer method with validation
    # @param [Object] help_center_enabled Value to be assigned
    def help_center_enabled=(help_center_enabled)
      if help_center_enabled.nil?
        fail ArgumentError, 'help_center_enabled cannot be nil'
      end

      @help_center_enabled = help_center_enabled
    end

    # Custom attribute writer method with validation
    # @param [Object] feedback_and_support_enabled Value to be assigned
    def feedback_and_support_enabled=(feedback_and_support_enabled)
      if feedback_and_support_enabled.nil?
        fail ArgumentError, 'feedback_and_support_enabled cannot be nil'
      end

      @feedback_and_support_enabled = feedback_and_support_enabled
    end

    # Custom attribute writer method with validation
    # @param [Object] user_forum_enabled Value to be assigned
    def user_forum_enabled=(user_forum_enabled)
      if user_forum_enabled.nil?
        fail ArgumentError, 'user_forum_enabled cannot be nil'
      end

      @user_forum_enabled = user_forum_enabled
    end

    # Custom attribute writer method with validation
    # @param [Object] video_guides_enabled Value to be assigned
    def video_guides_enabled=(video_guides_enabled)
      if video_guides_enabled.nil?
        fail ArgumentError, 'video_guides_enabled cannot be nil'
      end

      @video_guides_enabled = video_guides_enabled
    end

    # Custom attribute writer method with validation
    # @param [Object] license_agreements_enabled Value to be assigned
    def license_agreements_enabled=(license_agreements_enabled)
      if license_agreements_enabled.nil?
        fail ArgumentError, 'license_agreements_enabled cannot be nil'
      end

      @license_agreements_enabled = license_agreements_enabled
    end

    # Custom attribute writer method with validation
    # @param [Object] is_default Value to be assigned
    def is_default=(is_default)
      if is_default.nil?
        fail ArgumentError, 'is_default cannot be nil'
      end

      @is_default = is_default
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
          is_default == o.is_default
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [start_docs_enabled, help_center_enabled, feedback_and_support_enabled, user_forum_enabled, video_guides_enabled, license_agreements_enabled, is_default].hash
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
