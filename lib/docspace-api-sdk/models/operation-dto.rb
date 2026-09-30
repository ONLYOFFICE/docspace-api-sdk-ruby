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
  # One movement on the portal wallet: what it was for, who caused it, and how much money it moved.
  class OperationDto < ApiModelBase
    # When the movement was booked, in the portal time zone - the same zone the `startDate` and `endDate`  filters are read in, so the two do line up here.
    attr_accessor :date

    # The wallet service the movement belongs to, by its stable key. It is what the `serviceName` filter  matches on, and it is empty for a movement that belongs to no service, such as a top-up.
    attr_accessor :service

    # A one-line summary of the movement in the portal language, already composed from the service and the  quantity - meant to be printed as it is rather than parsed.
    attr_accessor :description

    # The longer explanation of the same movement, where the service recorded one. It is empty for a movement  that has nothing to add to `description`.
    attr_accessor :details

    # What `quantity` counts for this service, in the portal language. AI consumption is reported in tokens  here rather than in the AI credits the service is sold in.
    attr_accessor :service_unit

    # How many units the movement covers, in the unit named by `serviceUnit`. It is `0` for a movement that  moves money without consuming a service.
    attr_accessor :quantity

    # The currency `credit` and `debit` are expressed in, as a three-letter ISO 4217 code. It is the accounting  currency of the wallet, which need not be the currency the subscription is priced in.
    attr_accessor :currency

    # The amount that went into the wallet. It is `0` on a movement that only took money out, so the pair of  `credit` and `debit` is what shows which way the money went; the `credit` and `debit` filters of the  operation select the two directions by exactly this.
    attr_accessor :credit

    # The amount that was taken out of the wallet, `0` on a movement that put money in.
    attr_accessor :debit

    # Who caused the movement, as the billing service records them - an internal name, which is what the  `participantName` filter matches on. Show `participantDisplayName` instead.
    attr_accessor :participant_name

    # The same person as their portal display name. It falls back to `participantName` when the name belongs to  no portal account, so it is never empty while `participantName` is filled.
    attr_accessor :participant_display_name

    # What kind of thing an AI operation was run on - an agent, a file, a folder, a room or a form. It is empty  on any movement that is not an AI charge.
    attr_accessor :source_type

    # The title that thing had when the operation ran, kept as recorded, so it does not follow a later rename.  Empty under the same conditions as `sourceType`.
    attr_accessor :source_title

    # The identifier of that thing, to look it up in the module it belongs to. Empty under the same conditions  as `sourceType`.
    attr_accessor :source_id

    # The tokens an AI operation consumed, broken down by kind - prompt, completion, cache reads and writes,  reasoning, images. It is `null` on any movement that is not an AI charge, and on an AI charge the billing  service recorded without token counts.
    attr_accessor :token_usage

    # What kind of movement this is - a payment, a charge, a refund, a correction. It is what the `type` filter  matches on, and `Unknown` covers a movement the billing service reported under a kind this build does not  recognise.
    attr_accessor :type

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
        :'date' => :'date',
        :'service' => :'service',
        :'description' => :'description',
        :'details' => :'details',
        :'service_unit' => :'serviceUnit',
        :'quantity' => :'quantity',
        :'currency' => :'currency',
        :'credit' => :'credit',
        :'debit' => :'debit',
        :'participant_name' => :'participantName',
        :'participant_display_name' => :'participantDisplayName',
        :'source_type' => :'sourceType',
        :'source_title' => :'sourceTitle',
        :'source_id' => :'sourceId',
        :'token_usage' => :'tokenUsage',
        :'type' => :'type'
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
        :'date' => :'ApiDateTime',
        :'service' => :'String',
        :'description' => :'String',
        :'details' => :'String',
        :'service_unit' => :'String',
        :'quantity' => :'Integer',
        :'currency' => :'String',
        :'credit' => :'Float',
        :'debit' => :'Float',
        :'participant_name' => :'String',
        :'participant_display_name' => :'String',
        :'source_type' => :'String',
        :'source_title' => :'String',
        :'source_id' => :'String',
        :'token_usage' => :'OperationTokenUsage',
        :'type' => :'OperationType'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'service',
        :'description',
        :'details',
        :'service_unit',
        :'currency',
        :'participant_name',
        :'participant_display_name',
        :'source_type',
        :'source_title',
        :'source_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::OperationDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::OperationDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'service')
        self.service = attributes[:'service']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'details')
        self.details = attributes[:'details']
      end

      if attributes.key?(:'service_unit')
        self.service_unit = attributes[:'service_unit']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'credit')
        self.credit = attributes[:'credit']
      end

      if attributes.key?(:'debit')
        self.debit = attributes[:'debit']
      end

      if attributes.key?(:'participant_name')
        self.participant_name = attributes[:'participant_name']
      end

      if attributes.key?(:'participant_display_name')
        self.participant_display_name = attributes[:'participant_display_name']
      end

      if attributes.key?(:'source_type')
        self.source_type = attributes[:'source_type']
      end

      if attributes.key?(:'source_title')
        self.source_title = attributes[:'source_title']
      end

      if attributes.key?(:'source_id')
        self.source_id = attributes[:'source_id']
      end

      if attributes.key?(:'token_usage')
        self.token_usage = attributes[:'token_usage']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
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
          date == o.date &&
          service == o.service &&
          description == o.description &&
          details == o.details &&
          service_unit == o.service_unit &&
          quantity == o.quantity &&
          currency == o.currency &&
          credit == o.credit &&
          debit == o.debit &&
          participant_name == o.participant_name &&
          participant_display_name == o.participant_display_name &&
          source_type == o.source_type &&
          source_title == o.source_title &&
          source_id == o.source_id &&
          token_usage == o.token_usage &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [date, service, description, details, service_unit, quantity, currency, credit, debit, participant_name, participant_display_name, source_type, source_title, source_id, token_usage, type].hash
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
