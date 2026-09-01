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
  # The wallet service information.
  class WalletServiceDto < ApiModelBase
    # The quota ID.
    attr_accessor :id

    # The quota title.
    attr_accessor :title

    # The price parameters.
    attr_accessor :price

    # Specifies if the quota is nonprofit or not.
    attr_accessor :non_profit

    # Specifies if the quota is free or not.
    attr_accessor :free

    # Specifies if the quota is trial or not.
    attr_accessor :trial

    # The list of tenant quota features.
    attr_accessor :features

    # The user quota.
    attr_accessor :users_quota

    # The room quota.
    attr_accessor :rooms_quota

    # The ai agent quota.
    attr_accessor :ai_agents_quota

    # The tenant custom quota.
    attr_accessor :tenant_custom_quota

    # The due date.
    attr_accessor :due_date

    # The list of inner services.
    attr_accessor :inner_services

    # The service name.
    attr_accessor :service_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'title' => :'title',
        :'price' => :'price',
        :'non_profit' => :'nonProfit',
        :'free' => :'free',
        :'trial' => :'trial',
        :'features' => :'features',
        :'users_quota' => :'usersQuota',
        :'rooms_quota' => :'roomsQuota',
        :'ai_agents_quota' => :'aiAgentsQuota',
        :'tenant_custom_quota' => :'tenantCustomQuota',
        :'due_date' => :'dueDate',
        :'inner_services' => :'innerServices',
        :'service_name' => :'serviceName'
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
        :'title' => :'String',
        :'price' => :'PriceDto',
        :'non_profit' => :'Boolean',
        :'free' => :'Boolean',
        :'trial' => :'Boolean',
        :'features' => :'Array<TenantQuotaFeatureDto>',
        :'users_quota' => :'TenantEntityQuotaSettings',
        :'rooms_quota' => :'TenantEntityQuotaSettings',
        :'ai_agents_quota' => :'TenantEntityQuotaSettings',
        :'tenant_custom_quota' => :'TenantQuotaSettings',
        :'due_date' => :'Time',
        :'inner_services' => :'Array<WalletServiceDto>',
        :'service_name' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'inner_services',
        :'service_name'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'QuotaDto'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::WalletServiceDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::WalletServiceDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      else
        self.price = nil
      end

      if attributes.key?(:'non_profit')
        self.non_profit = attributes[:'non_profit']
      else
        self.non_profit = nil
      end

      if attributes.key?(:'free')
        self.free = attributes[:'free']
      else
        self.free = nil
      end

      if attributes.key?(:'trial')
        self.trial = attributes[:'trial']
      else
        self.trial = nil
      end

      if attributes.key?(:'features')
        if (value = attributes[:'features']).is_a?(Array)
          self.features = value
        end
      else
        self.features = nil
      end

      if attributes.key?(:'users_quota')
        self.users_quota = attributes[:'users_quota']
      end

      if attributes.key?(:'rooms_quota')
        self.rooms_quota = attributes[:'rooms_quota']
      end

      if attributes.key?(:'ai_agents_quota')
        self.ai_agents_quota = attributes[:'ai_agents_quota']
      end

      if attributes.key?(:'tenant_custom_quota')
        self.tenant_custom_quota = attributes[:'tenant_custom_quota']
      end

      if attributes.key?(:'due_date')
        self.due_date = attributes[:'due_date']
      end

      if attributes.key?(:'inner_services')
        if (value = attributes[:'inner_services']).is_a?(Array)
          self.inner_services = value
        end
      end

      if attributes.key?(:'service_name')
        self.service_name = attributes[:'service_name']
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

      if @price.nil?
        invalid_properties.push('invalid value for "price", price cannot be nil.')
      end

      if @non_profit.nil?
        invalid_properties.push('invalid value for "non_profit", non_profit cannot be nil.')
      end

      if @free.nil?
        invalid_properties.push('invalid value for "free", free cannot be nil.')
      end

      if @trial.nil?
        invalid_properties.push('invalid value for "trial", trial cannot be nil.')
      end

      if @features.nil?
        invalid_properties.push('invalid value for "features", features cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @price.nil?
      return false if @non_profit.nil?
      return false if @free.nil?
      return false if @trial.nil?
      return false if @features.nil?
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
    # @param [Object] price Value to be assigned
    def price=(price)
      if price.nil?
        fail ArgumentError, 'price cannot be nil'
      end

      @price = price
    end

    # Custom attribute writer method with validation
    # @param [Object] non_profit Value to be assigned
    def non_profit=(non_profit)
      if non_profit.nil?
        fail ArgumentError, 'non_profit cannot be nil'
      end

      @non_profit = non_profit
    end

    # Custom attribute writer method with validation
    # @param [Object] free Value to be assigned
    def free=(free)
      if free.nil?
        fail ArgumentError, 'free cannot be nil'
      end

      @free = free
    end

    # Custom attribute writer method with validation
    # @param [Object] trial Value to be assigned
    def trial=(trial)
      if trial.nil?
        fail ArgumentError, 'trial cannot be nil'
      end

      @trial = trial
    end

    # Custom attribute writer method with validation
    # @param [Object] features Value to be assigned
    def features=(features)
      if features.nil?
        fail ArgumentError, 'features cannot be nil'
      end

      @features = features
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          title == o.title &&
          price == o.price &&
          non_profit == o.non_profit &&
          free == o.free &&
          trial == o.trial &&
          features == o.features &&
          users_quota == o.users_quota &&
          rooms_quota == o.rooms_quota &&
          ai_agents_quota == o.ai_agents_quota &&
          tenant_custom_quota == o.tenant_custom_quota &&
          due_date == o.due_date &&
          inner_services == o.inner_services &&
          service_name == o.service_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, title, price, non_profit, free, trial, features, users_quota, rooms_quota, ai_agents_quota, tenant_custom_quota, due_date, inner_services, service_name].hash
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
