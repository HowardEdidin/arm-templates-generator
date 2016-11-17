# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require_relative '../arm/module_definition'
require_relative './module_definition'

module Azure::ARM::Network
    #
    # Model object.
    #
    class Id < Azure::ARM::TypeBase

      # @return [String]
      attr_accessor :id

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        fail ArgumentError, 'property id is nil' if @id.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(output_object, object)
        Azure::ARM::TypeBase.serialize_object(output_object, object)
        object.validate

        serialized_property = object.id
        output_object[:id] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        Id.serialize_object(hash,self)
        hash
      end

      def self.ds_properties
        result = Array.new 
        result.push :id
        result
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [Id] Deserialized object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?
        conf = Configurator.new
        conf.parent = output_object

        if object.key?(:id)
          conf.id object[:id]
          object.delete :id
        end

        output_object
      end

      def get_name_template
        'i'
        end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          Id.deserialize_object self, init.clone
        end
      end

      # Configuration code
      class Configurator < Azure::ARM::ResourceConfigurator
        attr_accessor :parent
        # @param id
        #        String
        def id(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.id = props
            return
          end
          if @parent.id.nil? and (props.respond_to? :to_rsrcid)
            @parent.id = props.to_rsrcid.to_s
            if props.is_a? Azure::ARM::TypeBase and !props.containing_resource.nil?
              @parent.containing_resource.add_dependency props.containing_resource
            end
          end
          @parent.id
        end
        def create(init=nil,&block)
          @parent = Id.new nil, init
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
