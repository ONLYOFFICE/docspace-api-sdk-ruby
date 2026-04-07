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
  # The customization config parameters.
  class CustomizationConfigDto < ApiModelBase
    # Specifies if the customization is about.
    attr_accessor :about

    attr_accessor :customer

    attr_accessor :anonymous

    attr_accessor :feedback

    # Specifies if the customization should be force saved.
    attr_accessor :forcesave

    attr_accessor :goback

    attr_accessor :review

    attr_accessor :logo

    # Specifies if the share should be mentioned.
    attr_accessor :mention_share

    attr_accessor :submit_form

    attr_accessor :start_filling_form

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'about' => :'about',
        :'customer' => :'customer',
        :'anonymous' => :'anonymous',
        :'feedback' => :'feedback',
        :'forcesave' => :'forcesave',
        :'goback' => :'goback',
        :'review' => :'review',
        :'logo' => :'logo',
        :'mention_share' => :'mentionShare',
        :'submit_form' => :'submitForm',
        :'start_filling_form' => :'startFillingForm'
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
        :'about' => :'Boolean',
        :'customer' => :'CustomerConfigDto',
        :'anonymous' => :'AnonymousConfigDto',
        :'feedback' => :'FeedbackConfig',
        :'forcesave' => :'Boolean',
        :'goback' => :'GobackConfig',
        :'review' => :'ReviewConfig',
        :'logo' => :'LogoConfigDto',
        :'mention_share' => :'Boolean',
        :'submit_form' => :'SubmitForm',
        :'start_filling_form' => :'StartFillingForm'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'forcesave',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::CustomizationConfigDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::CustomizationConfigDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'about')
        self.about = attributes[:'about']
      end

      if attributes.key?(:'customer')
        self.customer = attributes[:'customer']
      end

      if attributes.key?(:'anonymous')
        self.anonymous = attributes[:'anonymous']
      end

      if attributes.key?(:'feedback')
        self.feedback = attributes[:'feedback']
      end

      if attributes.key?(:'forcesave')
        self.forcesave = attributes[:'forcesave']
      end

      if attributes.key?(:'goback')
        self.goback = attributes[:'goback']
      end

      if attributes.key?(:'review')
        self.review = attributes[:'review']
      end

      if attributes.key?(:'logo')
        self.logo = attributes[:'logo']
      end

      if attributes.key?(:'mention_share')
        self.mention_share = attributes[:'mention_share']
      end

      if attributes.key?(:'submit_form')
        self.submit_form = attributes[:'submit_form']
      end

      if attributes.key?(:'start_filling_form')
        self.start_filling_form = attributes[:'start_filling_form']
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
          about == o.about &&
          customer == o.customer &&
          anonymous == o.anonymous &&
          feedback == o.feedback &&
          forcesave == o.forcesave &&
          goback == o.goback &&
          review == o.review &&
          logo == o.logo &&
          mention_share == o.mention_share &&
          submit_form == o.submit_form &&
          start_filling_form == o.start_filling_form
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [about, customer, anonymous, feedback, forcesave, goback, review, logo, mention_share, submit_form, start_filling_form].hash
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
