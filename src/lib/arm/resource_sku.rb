# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require_relative '../../arm/expression'
require_relative '../../arm/models/type_base'

module Azure::ARM

    #
    # Model object.
    #
    # noinspection RubyResolve
    class ResourceSku < Azure::ARM::TypeBase
      # @return [String] Name of the sku
      attr_accessor :name

      # @return [String] Tier of the sku
      attr_accessor :tier

      # @return [String] Size of the sku
      attr_accessor :size

      # @return [String] Family of the sku
      attr_accessor :family

      # @return [Integer] Capacity of the sku
      attr_accessor :capacity

      #
      # Validate the object. Throws ArgumentError if validation fails.
      #
      def validate
        fail ArgumentError, 'property name is nil' if @name.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(output_object, object)
        object.validate

        serialized_property = object.name
        output_object[:name] = serialized_property unless serialized_property.nil?

        serialized_property = object.tier
        output_object[:tier] = serialized_property unless serialized_property.nil?

        serialized_property = object.size
        output_object[:size] = serialized_property unless serialized_property.nil?

        serialized_property = object.family
        output_object[:family] = serialized_property unless serialized_property.nil?

        serialized_property = object.capacity
        output_object[:capacity] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        ResourceSku.serialize_object(hash,self)
        hash
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ResourceSku] Deserialized object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?

        deserialized_property = object[:name]
        output_object.name = deserialized_property

        deserialized_property = object[:tier]
        output_object.tier = deserialized_property

        deserialized_property = object[:size]
        output_object.size = deserialized_property

        deserialized_property = object[:family]
        output_object.family = deserialized_property

        deserialized_property = object[:capacity]
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.capacity = deserialized_property

        output_object
      end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          ResourceSku.deserialize_object(self, init)
        end
      end
    end

end
