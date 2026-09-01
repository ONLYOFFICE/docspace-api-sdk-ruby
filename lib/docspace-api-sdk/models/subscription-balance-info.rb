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
  # The information about the current subscription and its unused balance.
  class SubscriptionBalanceInfo < ApiModelBase
    # The total cost of the current billing period (the sum across all subscription items).
    attr_accessor :total_cost

    # The three-character ISO 4217 currency symbol of the subscription.
    attr_accessor :currency

    # The start of the current billing period.
    attr_accessor :period_start

    # The end of the current billing period.
    attr_accessor :period_end

    # The boundary of the used part of the period (the moment of the request).
    attr_accessor :period_used_until

    # The number of days elapsed since the start of the period (inclusive).
    attr_accessor :days_elapsed

    # The unused balance of the subscription, in the subscription currency.
    attr_accessor :remaining_balance

    # The unused balance of the subscription, converted to the wallet currency.
    attr_accessor :remaining_balance_in_wallet_currency

    # The three-character ISO 4217 currency symbol of the wallet.
    attr_accessor :wallet_currency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'total_cost' => :'totalCost',
        :'currency' => :'currency',
        :'period_start' => :'periodStart',
        :'period_end' => :'periodEnd',
        :'period_used_until' => :'periodUsedUntil',
        :'days_elapsed' => :'daysElapsed',
        :'remaining_balance' => :'remainingBalance',
        :'remaining_balance_in_wallet_currency' => :'remainingBalanceInWalletCurrency',
        :'wallet_currency' => :'walletCurrency'
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
        :'total_cost' => :'Float',
        :'currency' => :'String',
        :'period_start' => :'Time',
        :'period_end' => :'Time',
        :'period_used_until' => :'Time',
        :'days_elapsed' => :'Integer',
        :'remaining_balance' => :'Float',
        :'remaining_balance_in_wallet_currency' => :'Float',
        :'wallet_currency' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'currency',
        :'wallet_currency'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::SubscriptionBalanceInfo` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::SubscriptionBalanceInfo`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'total_cost')
        self.total_cost = attributes[:'total_cost']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'period_start')
        self.period_start = attributes[:'period_start']
      end

      if attributes.key?(:'period_end')
        self.period_end = attributes[:'period_end']
      end

      if attributes.key?(:'period_used_until')
        self.period_used_until = attributes[:'period_used_until']
      end

      if attributes.key?(:'days_elapsed')
        self.days_elapsed = attributes[:'days_elapsed']
      end

      if attributes.key?(:'remaining_balance')
        self.remaining_balance = attributes[:'remaining_balance']
      end

      if attributes.key?(:'remaining_balance_in_wallet_currency')
        self.remaining_balance_in_wallet_currency = attributes[:'remaining_balance_in_wallet_currency']
      end

      if attributes.key?(:'wallet_currency')
        self.wallet_currency = attributes[:'wallet_currency']
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
          total_cost == o.total_cost &&
          currency == o.currency &&
          period_start == o.period_start &&
          period_end == o.period_end &&
          period_used_until == o.period_used_until &&
          days_elapsed == o.days_elapsed &&
          remaining_balance == o.remaining_balance &&
          remaining_balance_in_wallet_currency == o.remaining_balance_in_wallet_currency &&
          wallet_currency == o.wallet_currency
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [total_cost, currency, period_start, period_end, period_used_until, days_elapsed, remaining_balance, remaining_balance_in_wallet_currency, wallet_currency].hash
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
