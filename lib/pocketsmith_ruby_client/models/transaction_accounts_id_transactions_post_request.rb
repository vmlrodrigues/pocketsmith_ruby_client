=begin
#PocketSmith

#The PocketSmith API

The version of the OpenAPI document: 2.0
Contact: api@pocketsmith.com
Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'date'
require 'time'

module PocketsmithClient
  class TransactionAccountsIdTransactionsPostRequest
    # The payee/merchant of the transaction.
    attr_accessor :payee

    # The amount of the transaction. A positive amount is a credit, and a negative amount is a debit.
    attr_accessor :amount

    # The date when the transaction occurred.
    attr_accessor :date

    # Whether the transaction should be indicated as a transfer.
    attr_accessor :is_transfer

    # A set of comma-separated labels for the transaction.
    attr_accessor :labels

    # The unique identifier of a category for the transaction.
    attr_accessor :category_id

    # A note for the transaction.
    attr_accessor :note

    # A memo for the transaction.
    attr_accessor :memo

    # A cheque number for the transaction.
    attr_accessor :cheque_number

    # Whether the transaction needs to be reviewed or not.
    attr_accessor :needs_review

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'payee' => :'payee',
        :'amount' => :'amount',
        :'date' => :'date',
        :'is_transfer' => :'is_transfer',
        :'labels' => :'labels',
        :'category_id' => :'category_id',
        :'note' => :'note',
        :'memo' => :'memo',
        :'cheque_number' => :'cheque_number',
        :'needs_review' => :'needs_review'
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
        :'payee' => :'String',
        :'amount' => :'Float',
        :'date' => :'String',
        :'is_transfer' => :'Boolean',
        :'labels' => :'String',
        :'category_id' => :'Integer',
        :'note' => :'String',
        :'memo' => :'String',
        :'cheque_number' => :'String',
        :'needs_review' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `PocketsmithClient::TransactionAccountsIdTransactionsPostRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PocketsmithClient::TransactionAccountsIdTransactionsPostRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'payee')
        self.payee = attributes[:'payee']
      else
        self.payee = nil
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      else
        self.amount = nil
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      else
        self.date = nil
      end

      if attributes.key?(:'is_transfer')
        self.is_transfer = attributes[:'is_transfer']
      end

      if attributes.key?(:'labels')
        self.labels = attributes[:'labels']
      end

      if attributes.key?(:'category_id')
        self.category_id = attributes[:'category_id']
      end

      if attributes.key?(:'note')
        self.note = attributes[:'note']
      end

      if attributes.key?(:'memo')
        self.memo = attributes[:'memo']
      end

      if attributes.key?(:'cheque_number')
        self.cheque_number = attributes[:'cheque_number']
      end

      if attributes.key?(:'needs_review')
        self.needs_review = attributes[:'needs_review']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @payee.nil?
        invalid_properties.push('invalid value for "payee", payee cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @date.nil?
        invalid_properties.push('invalid value for "date", date cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @payee.nil?
      return false if @amount.nil?
      return false if @date.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] payee Value to be assigned
    def payee=(payee)
      if payee.nil?
        fail ArgumentError, 'payee cannot be nil'
      end

      @payee = payee
    end

    # Custom attribute writer method with validation
    # @param [Object] amount Value to be assigned
    def amount=(amount)
      if amount.nil?
        fail ArgumentError, 'amount cannot be nil'
      end

      @amount = amount
    end

    # Custom attribute writer method with validation
    # @param [Object] date Value to be assigned
    def date=(date)
      if date.nil?
        fail ArgumentError, 'date cannot be nil'
      end

      @date = date
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          payee == o.payee &&
          amount == o.amount &&
          date == o.date &&
          is_transfer == o.is_transfer &&
          labels == o.labels &&
          category_id == o.category_id &&
          note == o.note &&
          memo == o.memo &&
          cheque_number == o.cheque_number &&
          needs_review == o.needs_review
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [payee, amount, date, is_transfer, labels, category_id, note, memo, cheque_number, needs_review].hash
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

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = PocketsmithClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
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

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
