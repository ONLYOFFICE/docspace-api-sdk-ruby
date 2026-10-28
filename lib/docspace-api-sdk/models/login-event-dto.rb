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
  # One entry of the portal login history: a sign-in, a sign-out or a failed attempt, and where it came from.
  class LoginEventDto < ApiModelBase
    # The ID of the recorded sign-in. When the entry is a successful sign-in that is still open, this is also  the value `GET api/2.0/security/activeconnections` reports as the connection's `id`.
    attr_accessor :id

    # When the attempt was made, in the portal time zone. The `from` and `to` filters are read as UTC instants,  so the two do not line up on a portal that is not on UTC.
    attr_accessor :date

    # The display name of the account the attempt was made against, taken from the account as it stands now  rather than as it stood at the time. A localised placeholder stands in when there is no account to read,  which is the usual case for a failed attempt on an address nobody owns.
    attr_accessor :user

    # The ID of that account, which is what the `userId` filter of this operation matches on. It is the empty  GUID when the attempt could not be tied to an account.
    attr_accessor :user_id

    # The login string as it was typed - normally the email address. It is the only field that survives a failed  attempt against an unknown account, which makes it the one to read when `user` is a placeholder.
    attr_accessor :login

    # The event as a readable sentence in the portal language. On `GET api/2.0/security/audit/login/last` each  substituted value is cut to 50 characters; the filtered operation substitutes them in full.
    attr_accessor :action

    # What happened, as the `action` filter of this operation spells it: a successful sign-in, a failed one, a  sign-out. Use this rather than parsing `action`, which is prose and changes with the portal language.
    attr_accessor :action_id

    # The IP address the attempt came from, with the port stripped off.
    attr_accessor :ip

    # The English name of the country the IP address is located in, empty when the address cannot be located -  the normal outcome for private and loopback addresses.
    attr_accessor :country

    # The city the IP address is located in, empty under the same conditions as `country`.
    attr_accessor :city

    # The browser and its version as parsed from the user agent of the attempt, empty when the client sent none  that could be parsed.
    attr_accessor :browser

    # The operating system as parsed from the same user agent, empty under the same conditions as `browser`.
    attr_accessor :platform

    # Where in the portal the attempt was made from: the referrer of the request, or that request's own path  when it carried no referrer. Long values are cut off at 512 characters.
    attr_accessor :page

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
        :'id' => :'id',
        :'date' => :'date',
        :'user' => :'user',
        :'user_id' => :'userId',
        :'login' => :'login',
        :'action' => :'action',
        :'action_id' => :'actionId',
        :'ip' => :'ip',
        :'country' => :'country',
        :'city' => :'city',
        :'browser' => :'browser',
        :'platform' => :'platform',
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
        :'date' => :'ApiDateTime',
        :'user' => :'String',
        :'user_id' => :'String',
        :'login' => :'String',
        :'action' => :'String',
        :'action_id' => :'MessageAction',
        :'ip' => :'String',
        :'country' => :'String',
        :'city' => :'String',
        :'browser' => :'String',
        :'platform' => :'String',
        :'page' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'user',
        :'login',
        :'action',
        :'ip',
        :'country',
        :'city',
        :'browser',
        :'platform',
        :'page'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::LoginEventDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::LoginEventDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'login')
        self.login = attributes[:'login']
      end

      if attributes.key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.key?(:'action_id')
        self.action_id = attributes[:'action_id']
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

      if attributes.key?(:'page')
        self.page = attributes[:'page']
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
          id == o.id &&
          date == o.date &&
          user == o.user &&
          user_id == o.user_id &&
          login == o.login &&
          action == o.action &&
          action_id == o.action_id &&
          ip == o.ip &&
          country == o.country &&
          city == o.city &&
          browser == o.browser &&
          platform == o.platform &&
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
      [id, date, user, user_id, login, action, action_id, ip, country, city, browser, platform, page].hash
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
