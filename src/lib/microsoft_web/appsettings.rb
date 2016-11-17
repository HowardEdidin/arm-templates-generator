# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require_relative '../arm/module_definition'
require_relative './module_definition'

module Azure::ARM::Web
    #
    # Model object.
    #
    class Appsettings < Azure::ARM::TypeBase

      # @return
      attr_accessor :name

      # @return
      attr_accessor :properties

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        fail ArgumentError, 'property name is nil' if @name.nil?
        fail ArgumentError, 'property properties is nil' if @properties.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(output_object, object)
        Azure::ARM::TypeBase.serialize_object(output_object, object)
        object.validate

        serialized_property = object.name
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:name] = serialized_property unless serialized_property.nil?

        serialized_property = object.properties
        output_object[:properties] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        Appsettings.serialize_object(hash,self)
        hash
      end

      def self.ds_properties
        result = Array.new 
        result.push :properties
        result
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [Appsettings] Deserialized object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?
        conf = Configurator.new
        conf.parent = output_object

        if object.key?(:name)
          conf.name object[:name]
          object.delete :name
        end

        if object.key?(:properties)
          conf.properties object[:properties]
        end

                unless object.key?(:properties)
          conf.properties object
        end

        output_object
      end

      def get_name_template
        'a'
        end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          Appsettings.deserialize_object self, init.clone
        end
      end

      # Configuration code
      class Configurator < Azure::ARM::ResourceConfigurator
        attr_accessor :parent
        # @param name
        #        A string, one of 'appsettings'
        #        Expression
        def name(props)
          if props.is_a? String
            fail ArgumentError, "#{props} is an invalid value for @parent.name" unless ['appsettings'].index(props)
            @parent.name = props
            return
          end
          if @parent.name.nil? and props.is_a? Azure::ARM::Expression
            @parent.name = props
          end
          @parent.name
        end
        # @param properties
        #        Object
        def properties(props)
          if props.is_a? Object or props.is_a? Azure::ARM::Expression
            @parent.properties = props
            return
          end
          @parent.properties
        end
        def create(init=nil,&block)
          @parent = Appsettings.new nil, init
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
