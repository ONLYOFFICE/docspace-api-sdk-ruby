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
  # The payment settings parameters.
  class PaymentSettingsDto < ApiModelBase
    # The email address for sales inquiries and support.
    attr_accessor :sales_email

    # The URL for accessing the feedback and support resources.
    attr_accessor :feedback_and_support_url

    # The URL for purchasing or upgrading the product.
    attr_accessor :buy_url

    # Indicates whether the system is running in standalone mode.
    attr_accessor :standalone

    # The current license information.
    attr_accessor :current_license

    # The maximum quota quantity.
    attr_accessor :max

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'sales_email' => :'salesEmail',
        :'feedback_and_support_url' => :'feedbackAndSupportUrl',
        :'buy_url' => :'buyUrl',
        :'standalone' => :'standalone',
        :'current_license' => :'currentLicense',
        :'max' => :'max'
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
        :'sales_email' => :'String',
        :'feedback_and_support_url' => :'String',
        :'buy_url' => :'String',
        :'standalone' => :'Boolean',
        :'current_license' => :'CurrentLicenseInfo',
        :'max' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'sales_email',
        :'feedback_and_support_url',
        :'buy_url',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::PaymentSettingsDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::PaymentSettingsDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'sales_email')
        self.sales_email = attributes[:'sales_email']
      else
        self.sales_email = nil
      end

      if attributes.key?(:'feedback_and_support_url')
        self.feedback_and_support_url = attributes[:'feedback_and_support_url']
      end

      if attributes.key?(:'buy_url')
        self.buy_url = attributes[:'buy_url']
      else
        self.buy_url = nil
      end

      if attributes.key?(:'standalone')
        self.standalone = attributes[:'standalone']
      else
        self.standalone = nil
      end

      if attributes.key?(:'current_license')
        self.current_license = attributes[:'current_license']
      else
        self.current_license = nil
      end

      if attributes.key?(:'max')
        self.max = attributes[:'max']
      else
        self.max = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @standalone.nil?
        invalid_properties.push('invalid value for "standalone", standalone cannot be nil.')
      end

      if @current_license.nil?
        invalid_properties.push('invalid value for "current_license", current_license cannot be nil.')
      end

      if @max.nil?
        invalid_properties.push('invalid value for "max", max cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @standalone.nil?
      return false if @current_license.nil?
      return false if @max.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] standalone Value to be assigned
    def standalone=(standalone)
      if standalone.nil?
        fail ArgumentError, 'standalone cannot be nil'
      end

      @standalone = standalone
    end

    # Custom attribute writer method with validation
    # @param [Object] current_license Value to be assigned
    def current_license=(current_license)
      if current_license.nil?
        fail ArgumentError, 'current_license cannot be nil'
      end

      @current_license = current_license
    end

    # Custom attribute writer method with validation
    # @param [Object] max Value to be assigned
    def max=(max)
      if max.nil?
        fail ArgumentError, 'max cannot be nil'
      end

      @max = max
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          sales_email == o.sales_email &&
          feedback_and_support_url == o.feedback_and_support_url &&
          buy_url == o.buy_url &&
          standalone == o.standalone &&
          current_license == o.current_license &&
          max == o.max
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [sales_email, feedback_and_support_url, buy_url, standalone, current_license, max].hash
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
