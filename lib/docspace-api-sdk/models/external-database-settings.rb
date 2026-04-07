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
  class ExternalDatabaseSettings < ApiModelBase
    attr_accessor :database_type

    attr_accessor :database_type_enum

    attr_accessor :db_host

    attr_accessor :db_port

    attr_accessor :db_name

    attr_accessor :db_user

    attr_accessor :db_password

    attr_accessor :db_ssl

    attr_accessor :sqlite_file_path

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
        :'database_type' => :'databaseType',
        :'database_type_enum' => :'databaseTypeEnum',
        :'db_host' => :'dbHost',
        :'db_port' => :'dbPort',
        :'db_name' => :'dbName',
        :'db_user' => :'dbUser',
        :'db_password' => :'dbPassword',
        :'db_ssl' => :'dbSsl',
        :'sqlite_file_path' => :'sqliteFilePath'
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
        :'database_type' => :'String',
        :'database_type_enum' => :'ExternalDatabaseType',
        :'db_host' => :'String',
        :'db_port' => :'Integer',
        :'db_name' => :'String',
        :'db_user' => :'String',
        :'db_password' => :'String',
        :'db_ssl' => :'Boolean',
        :'sqlite_file_path' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'database_type',
        :'db_host',
        :'db_name',
        :'db_user',
        :'db_password',
        :'sqlite_file_path'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::ExternalDatabaseSettings` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::ExternalDatabaseSettings`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'database_type')
        self.database_type = attributes[:'database_type']
      end

      if attributes.key?(:'database_type_enum')
        self.database_type_enum = attributes[:'database_type_enum']
      end

      if attributes.key?(:'db_host')
        self.db_host = attributes[:'db_host']
      end

      if attributes.key?(:'db_port')
        self.db_port = attributes[:'db_port']
      end

      if attributes.key?(:'db_name')
        self.db_name = attributes[:'db_name']
      end

      if attributes.key?(:'db_user')
        self.db_user = attributes[:'db_user']
      end

      if attributes.key?(:'db_password')
        self.db_password = attributes[:'db_password']
      end

      if attributes.key?(:'db_ssl')
        self.db_ssl = attributes[:'db_ssl']
      end

      if attributes.key?(:'sqlite_file_path')
        self.sqlite_file_path = attributes[:'sqlite_file_path']
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
          database_type == o.database_type &&
          database_type_enum == o.database_type_enum &&
          db_host == o.db_host &&
          db_port == o.db_port &&
          db_name == o.db_name &&
          db_user == o.db_user &&
          db_password == o.db_password &&
          db_ssl == o.db_ssl &&
          sqlite_file_path == o.sqlite_file_path
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [database_type, database_type_enum, db_host, db_port, db_name, db_user, db_password, db_ssl, sqlite_file_path].hash
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
