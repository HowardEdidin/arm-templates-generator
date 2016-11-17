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
    class ImageReference < Azure::ARM::TypeBase

      # @return [String]
      attr_accessor :publisher

      # @return [String]
      attr_accessor :offer

      # @return [String]
      attr_accessor :sku

      # @return [String]
      attr_accessor :version

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        fail ArgumentError, 'property publisher is nil' if @publisher.nil?
        fail ArgumentError, 'property offer is nil' if @offer.nil?
        fail ArgumentError, 'property sku is nil' if @sku.nil?
        fail ArgumentError, 'property version is nil' if @version.nil?
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

        serialized_property = object.offer
        output_object[:offer] = serialized_property unless serialized_property.nil?

        serialized_property = object.sku
        output_object[:sku] = serialized_property unless serialized_property.nil?

        serialized_property = object.version
        output_object[:version] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        ImageReference.serialize_object(hash,self)
        hash
      end

      def self.ds_properties
        result = Array.new 
        result.push :publisher
        result.push :offer
        result.push :sku
        result.push :version
        result
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ImageReference] Deserialized object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?
        conf = Configurator.new
        conf.parent = output_object

        if object.key?(:publisher)
          conf.publisher object[:publisher]
          object.delete :publisher
        end

        if object.key?(:offer)
          conf.offer object[:offer]
          object.delete :offer
        end

        if object.key?(:sku)
          conf.sku object[:sku]
          object.delete :sku
        end

        if object.key?(:version)
          conf.version object[:version]
          object.delete :version
        end

        output_object
      end

      def get_name_template
        'ir'
        end

      def initialize(parent, init)
        super(parent)
        @version = 'latest' if @version.nil?
        if init.is_a? Hash
          ImageReference.deserialize_object self, init.clone
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
        # @param offer
        #        String
        def offer(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.offer = props
            return
          end
          @parent.offer
        end
        # @param sku
        #        String
        def sku(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.sku = props
            return
          end
          @parent.sku
        end
        # @param version
        #        String
        def version(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.version = props
            return
          end
          @parent.version
        end
        def create(init=nil,&block)
          @parent = ImageReference.new nil, init
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
