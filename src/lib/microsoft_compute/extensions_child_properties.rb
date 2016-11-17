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
    class ExtensionsChildProperties < Azure::ARM::TypeBase

      # @return [String] Microsoft.Compute/extensionsChild - Publisher
      attr_accessor :publisher

      # @return [String] Microsoft.Compute/extensionsChild - Type
      attr_accessor :type

      # @return [String] Microsoft.Compute/extensionsChild - Type handler
      # version
      attr_accessor :type_handler_version

      # @return Microsoft.Compute/extensionsChild - Settings
      attr_accessor :settings

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(output_object, object)
        Azure::ARM::TypeBase.serialize_object(output_object, object)
        object.validate

        serialized_property = object.publisher
        output_object[:publisher] = serialized_property unless serialized_property.nil?

        serialized_property = object.type
        output_object[:type] = serialized_property unless serialized_property.nil?

        serialized_property = object.type_handler_version
        output_object[:typeHandlerVersion] = serialized_property unless serialized_property.nil?

        serialized_property = object.settings
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:settings] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        ExtensionsChildProperties.serialize_object(hash,self)
        hash
      end

      def self.ds_properties
        result = Array.new 
        result.push :publisher
        result.push :type_handler_version
        result.push :settings
        result
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ExtensionsChildProperties] Deserialized object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?
        conf = Configurator.new
        conf.parent = output_object

        if object.key?(:publisher)
          conf.publisher object[:publisher]
          object.delete :publisher
        end

        if object.key?(:type)
          conf.type object[:type]
          object.delete :type
        end

        if object.key?(:type_handler_version)
          conf.type_handler_version object[:type_handler_version]
          object.delete :type_handler_version
        end

        if object.key?(:settings)
          conf.settings object[:settings]
          object.delete :settings
        end

        output_object
      end

      def get_name_template
        'ecp'
        end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          ExtensionsChildProperties.deserialize_object self, init.clone
        end
      end

      # Configuration code
      class Configurator < Azure::ARM::ResourceConfigurator
        attr_accessor :parent
        # @param publisher
        #        String
        def publisher(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.publisher = props
            return
          end
          @parent.publisher
        end
        # @param type
        #        String
        def type(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.type = props
            return
          end
          @parent.type
        end
        # @param type_handler_version
        #        String
        def type_handler_version(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.type_handler_version = props
            return
          end
          @parent.type_handler_version
        end
        # @param settings
        #        Object
        #        Expression
        def settings(props)
          if props.is_a? Object or props.is_a? Azure::ARM::Expression
            @parent.settings = props
            return
          end
          if @parent.settings.nil? and props.is_a? Azure::ARM::Expression
            @parent.settings = props
          end
          @parent.settings
        end
        def create(init=nil,&block)
          @parent = ExtensionsChildProperties.new nil, init
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
