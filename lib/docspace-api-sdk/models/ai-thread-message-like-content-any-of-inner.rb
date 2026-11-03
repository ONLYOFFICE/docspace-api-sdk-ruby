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
  class AiThreadMessageLikeContentAnyOfInner < ApiModelBase
    # Part kind: `text`, `reasoning`, `source`, `image`, `file`, `audio`, `data` or `tool-call`.
    attr_accessor :type

    # The text of a `text` or `reasoning` part.
    attr_accessor :text

    # Id of the part this one belongs to, on `text`, `reasoning`, `source` and `tool-call` parts. On a `reasoning` part the chat library keeps the provider's thinking signature here.
    attr_accessor :parent_id

    # A `source` part's source kind; always `url`.
    attr_accessor :source_type

    # A `source` part's id.
    attr_accessor :id

    # A `source` part's URL.
    attr_accessor :url

    # A `source` part's title.
    attr_accessor :title

    # An `image` part's picture, as a URL (usually a `data:` URL). For an image the user attached, a JSON string `{ ref, title, kind: image }` naming the stored attachment instead.
    attr_accessor :image

    # A `file` part's media type. For a file the user attached, a JSON string `{ ref, title, kind: file, path, type }` naming the stored attachment instead - the chat library carries the reference here.
    attr_accessor :mime_type

    # A `file` part's content; empty when the part references an attachment. (A `data` part would carry its payload here too, as any JSON value; neither the chat library nor this service writes one.)
    attr_accessor :data

    # The file name of a `file` or `image` part.
    attr_accessor :filename

    # An `image` part's display name, or a `data` part's name.
    attr_accessor :name

    attr_accessor :audio

    # A `tool-call` part's call id.
    attr_accessor :tool_call_id

    # A `tool-call` part's tool name.
    attr_accessor :tool_name

    # A `tool-call` part's arguments.
    attr_accessor :args

    # A `tool-call` part's arguments as the model streamed them, JSON text.
    attr_accessor :args_text

    attr_accessor :result

    # Whether a `tool-call` part's result is an error.
    attr_accessor :is_error

    attr_accessor :artifact

    attr_accessor :interrupt

    # Messages of a sub-agent run inside a `tool-call` part.
    attr_accessor :messages

    # Provider-specific data of a `tool-call` part - for a Gemini call, `{ thoughtSignature }`, which has to be sent back with the call.
    attr_accessor :metadata

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'text' => :'text',
        :'parent_id' => :'parentId',
        :'source_type' => :'sourceType',
        :'id' => :'id',
        :'url' => :'url',
        :'title' => :'title',
        :'image' => :'image',
        :'mime_type' => :'mimeType',
        :'data' => :'data',
        :'filename' => :'filename',
        :'name' => :'name',
        :'audio' => :'audio',
        :'tool_call_id' => :'toolCallId',
        :'tool_name' => :'toolName',
        :'args' => :'args',
        :'args_text' => :'argsText',
        :'result' => :'result',
        :'is_error' => :'isError',
        :'artifact' => :'artifact',
        :'interrupt' => :'interrupt',
        :'messages' => :'messages',
        :'metadata' => :'metadata'
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
        :'type' => :'String',
        :'text' => :'String',
        :'parent_id' => :'String',
        :'source_type' => :'String',
        :'id' => :'String',
        :'url' => :'String',
        :'title' => :'String',
        :'image' => :'String',
        :'mime_type' => :'String',
        :'data' => :'String',
        :'filename' => :'String',
        :'name' => :'String',
        :'audio' => :'AiThreadMessageLikeContentAnyOfInnerAudio',
        :'tool_call_id' => :'String',
        :'tool_name' => :'String',
        :'args' => :'Object',
        :'args_text' => :'String',
        :'result' => :'Object',
        :'is_error' => :'Boolean',
        :'artifact' => :'Object',
        :'interrupt' => :'AiThreadMessageLikeContentAnyOfInnerInterrupt',
        :'messages' => :'Array<Object>',
        :'metadata' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'result',
        :'artifact',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AiThreadMessageLikeContentAnyOfInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AiThreadMessageLikeContentAnyOfInner`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.key?(:'parent_id')
        self.parent_id = attributes[:'parent_id']
      end

      if attributes.key?(:'source_type')
        self.source_type = attributes[:'source_type']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'image')
        self.image = attributes[:'image']
      end

      if attributes.key?(:'mime_type')
        self.mime_type = attributes[:'mime_type']
      end

      if attributes.key?(:'data')
        self.data = attributes[:'data']
      end

      if attributes.key?(:'filename')
        self.filename = attributes[:'filename']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'audio')
        self.audio = attributes[:'audio']
      end

      if attributes.key?(:'tool_call_id')
        self.tool_call_id = attributes[:'tool_call_id']
      end

      if attributes.key?(:'tool_name')
        self.tool_name = attributes[:'tool_name']
      end

      if attributes.key?(:'args')
        self.args = attributes[:'args']
      end

      if attributes.key?(:'args_text')
        self.args_text = attributes[:'args_text']
      end

      if attributes.key?(:'result')
        self.result = attributes[:'result']
      end

      if attributes.key?(:'is_error')
        self.is_error = attributes[:'is_error']
      end

      if attributes.key?(:'artifact')
        self.artifact = attributes[:'artifact']
      end

      if attributes.key?(:'interrupt')
        self.interrupt = attributes[:'interrupt']
      end

      if attributes.key?(:'messages')
        if (value = attributes[:'messages']).is_a?(Array)
          self.messages = value
        end
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] type Value to be assigned
    def type=(type)
      if type.nil?
        fail ArgumentError, 'type cannot be nil'
      end

      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          text == o.text &&
          parent_id == o.parent_id &&
          source_type == o.source_type &&
          id == o.id &&
          url == o.url &&
          title == o.title &&
          image == o.image &&
          mime_type == o.mime_type &&
          data == o.data &&
          filename == o.filename &&
          name == o.name &&
          audio == o.audio &&
          tool_call_id == o.tool_call_id &&
          tool_name == o.tool_name &&
          args == o.args &&
          args_text == o.args_text &&
          result == o.result &&
          is_error == o.is_error &&
          artifact == o.artifact &&
          interrupt == o.interrupt &&
          messages == o.messages &&
          metadata == o.metadata
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, text, parent_id, source_type, id, url, title, image, mime_type, data, filename, name, audio, tool_call_id, tool_name, args, args_text, result, is_error, artifact, interrupt, messages, metadata].hash
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
