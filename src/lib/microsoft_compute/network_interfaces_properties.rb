# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require_relative '../arm/module_definition'
require_relative './module_definition'

module Azure::ARM::Compute
    #
    # Model object.
    #
    class NetworkInterfacesProperties < Azure::ARM::TypeBase

      # @return [Boolean]
      attr_accessor :primary

      #
      # Validate the object. Throws ValidationError if validation fails.
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
        Azure::ARM::TypeBase.serialize_object(output_object, object)
        object.validate

        serialized_property = object.primary
        output_object[:primary] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        NetworkInterfacesProperties.serialize_object(hash,self)
        hash
      end

      def self.ds_properties
        result = Array.new 
        result.push :primary
        result
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [NetworkInterfacesProperties] Deserialized object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?
        conf = Configurator.new
        conf.parent = output_object

        if object.key?(:primary)
          conf.primary object[:primary]
          object.delete :primary
        end

        output_object
      end

      def get_name_template
        'nip'
        end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          NetworkInterfacesProperties.deserialize_object self, init.clone
        end
      end

      # Configuration code
      class Configurator < Azure::ARM::ResourceConfigurator
        attr_accessor :parent
        # @param primary
        #        Boolean
        def primary(props)
          if props.is_a? TrueClass or props.is_a? FalseClass or props.is_a? Azure::ARM::Expression
            @parent.primary = props
            return
          end
          @parent.primary
        end
        def create(init=nil,&block)
          @parent = NetworkInterfacesProperties.new nil, init
          self.instance_exec(@parent,&block) if block
          @parent
        end
      end
      def configure(&block)
        conf = Configurator.new
        conf.parent = self
        conf.instance_exec(self,&block) if block
        self
      end
    end
end