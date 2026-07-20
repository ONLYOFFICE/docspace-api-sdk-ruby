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
  # The AI module settings.
  class AiSettingsDto < ApiModelBase
    # Indicates whether web search is enabled for AI chat sessions.
    attr_accessor :web_search_enabled

    # Indicates whether the web search API key needs to be reconfigured.
    attr_accessor :web_search_need_reset

    # Indicates whether document vectorization is enabled.
    attr_accessor :vectorization_enabled

    # Indicates whether the embedding provider API key needs to be reconfigured.
    attr_accessor :vectorization_need_reset

    # Indicates whether the AI subsystem is fully configured and operational.
    attr_accessor :ai_ready

    # Indicates whether the AI provider API key needs to be reconfigured.
    attr_accessor :ai_ready_need_reset

    # The unique identifier of the portal-level MCP server, if configured.
    attr_accessor :portal_mcp_server_id

    # The name of the embedding model used for document vectorization.
    attr_accessor :embedding_model

    # Mapping of model identifiers to human-readable aliases.
    attr_accessor :model_aliases

    # The tool name used by the AI assistant for knowledge base search.
    attr_accessor :knowledge_search_tool_name

    # The tool name used by the AI assistant for web search.
    attr_accessor :web_search_tool_name

    # The tool name used by the AI assistant for web page crawling.
    attr_accessor :web_crawling_tool_name

    # The tool name used by the AI to launch docx creation in the editor.
    attr_accessor :generate_docx_tool_name

    # The tool name used by the AI assistant to launch form creation in the editor.
    attr_accessor :generate_form_tool_name

    # The tool name used by the AI assistant to launch presentation creation in the editor.
    attr_accessor :generate_presentation_tool_name

    # Indicates whether the system-level AI provider is enabled.
    attr_accessor :system_ai_enabled

    # The identifier of the model recommended for form generation.
    attr_accessor :recommended_model_for_forms

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'web_search_enabled' => :'webSearchEnabled',
        :'web_search_need_reset' => :'webSearchNeedReset',
        :'vectorization_enabled' => :'vectorizationEnabled',
        :'vectorization_need_reset' => :'vectorizationNeedReset',
        :'ai_ready' => :'aiReady',
        :'ai_ready_need_reset' => :'aiReadyNeedReset',
        :'portal_mcp_server_id' => :'portalMcpServerId',
        :'embedding_model' => :'embeddingModel',
        :'model_aliases' => :'modelAliases',
        :'knowledge_search_tool_name' => :'knowledgeSearchToolName',
        :'web_search_tool_name' => :'webSearchToolName',
        :'web_crawling_tool_name' => :'webCrawlingToolName',
        :'generate_docx_tool_name' => :'generateDocxToolName',
        :'generate_form_tool_name' => :'generateFormToolName',
        :'generate_presentation_tool_name' => :'generatePresentationToolName',
        :'system_ai_enabled' => :'systemAiEnabled',
        :'recommended_model_for_forms' => :'recommendedModelForForms'
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
        :'web_search_enabled' => :'Boolean',
        :'web_search_need_reset' => :'Boolean',
        :'vectorization_enabled' => :'Boolean',
        :'vectorization_need_reset' => :'Boolean',
        :'ai_ready' => :'Boolean',
        :'ai_ready_need_reset' => :'Boolean',
        :'portal_mcp_server_id' => :'String',
        :'embedding_model' => :'String',
        :'model_aliases' => :'Hash<String, String>',
        :'knowledge_search_tool_name' => :'String',
        :'web_search_tool_name' => :'String',
        :'web_crawling_tool_name' => :'String',
        :'generate_docx_tool_name' => :'String',
        :'generate_form_tool_name' => :'String',
        :'generate_presentation_tool_name' => :'String',
        :'system_ai_enabled' => :'Boolean',
        :'recommended_model_for_forms' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'portal_mcp_server_id',
        :'embedding_model',
        :'model_aliases',
        :'knowledge_search_tool_name',
        :'web_search_tool_name',
        :'web_crawling_tool_name',
        :'generate_docx_tool_name',
        :'generate_form_tool_name',
        :'generate_presentation_tool_name',
        :'recommended_model_for_forms'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AiSettingsDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AiSettingsDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'web_search_enabled')
        self.web_search_enabled = attributes[:'web_search_enabled']
      end

      if attributes.key?(:'web_search_need_reset')
        self.web_search_need_reset = attributes[:'web_search_need_reset']
      end

      if attributes.key?(:'vectorization_enabled')
        self.vectorization_enabled = attributes[:'vectorization_enabled']
      end

      if attributes.key?(:'vectorization_need_reset')
        self.vectorization_need_reset = attributes[:'vectorization_need_reset']
      end

      if attributes.key?(:'ai_ready')
        self.ai_ready = attributes[:'ai_ready']
      end

      if attributes.key?(:'ai_ready_need_reset')
        self.ai_ready_need_reset = attributes[:'ai_ready_need_reset']
      end

      if attributes.key?(:'portal_mcp_server_id')
        self.portal_mcp_server_id = attributes[:'portal_mcp_server_id']
      end

      if attributes.key?(:'embedding_model')
        self.embedding_model = attributes[:'embedding_model']
      else
        self.embedding_model = nil
      end

      if attributes.key?(:'model_aliases')
        if (value = attributes[:'model_aliases']).is_a?(Hash)
          self.model_aliases = value
        end
      else
        self.model_aliases = nil
      end

      if attributes.key?(:'knowledge_search_tool_name')
        self.knowledge_search_tool_name = attributes[:'knowledge_search_tool_name']
      else
        self.knowledge_search_tool_name = nil
      end

      if attributes.key?(:'web_search_tool_name')
        self.web_search_tool_name = attributes[:'web_search_tool_name']
      else
        self.web_search_tool_name = nil
      end

      if attributes.key?(:'web_crawling_tool_name')
        self.web_crawling_tool_name = attributes[:'web_crawling_tool_name']
      else
        self.web_crawling_tool_name = nil
      end

      if attributes.key?(:'generate_docx_tool_name')
        self.generate_docx_tool_name = attributes[:'generate_docx_tool_name']
      else
        self.generate_docx_tool_name = nil
      end

      if attributes.key?(:'generate_form_tool_name')
        self.generate_form_tool_name = attributes[:'generate_form_tool_name']
      else
        self.generate_form_tool_name = nil
      end

      if attributes.key?(:'generate_presentation_tool_name')
        self.generate_presentation_tool_name = attributes[:'generate_presentation_tool_name']
      else
        self.generate_presentation_tool_name = nil
      end

      if attributes.key?(:'system_ai_enabled')
        self.system_ai_enabled = attributes[:'system_ai_enabled']
      end

      if attributes.key?(:'recommended_model_for_forms')
        self.recommended_model_for_forms = attributes[:'recommended_model_for_forms']
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
          web_search_enabled == o.web_search_enabled &&
          web_search_need_reset == o.web_search_need_reset &&
          vectorization_enabled == o.vectorization_enabled &&
          vectorization_need_reset == o.vectorization_need_reset &&
          ai_ready == o.ai_ready &&
          ai_ready_need_reset == o.ai_ready_need_reset &&
          portal_mcp_server_id == o.portal_mcp_server_id &&
          embedding_model == o.embedding_model &&
          model_aliases == o.model_aliases &&
          knowledge_search_tool_name == o.knowledge_search_tool_name &&
          web_search_tool_name == o.web_search_tool_name &&
          web_crawling_tool_name == o.web_crawling_tool_name &&
          generate_docx_tool_name == o.generate_docx_tool_name &&
          generate_form_tool_name == o.generate_form_tool_name &&
          generate_presentation_tool_name == o.generate_presentation_tool_name &&
          system_ai_enabled == o.system_ai_enabled &&
          recommended_model_for_forms == o.recommended_model_for_forms
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [web_search_enabled, web_search_need_reset, vectorization_enabled, vectorization_need_reset, ai_ready, ai_ready_need_reset, portal_mcp_server_id, embedding_model, model_aliases, knowledge_search_tool_name, web_search_tool_name, web_crawling_tool_name, generate_docx_tool_name, generate_form_tool_name, generate_presentation_tool_name, system_ai_enabled, recommended_model_for_forms].hash
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
