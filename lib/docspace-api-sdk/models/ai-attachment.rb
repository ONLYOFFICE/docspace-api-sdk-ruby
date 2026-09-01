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
  # Persistent record for a single attachment (file or image) referenced from a user message. Files carry extracted text in `content`; images carry base64 data in `base64`. Metadata (`title`, `path`, `type`) is always present for display purposes regardless of whether the heavy payload is loaded.
  class AiAttachment < ApiModelBase
    # Storage-assigned UUID.
    attr_accessor :id

    # file | image.
    attr_accessor :kind

    # Origin of the attachment. `user` — uploaded by the user in the composer (the default when unset, for backward compatibility). `tool` — produced by a tool call (e.g. `generate_image`). Lets the integrator's adapter route or apply policies (separate bucket, quotas, TTL, CDN) per source.
    attr_accessor :source

    # Display label (filename or user-visible title).
    attr_accessor :title

    # Extracted text for files.
    attr_accessor :content

    # Base64 data URL for images.
    attr_accessor :base64

    # Original host file path (for files).
    attr_accessor :path

    # ONLYOFFICE file type code (for files).
    attr_accessor :type

    # Owning message id once linked. Unset while the attachment is a draft.
    attr_accessor :message_id

    # Owning thread id once linked. Unset while the attachment is a draft.
    attr_accessor :thread_id

    # Opaque scope token (entity / room) the attachment was created in. Drafts carry it so an entity switch keeps in-flight composer state isolated; once linked to a message the field is redundant with the thread's own entity binding.
    attr_accessor :entity_id

    # Storage-assigned creation timestamp.
    attr_accessor :created_at

    # Whether the attached form can be analyzed.
    attr_accessor :can_analyze

    # Keys of the fields inside the form. `key` is the field identifier, `text` its human-readable label.
    attr_accessor :form_keys

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
        :'id' => :'id',
        :'kind' => :'kind',
        :'source' => :'source',
        :'title' => :'title',
        :'content' => :'content',
        :'base64' => :'base64',
        :'path' => :'path',
        :'type' => :'type',
        :'message_id' => :'messageId',
        :'thread_id' => :'threadId',
        :'entity_id' => :'entityId',
        :'created_at' => :'createdAt',
        :'can_analyze' => :'canAnalyze',
        :'form_keys' => :'formKeys'
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
        :'id' => :'String',
        :'kind' => :'String',
        :'source' => :'String',
        :'title' => :'String',
        :'content' => :'String',
        :'base64' => :'String',
        :'path' => :'String',
        :'type' => :'Float',
        :'message_id' => :'String',
        :'thread_id' => :'String',
        :'entity_id' => :'String',
        :'created_at' => :'Float',
        :'can_analyze' => :'Boolean',
        :'form_keys' => :'Array<AiAttachmentFormKeysInner>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AiAttachment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AiAttachment`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'kind')
        self.kind = attributes[:'kind']
      else
        self.kind = nil
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      else
        self.title = nil
      end

      if attributes.key?(:'content')
        self.content = attributes[:'content']
      end

      if attributes.key?(:'base64')
        self.base64 = attributes[:'base64']
      end

      if attributes.key?(:'path')
        self.path = attributes[:'path']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'message_id')
        self.message_id = attributes[:'message_id']
      end

      if attributes.key?(:'thread_id')
        self.thread_id = attributes[:'thread_id']
      end

      if attributes.key?(:'entity_id')
        self.entity_id = attributes[:'entity_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'can_analyze')
        self.can_analyze = attributes[:'can_analyze']
      end

      if attributes.key?(:'form_keys')
        if (value = attributes[:'form_keys']).is_a?(Array)
          self.form_keys = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @kind.nil?
        invalid_properties.push('invalid value for "kind", kind cannot be nil.')
      end

      if @title.nil?
        invalid_properties.push('invalid value for "title", title cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @kind.nil?
      kind_validator = EnumAttributeValidator.new('String', ["file", "image"])
      return false unless kind_validator.valid?(@kind)
      source_validator = EnumAttributeValidator.new('String', ["user", "tool"])
      return false unless source_validator.valid?(@source)
      return false if @title.nil?
      return false if @created_at.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] kind Object to be assigned
    def kind=(kind)
      validator = EnumAttributeValidator.new('String', ["file", "image"])
      unless validator.valid?(kind)
        fail ArgumentError, "invalid value for \"kind\", must be one of #{validator.allowable_values}."
      end
      @kind = kind
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source Object to be assigned
    def source=(source)
      validator = EnumAttributeValidator.new('String', ["user", "tool"])
      unless validator.valid?(source)
        fail ArgumentError, "invalid value for \"source\", must be one of #{validator.allowable_values}."
      end
      @source = source
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      if title.nil?
        fail ArgumentError, 'title cannot be nil'
      end

      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] created_at Value to be assigned
    def created_at=(created_at)
      if created_at.nil?
        fail ArgumentError, 'created_at cannot be nil'
      end

      @created_at = created_at
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          kind == o.kind &&
          source == o.source &&
          title == o.title &&
          content == o.content &&
          base64 == o.base64 &&
          path == o.path &&
          type == o.type &&
          message_id == o.message_id &&
          thread_id == o.thread_id &&
          entity_id == o.entity_id &&
          created_at == o.created_at &&
          can_analyze == o.can_analyze &&
          form_keys == o.form_keys
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, kind, source, title, content, base64, path, type, message_id, thread_id, entity_id, created_at, can_analyze, form_keys].hash
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
