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
  # The request parameters for configuring login security and performance settings.
  class LoginSettingsRequestDto < ApiModelBase
    # The maximum number of consecutive failed login attempts allowed before triggering account suspension.
    attr_accessor :attempt_count

    # The duration (in minutes) for which an account remains suspended after exceeding maximum login attempts.
    attr_accessor :block_time

    # The maximum time (in seconds) allowed for server to process and respond to login requests.
    attr_accessor :check_period

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'attempt_count' => :'attemptCount',
        :'block_time' => :'blockTime',
        :'check_period' => :'checkPeriod'
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
        :'attempt_count' => :'Integer',
        :'block_time' => :'Integer',
        :'check_period' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::LoginSettingsRequestDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::LoginSettingsRequestDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'attempt_count')
        self.attempt_count = attributes[:'attempt_count']
      end

      if attributes.key?(:'block_time')
        self.block_time = attributes[:'block_time']
      end

      if attributes.key?(:'check_period')
        self.check_period = attributes[:'check_period']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@attempt_count.nil? && @attempt_count > 9999
        invalid_properties.push('invalid value for "attempt_count", must be smaller than or equal to 9999.')
      end

      if !@attempt_count.nil? && @attempt_count < 1
        invalid_properties.push('invalid value for "attempt_count", must be greater than or equal to 1.')
      end

      if !@block_time.nil? && @block_time > 9999
        invalid_properties.push('invalid value for "block_time", must be smaller than or equal to 9999.')
      end

      if !@block_time.nil? && @block_time < 1
        invalid_properties.push('invalid value for "block_time", must be greater than or equal to 1.')
      end

      if !@check_period.nil? && @check_period > 9999
        invalid_properties.push('invalid value for "check_period", must be smaller than or equal to 9999.')
      end

      if !@check_period.nil? && @check_period < 1
        invalid_properties.push('invalid value for "check_period", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@attempt_count.nil? && @attempt_count > 9999
      return false if !@attempt_count.nil? && @attempt_count < 1
      return false if !@block_time.nil? && @block_time > 9999
      return false if !@block_time.nil? && @block_time < 1
      return false if !@check_period.nil? && @check_period > 9999
      return false if !@check_period.nil? && @check_period < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] attempt_count Value to be assigned
    def attempt_count=(attempt_count)
      if attempt_count.nil?
        fail ArgumentError, 'attempt_count cannot be nil'
      end

      if attempt_count > 9999
        fail ArgumentError, 'invalid value for "attempt_count", must be smaller than or equal to 9999.'
      end

      if attempt_count < 1
        fail ArgumentError, 'invalid value for "attempt_count", must be greater than or equal to 1.'
      end

      @attempt_count = attempt_count
    end

    # Custom attribute writer method with validation
    # @param [Object] block_time Value to be assigned
    def block_time=(block_time)
      if block_time.nil?
        fail ArgumentError, 'block_time cannot be nil'
      end

      if block_time > 9999
        fail ArgumentError, 'invalid value for "block_time", must be smaller than or equal to 9999.'
      end

      if block_time < 1
        fail ArgumentError, 'invalid value for "block_time", must be greater than or equal to 1.'
      end

      @block_time = block_time
    end

    # Custom attribute writer method with validation
    # @param [Object] check_period Value to be assigned
    def check_period=(check_period)
      if check_period.nil?
        fail ArgumentError, 'check_period cannot be nil'
      end

      if check_period > 9999
        fail ArgumentError, 'invalid value for "check_period", must be smaller than or equal to 9999.'
      end

      if check_period < 1
        fail ArgumentError, 'invalid value for "check_period", must be greater than or equal to 1.'
      end

      @check_period = check_period
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          attempt_count == o.attempt_count &&
          block_time == o.block_time &&
          check_period == o.check_period
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [attempt_count, block_time, check_period].hash
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
