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
  # The configuration parameters.
  class ConfigurationDtoInteger < ApiModelBase
    # The document configuration.
    attr_accessor :document

    # The document type.
    attr_accessor :document_type

    # The editor configuration.
    attr_accessor :editor_config

    # The editor type.
    attr_accessor :editor_type

    # The editor URL.
    attr_accessor :editor_url

    # The token of the file configuration.
    attr_accessor :token

    # The platform type.
    attr_accessor :type

    # The file parameters.
    attr_accessor :file

    # The error message.
    attr_accessor :error_message

    # Specifies if the file filling has started or not.
    attr_accessor :start_filling

    # The file filling status.
    attr_accessor :filling_status

    # The start filling mode.
    attr_accessor :start_filling_mode

    # The file filling session ID.
    attr_accessor :filling_session_id

    # Indicates which quota scope has been exceeded.
    attr_accessor :quota_exceeded_scope

    # The generation tool call state. Used to run the agent flow in the editor.
    attr_accessor :generation_tool_call_state

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'document' => :'document',
        :'document_type' => :'documentType',
        :'editor_config' => :'editorConfig',
        :'editor_type' => :'editorType',
        :'editor_url' => :'editorUrl',
        :'token' => :'token',
        :'type' => :'type',
        :'file' => :'file',
        :'error_message' => :'errorMessage',
        :'start_filling' => :'startFilling',
        :'filling_status' => :'fillingStatus',
        :'start_filling_mode' => :'startFillingMode',
        :'filling_session_id' => :'fillingSessionId',
        :'quota_exceeded_scope' => :'quotaExceededScope',
        :'generation_tool_call_state' => :'generationToolCallState'
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
        :'document' => :'DocumentConfigDto',
        :'document_type' => :'String',
        :'editor_config' => :'EditorConfigurationDto',
        :'editor_type' => :'EditorType',
        :'editor_url' => :'String',
        :'token' => :'String',
        :'type' => :'String',
        :'file' => :'FileDtoInteger',
        :'error_message' => :'String',
        :'start_filling' => :'Boolean',
        :'filling_status' => :'Boolean',
        :'start_filling_mode' => :'StartFillingMode',
        :'filling_session_id' => :'String',
        :'quota_exceeded_scope' => :'QuotaScope',
        :'generation_tool_call_state' => :'EditorToolCallStateDto'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'document_type',
        :'editor_url',
        :'token',
        :'type',
        :'error_message',
        :'start_filling',
        :'filling_status',
        :'filling_session_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::ConfigurationDtoInteger` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::ConfigurationDtoInteger`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'document')
        self.document = attributes[:'document']
      else
        self.document = nil
      end

      if attributes.key?(:'document_type')
        self.document_type = attributes[:'document_type']
      else
        self.document_type = nil
      end

      if attributes.key?(:'editor_config')
        self.editor_config = attributes[:'editor_config']
      else
        self.editor_config = nil
      end

      if attributes.key?(:'editor_type')
        self.editor_type = attributes[:'editor_type']
      else
        self.editor_type = nil
      end

      if attributes.key?(:'editor_url')
        self.editor_url = attributes[:'editor_url']
      else
        self.editor_url = nil
      end

      if attributes.key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'file')
        self.file = attributes[:'file']
      else
        self.file = nil
      end

      if attributes.key?(:'error_message')
        self.error_message = attributes[:'error_message']
      end

      if attributes.key?(:'start_filling')
        self.start_filling = attributes[:'start_filling']
      end

      if attributes.key?(:'filling_status')
        self.filling_status = attributes[:'filling_status']
      end

      if attributes.key?(:'start_filling_mode')
        self.start_filling_mode = attributes[:'start_filling_mode']
      end

      if attributes.key?(:'filling_session_id')
        self.filling_session_id = attributes[:'filling_session_id']
      end

      if attributes.key?(:'quota_exceeded_scope')
        self.quota_exceeded_scope = attributes[:'quota_exceeded_scope']
      end

      if attributes.key?(:'generation_tool_call_state')
        self.generation_tool_call_state = attributes[:'generation_tool_call_state']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @document.nil?
        invalid_properties.push('invalid value for "document", document cannot be nil.')
      end

      if @editor_config.nil?
        invalid_properties.push('invalid value for "editor_config", editor_config cannot be nil.')
      end

      if @editor_type.nil?
        invalid_properties.push('invalid value for "editor_type", editor_type cannot be nil.')
      end

      if @file.nil?
        invalid_properties.push('invalid value for "file", file cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @document.nil?
      return false if @editor_config.nil?
      return false if @editor_type.nil?
      return false if @file.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] document Value to be assigned
    def document=(document)
      if document.nil?
        fail ArgumentError, 'document cannot be nil'
      end

      @document = document
    end

    # Custom attribute writer method with validation
    # @param [Object] editor_config Value to be assigned
    def editor_config=(editor_config)
      if editor_config.nil?
        fail ArgumentError, 'editor_config cannot be nil'
      end

      @editor_config = editor_config
    end

    # Custom attribute writer method with validation
    # @param [Object] editor_type Value to be assigned
    def editor_type=(editor_type)
      if editor_type.nil?
        fail ArgumentError, 'editor_type cannot be nil'
      end

      @editor_type = editor_type
    end

    # Custom attribute writer method with validation
    # @param [Object] file Value to be assigned
    def file=(file)
      if file.nil?
        fail ArgumentError, 'file cannot be nil'
      end

      @file = file
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          document == o.document &&
          document_type == o.document_type &&
          editor_config == o.editor_config &&
          editor_type == o.editor_type &&
          editor_url == o.editor_url &&
          token == o.token &&
          type == o.type &&
          file == o.file &&
          error_message == o.error_message &&
          start_filling == o.start_filling &&
          filling_status == o.filling_status &&
          start_filling_mode == o.start_filling_mode &&
          filling_session_id == o.filling_session_id &&
          quota_exceeded_scope == o.quota_exceeded_scope &&
          generation_tool_call_state == o.generation_tool_call_state
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [document, document_type, editor_config, editor_type, editor_url, token, type, file, error_message, start_filling, filling_status, start_filling_mode, filling_session_id, quota_exceeded_scope, generation_tool_call_state].hash
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
