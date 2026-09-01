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
  # Input for creating a new profile — the same shape as `Profile` without the engine-generated fields (`id`, `createdAt`).
  class AiCreateProfileInput < ApiModelBase
    # User-defined profile display name.
    attr_accessor :name

    # Provider type for this profile. Use `external` to delegate all HTTP transport to `PlatformAdapter.externalFetch` while reusing an existing provider's response parser — see `Profile.basedOn` for the format selector.
    attr_accessor :provider_type

    # Selects the response-format parser used by the `external` provider. Ignored for any other `providerType`.  Supported values are `openai`, `anthropic`, `mistral` and `openrouter`. Remaining values (`genai`, `stabilityai`, …) are accepted by the type but not yet implemented; passing one raises an error at request time.
    attr_accessor :based_on

    # Base URL of the provider API.
    attr_accessor :base_url

    # API key or token. Optional for local providers.
    attr_accessor :key

    # Extra HTTP headers sent with every request to this provider. Merged into the SDK client's default headers; an explicit `Authorization` here wins over the one derived from `key`. Honoured by the OpenAI-family providers.
    attr_accessor :headers

    # Selected model ID within this provider.
    attr_accessor :model_id

    # Whether extended thinking is enabled for this profile's model.
    attr_accessor :reasoning

    # Bitmask of capabilities supported by the selected model.
    attr_accessor :capabilities

    # Result of the live tool-capability probe performed at create time and on changes to `modelId` / `providerType` / `baseUrl`. `undefined` means the probe has never run for this profile (legacy record).
    attr_accessor :can_use_tool

    # Result of the live Responses-API probe (parallel to `canUseTool`). `true` means the model speaks `/v1/responses` and the OpenAI provider must route through `client.responses.create` — required for gpt-5+ reasoning models that reject `reasoning_effort` together with `tools` on `/v1/chat/completions`. Probed at create time and whenever `modelId` / `providerType` / `baseUrl` change. `undefined` means the probe never ran (legacy record) — readers treat that as `false`.
    attr_accessor :use_responses_api

    # Whether this profile uses a cloud-hosted provider (e.g. ONLYOFFICE DocSpace).
    attr_accessor :is_cloud_provider

    # Route every provider request through the host's `fetchProxy` instead of the global `fetch`. Useful when the host runs the widget in a sandbox without direct network access (CORS, custom auth, etc.). Has no effect when the `PlatformAdapter.fetchProxy` is not configured.
    attr_accessor :use_proxy

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
        :'name' => :'name',
        :'provider_type' => :'providerType',
        :'based_on' => :'basedOn',
        :'base_url' => :'baseUrl',
        :'key' => :'key',
        :'headers' => :'headers',
        :'model_id' => :'modelId',
        :'reasoning' => :'reasoning',
        :'capabilities' => :'capabilities',
        :'can_use_tool' => :'canUseTool',
        :'use_responses_api' => :'useResponsesApi',
        :'is_cloud_provider' => :'isCloudProvider',
        :'use_proxy' => :'useProxy'
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
        :'name' => :'String',
        :'provider_type' => :'AiProviderType',
        :'based_on' => :'AiBuiltinProviderType',
        :'base_url' => :'String',
        :'key' => :'String',
        :'headers' => :'Hash<String, String>',
        :'model_id' => :'String',
        :'reasoning' => :'Boolean',
        :'capabilities' => :'Float',
        :'can_use_tool' => :'Boolean',
        :'use_responses_api' => :'Boolean',
        :'is_cloud_provider' => :'Boolean',
        :'use_proxy' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AiCreateProfileInput` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AiCreateProfileInput`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'provider_type')
        self.provider_type = attributes[:'provider_type']
      else
        self.provider_type = nil
      end

      if attributes.key?(:'based_on')
        self.based_on = attributes[:'based_on']
      end

      if attributes.key?(:'base_url')
        self.base_url = attributes[:'base_url']
      else
        self.base_url = nil
      end

      if attributes.key?(:'key')
        self.key = attributes[:'key']
      end

      if attributes.key?(:'headers')
        if (value = attributes[:'headers']).is_a?(Hash)
          self.headers = value
        end
      end

      if attributes.key?(:'model_id')
        self.model_id = attributes[:'model_id']
      else
        self.model_id = nil
      end

      if attributes.key?(:'reasoning')
        self.reasoning = attributes[:'reasoning']
      end

      if attributes.key?(:'capabilities')
        self.capabilities = attributes[:'capabilities']
      end

      if attributes.key?(:'can_use_tool')
        self.can_use_tool = attributes[:'can_use_tool']
      end

      if attributes.key?(:'use_responses_api')
        self.use_responses_api = attributes[:'use_responses_api']
      end

      if attributes.key?(:'is_cloud_provider')
        self.is_cloud_provider = attributes[:'is_cloud_provider']
      end

      if attributes.key?(:'use_proxy')
        self.use_proxy = attributes[:'use_proxy']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @provider_type.nil?
        invalid_properties.push('invalid value for "provider_type", provider_type cannot be nil.')
      end

      if @base_url.nil?
        invalid_properties.push('invalid value for "base_url", base_url cannot be nil.')
      end

      if @model_id.nil?
        invalid_properties.push('invalid value for "model_id", model_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @name.nil?
      return false if @provider_type.nil?
      return false if @base_url.nil?
      return false if @model_id.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] provider_type Value to be assigned
    def provider_type=(provider_type)
      if provider_type.nil?
        fail ArgumentError, 'provider_type cannot be nil'
      end

      @provider_type = provider_type
    end

    # Custom attribute writer method with validation
    # @param [Object] base_url Value to be assigned
    def base_url=(base_url)
      if base_url.nil?
        fail ArgumentError, 'base_url cannot be nil'
      end

      @base_url = base_url
    end

    # Custom attribute writer method with validation
    # @param [Object] model_id Value to be assigned
    def model_id=(model_id)
      if model_id.nil?
        fail ArgumentError, 'model_id cannot be nil'
      end

      @model_id = model_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          provider_type == o.provider_type &&
          based_on == o.based_on &&
          base_url == o.base_url &&
          key == o.key &&
          headers == o.headers &&
          model_id == o.model_id &&
          reasoning == o.reasoning &&
          capabilities == o.capabilities &&
          can_use_tool == o.can_use_tool &&
          use_responses_api == o.use_responses_api &&
          is_cloud_provider == o.is_cloud_provider &&
          use_proxy == o.use_proxy
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, provider_type, based_on, base_url, key, headers, model_id, reasoning, capabilities, can_use_tool, use_responses_api, is_cloud_provider, use_proxy].hash
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
