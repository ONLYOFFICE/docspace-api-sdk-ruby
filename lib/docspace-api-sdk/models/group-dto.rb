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
  # The group parameters.
  class GroupDto < ApiModelBase
    # The group name.
    attr_accessor :name

    # The parent group ID.
    attr_accessor :parent

    # The group category ID.
    attr_accessor :category

    # The group ID.
    attr_accessor :id

    # Specifies if the LDAP settings are enabled for the group or not.
    attr_accessor :is_ldap

    # Indicates whether the group is a system group.
    attr_accessor :is_system

    # The group manager full information.
    attr_accessor :manager

    # The list of group members.
    attr_accessor :members

    # Specifies whether the group can be shared or not.
    attr_accessor :shared

    # The number of group members.
    attr_accessor :members_count

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'parent' => :'parent',
        :'category' => :'category',
        :'id' => :'id',
        :'is_ldap' => :'isLDAP',
        :'is_system' => :'isSystem',
        :'manager' => :'manager',
        :'members' => :'members',
        :'shared' => :'shared',
        :'members_count' => :'membersCount'
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
        :'parent' => :'String',
        :'category' => :'String',
        :'id' => :'String',
        :'is_ldap' => :'Boolean',
        :'is_system' => :'Boolean',
        :'manager' => :'EmployeeFullDto',
        :'members' => :'Array<EmployeeFullDto>',
        :'shared' => :'Boolean',
        :'members_count' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'parent',
        :'is_system',
        :'members',
        :'shared',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::GroupDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::GroupDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'parent')
        self.parent = attributes[:'parent']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      else
        self.category = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'is_ldap')
        self.is_ldap = attributes[:'is_ldap']
      else
        self.is_ldap = nil
      end

      if attributes.key?(:'is_system')
        self.is_system = attributes[:'is_system']
      end

      if attributes.key?(:'manager')
        self.manager = attributes[:'manager']
      end

      if attributes.key?(:'members')
        if (value = attributes[:'members']).is_a?(Array)
          self.members = value
        end
      end

      if attributes.key?(:'shared')
        self.shared = attributes[:'shared']
      end

      if attributes.key?(:'members_count')
        self.members_count = attributes[:'members_count']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @category.nil?
        invalid_properties.push('invalid value for "category", category cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @is_ldap.nil?
        invalid_properties.push('invalid value for "is_ldap", is_ldap cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @category.nil?
      return false if @id.nil?
      return false if @is_ldap.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] category Value to be assigned
    def category=(category)
      if category.nil?
        fail ArgumentError, 'category cannot be nil'
      end

      @category = category
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] is_ldap Value to be assigned
    def is_ldap=(is_ldap)
      if is_ldap.nil?
        fail ArgumentError, 'is_ldap cannot be nil'
      end

      @is_ldap = is_ldap
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          parent == o.parent &&
          category == o.category &&
          id == o.id &&
          is_ldap == o.is_ldap &&
          is_system == o.is_system &&
          manager == o.manager &&
          members == o.members &&
          shared == o.shared &&
          members_count == o.members_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, parent, category, id, is_ldap, is_system, manager, members, shared, members_count].hash
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
