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
  # The active connection item parameters.
  class ActiveConnectionsItemDto < ApiModelBase
    # The active connection ID.
    attr_accessor :id

    # The tenant ID.
    attr_accessor :tenant_id

    # The user ID.
    attr_accessor :user_id

    # Specifies if the active connection has a mobile phone or not.
    attr_accessor :mobile

    # The IP address of the active connection.
    attr_accessor :ip

    # The active connection country.
    attr_accessor :country

    # The active connection city.
    attr_accessor :city

    # The active connection browser.
    attr_accessor :browser

    # The active connection platform.
    attr_accessor :platform

    # The active connection date.
    attr_accessor :date

    # The active connection page.
    attr_accessor :page

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'tenant_id' => :'tenantId',
        :'user_id' => :'userId',
        :'mobile' => :'mobile',
        :'ip' => :'ip',
        :'country' => :'country',
        :'city' => :'city',
        :'browser' => :'browser',
        :'platform' => :'platform',
        :'date' => :'date',
        :'page' => :'page'
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
        :'id' => :'Integer',
        :'tenant_id' => :'Integer',
        :'user_id' => :'String',
        :'mobile' => :'Boolean',
        :'ip' => :'String',
        :'country' => :'String',
        :'city' => :'String',
        :'browser' => :'String',
        :'platform' => :'String',
        :'date' => :'Time',
        :'page' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'ip',
        :'country',
        :'city',
        :'browser',
        :'platform',
        :'date',
        :'page'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::ActiveConnectionsItemDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::ActiveConnectionsItemDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'tenant_id')
        self.tenant_id = attributes[:'tenant_id']
      else
        self.tenant_id = nil
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      else
        self.user_id = nil
      end

      if attributes.key?(:'mobile')
        self.mobile = attributes[:'mobile']
      end

      if attributes.key?(:'ip')
        self.ip = attributes[:'ip']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'browser')
        self.browser = attributes[:'browser']
      end

      if attributes.key?(:'platform')
        self.platform = attributes[:'platform']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'page')
        self.page = attributes[:'page']
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

      if @tenant_id.nil?
        invalid_properties.push('invalid value for "tenant_id", tenant_id cannot be nil.')
      end

      if @user_id.nil?
        invalid_properties.push('invalid value for "user_id", user_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @tenant_id.nil?
      return false if @user_id.nil?
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

    # Custom attribute writer method with validation
    # @param [Object] tenant_id Value to be assigned
    def tenant_id=(tenant_id)
      if tenant_id.nil?
        fail ArgumentError, 'tenant_id cannot be nil'
      end

      @tenant_id = tenant_id
    end

    # Custom attribute writer method with validation
    # @param [Object] user_id Value to be assigned
    def user_id=(user_id)
      if user_id.nil?
        fail ArgumentError, 'user_id cannot be nil'
      end

      @user_id = user_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          tenant_id == o.tenant_id &&
          user_id == o.user_id &&
          mobile == o.mobile &&
          ip == o.ip &&
          country == o.country &&
          city == o.city &&
          browser == o.browser &&
          platform == o.platform &&
          date == o.date &&
          page == o.page
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, tenant_id, user_id, mobile, ip, country, city, browser, platform, date, page].hash
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
