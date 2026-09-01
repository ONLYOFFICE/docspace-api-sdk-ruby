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
  class AiAiSendCustomRequest < ApiModelBase
    # Stream the reply (ndjson) when true, else return a single message.
    attr_accessor :is_stream

    # Caller-supplied system prompt for this one-turn call.
    attr_accessor :system_prompt

    attr_accessor :user_message

    # Per-request engine options: extra tools, reasoning, prompt override.
    attr_accessor :action_args

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'is_stream' => :'isStream',
        :'system_prompt' => :'systemPrompt',
        :'user_message' => :'userMessage',
        :'action_args' => :'actionArgs'
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
        :'is_stream' => :'Boolean',
        :'system_prompt' => :'String',
        :'user_message' => :'AiThreadMessageLike',
        :'action_args' => :'AiAiActionArgs'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AiAiSendCustomRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AiAiSendCustomRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'is_stream')
        self.is_stream = attributes[:'is_stream']
      else
        self.is_stream = nil
      end

      if attributes.key?(:'system_prompt')
        self.system_prompt = attributes[:'system_prompt']
      else
        self.system_prompt = nil
      end

      if attributes.key?(:'user_message')
        self.user_message = attributes[:'user_message']
      else
        self.user_message = nil
      end

      if attributes.key?(:'action_args')
        self.action_args = attributes[:'action_args']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @is_stream.nil?
        invalid_properties.push('invalid value for "is_stream", is_stream cannot be nil.')
      end

      if @system_prompt.nil?
        invalid_properties.push('invalid value for "system_prompt", system_prompt cannot be nil.')
      end

      if @user_message.nil?
        invalid_properties.push('invalid value for "user_message", user_message cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @is_stream.nil?
      return false if @system_prompt.nil?
      return false if @user_message.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] is_stream Value to be assigned
    def is_stream=(is_stream)
      if is_stream.nil?
        fail ArgumentError, 'is_stream cannot be nil'
      end

      @is_stream = is_stream
    end

    # Custom attribute writer method with validation
    # @param [Object] system_prompt Value to be assigned
    def system_prompt=(system_prompt)
      if system_prompt.nil?
        fail ArgumentError, 'system_prompt cannot be nil'
      end

      @system_prompt = system_prompt
    end

    # Custom attribute writer method with validation
    # @param [Object] user_message Value to be assigned
    def user_message=(user_message)
      if user_message.nil?
        fail ArgumentError, 'user_message cannot be nil'
      end

      @user_message = user_message
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_stream == o.is_stream &&
          system_prompt == o.system_prompt &&
          user_message == o.user_message &&
          action_args == o.action_args
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [is_stream, system_prompt, user_message, action_args].hash
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
