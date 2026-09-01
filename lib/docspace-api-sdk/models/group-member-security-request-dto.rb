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
  # The group member security information.
  class GroupMemberSecurityRequestDto < ApiModelBase
    # The group member parameters.
    attr_accessor :user

    # The group access rights to the files.
    attr_accessor :group_access

    # The group member access rights to the files.
    attr_accessor :user_access

    # Specifies if the group access rights are overridden or not.
    attr_accessor :overridden

    # Specifies if the group member can edit the group access rights or not.
    attr_accessor :can_edit_access

    # Specifies if the group member is a group owner or not.
    attr_accessor :owner

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
        :'user' => :'user',
        :'group_access' => :'groupAccess',
        :'user_access' => :'userAccess',
        :'overridden' => :'overridden',
        :'can_edit_access' => :'canEditAccess',
        :'owner' => :'owner'
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
        :'user' => :'EmployeeFullDto',
        :'group_access' => :'FileShare',
        :'user_access' => :'FileShare',
        :'overridden' => :'Boolean',
        :'can_edit_access' => :'Boolean',
        :'owner' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::GroupMemberSecurityRequestDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::GroupMemberSecurityRequestDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'user')
        self.user = attributes[:'user']
      else
        self.user = nil
      end

      if attributes.key?(:'group_access')
        self.group_access = attributes[:'group_access']
      else
        self.group_access = nil
      end

      if attributes.key?(:'user_access')
        self.user_access = attributes[:'user_access']
      end

      if attributes.key?(:'overridden')
        self.overridden = attributes[:'overridden']
      else
        self.overridden = nil
      end

      if attributes.key?(:'can_edit_access')
        self.can_edit_access = attributes[:'can_edit_access']
      else
        self.can_edit_access = nil
      end

      if attributes.key?(:'owner')
        self.owner = attributes[:'owner']
      else
        self.owner = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @user.nil?
        invalid_properties.push('invalid value for "user", user cannot be nil.')
      end

      if @group_access.nil?
        invalid_properties.push('invalid value for "group_access", group_access cannot be nil.')
      end

      if @overridden.nil?
        invalid_properties.push('invalid value for "overridden", overridden cannot be nil.')
      end

      if @can_edit_access.nil?
        invalid_properties.push('invalid value for "can_edit_access", can_edit_access cannot be nil.')
      end

      if @owner.nil?
        invalid_properties.push('invalid value for "owner", owner cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @user.nil?
      return false if @group_access.nil?
      return false if @overridden.nil?
      return false if @can_edit_access.nil?
      return false if @owner.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] user Value to be assigned
    def user=(user)
      if user.nil?
        fail ArgumentError, 'user cannot be nil'
      end

      @user = user
    end

    # Custom attribute writer method with validation
    # @param [Object] group_access Value to be assigned
    def group_access=(group_access)
      if group_access.nil?
        fail ArgumentError, 'group_access cannot be nil'
      end

      @group_access = group_access
    end

    # Custom attribute writer method with validation
    # @param [Object] overridden Value to be assigned
    def overridden=(overridden)
      if overridden.nil?
        fail ArgumentError, 'overridden cannot be nil'
      end

      @overridden = overridden
    end

    # Custom attribute writer method with validation
    # @param [Object] can_edit_access Value to be assigned
    def can_edit_access=(can_edit_access)
      if can_edit_access.nil?
        fail ArgumentError, 'can_edit_access cannot be nil'
      end

      @can_edit_access = can_edit_access
    end

    # Custom attribute writer method with validation
    # @param [Object] owner Value to be assigned
    def owner=(owner)
      if owner.nil?
        fail ArgumentError, 'owner cannot be nil'
      end

      @owner = owner
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          user == o.user &&
          group_access == o.group_access &&
          user_access == o.user_access &&
          overridden == o.overridden &&
          can_edit_access == o.can_edit_access &&
          owner == o.owner
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [user, group_access, user_access, overridden, can_edit_access, owner].hash
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
