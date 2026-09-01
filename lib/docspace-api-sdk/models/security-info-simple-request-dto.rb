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
  # The parameters of the security information request.
  class SecurityInfoSimpleRequestDto < ApiModelBase
    # The collection of sharing parameters.
    attr_accessor :share

    # Specifies whether to notify users about the shared file or not.
    attr_accessor :notify

    # The message to send when notifying about the shared file.
    attr_accessor :sharing_message

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'share' => :'share',
        :'notify' => :'notify',
        :'sharing_message' => :'sharingMessage'
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
        :'share' => :'Array<FileShareParams>',
        :'notify' => :'Boolean',
        :'sharing_message' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'share',
        :'sharing_message'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::SecurityInfoSimpleRequestDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::SecurityInfoSimpleRequestDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'share')
        if (value = attributes[:'share']).is_a?(Array)
          self.share = value
        end
      end

      if attributes.key?(:'notify')
        self.notify = attributes[:'notify']
      end

      if attributes.key?(:'sharing_message')
        self.sharing_message = attributes[:'sharing_message']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@sharing_message.nil? && @sharing_message.to_s.length > 255
        invalid_properties.push('invalid value for "sharing_message", the character length must be smaller than or equal to 255.')
      end

      if !@sharing_message.nil? && @sharing_message.to_s.length < 0
        invalid_properties.push('invalid value for "sharing_message", the character length must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@sharing_message.nil? && @sharing_message.to_s.length > 255
      return false if !@sharing_message.nil? && @sharing_message.to_s.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] sharing_message Value to be assigned
    def sharing_message=(sharing_message)
      if !sharing_message.nil? && sharing_message.to_s.length > 255
        fail ArgumentError, 'invalid value for "sharing_message", the character length must be smaller than or equal to 255.'
      end

      if !sharing_message.nil? && sharing_message.to_s.length < 0
        fail ArgumentError, 'invalid value for "sharing_message", the character length must be greater than or equal to 0.'
      end

      @sharing_message = sharing_message
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          share == o.share &&
          notify == o.notify &&
          sharing_message == o.sharing_message
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [share, notify, sharing_message].hash
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
