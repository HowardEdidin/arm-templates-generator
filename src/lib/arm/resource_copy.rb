# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM

    #
    # Model object.
    #
    class ResourceCopy < Azure::ARM::TypeBase
      # @return [String] Name of the copy
      attr_accessor :name

      # @return Count of the copy
      attr_accessor :count

      #
      # Validate the object. Throws ArgumentError if validation fails.
      #
      def validate
        # Nothing to validate
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

        serialized_property = object.count
        output_object[:count] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        ResourceCopy.serialize_object(hash,self)
        hash
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ResourceCopy] Deserialized object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?

        deserialized_property = object[:name]
        output_object.name = deserialized_property

        deserialized_property = object[:count]
        output_object.count = deserialized_property

        output_object
      end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          ResourceCopy.deserialize_object(self, init)
        end
      end
    end

end