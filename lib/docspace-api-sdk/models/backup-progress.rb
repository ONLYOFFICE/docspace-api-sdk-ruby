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
  # The backup progress parameters.
  class BackupProgress < ApiModelBase
    # Specifies if the backup is completed or not.
    attr_accessor :is_completed

    # The backup progress in percentage.
    attr_accessor :progress

    # The backup error message.
    attr_accessor :error

    # The backup warning message.
    attr_accessor :warning

    # The backup link.
    attr_accessor :link

    # The tenant ID.
    attr_accessor :tenant_id

    # The backup progress type.
    attr_accessor :backup_progress_enum

    # The backup progress status.
    attr_accessor :status

    # The task ID.
    attr_accessor :task_id

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
        :'is_completed' => :'isCompleted',
        :'progress' => :'progress',
        :'error' => :'error',
        :'warning' => :'warning',
        :'link' => :'link',
        :'tenant_id' => :'tenantId',
        :'backup_progress_enum' => :'backupProgressEnum',
        :'status' => :'status',
        :'task_id' => :'taskId'
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
        :'is_completed' => :'Boolean',
        :'progress' => :'Integer',
        :'error' => :'String',
        :'warning' => :'String',
        :'link' => :'String',
        :'tenant_id' => :'Integer',
        :'backup_progress_enum' => :'BackupProgressEnum',
        :'status' => :'DistributedTaskStatus',
        :'task_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'error',
        :'warning',
        :'link',
        :'task_id'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::BackupProgress` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::BackupProgress`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'is_completed')
        self.is_completed = attributes[:'is_completed']
      end

      if attributes.key?(:'progress')
        self.progress = attributes[:'progress']
      end

      if attributes.key?(:'error')
        self.error = attributes[:'error']
      end

      if attributes.key?(:'warning')
        self.warning = attributes[:'warning']
      end

      if attributes.key?(:'link')
        self.link = attributes[:'link']
      end

      if attributes.key?(:'tenant_id')
        self.tenant_id = attributes[:'tenant_id']
      end

      if attributes.key?(:'backup_progress_enum')
        self.backup_progress_enum = attributes[:'backup_progress_enum']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'task_id')
        self.task_id = attributes[:'task_id']
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
          is_completed == o.is_completed &&
          progress == o.progress &&
          error == o.error &&
          warning == o.warning &&
          link == o.link &&
          tenant_id == o.tenant_id &&
          backup_progress_enum == o.backup_progress_enum &&
          status == o.status &&
          task_id == o.task_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [is_completed, progress, error, warning, link, tenant_id, backup_progress_enum, status, task_id].hash
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
