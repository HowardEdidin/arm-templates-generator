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
    class OutboundNatRules < Azure::ARM::TypeBase

      # @return [String]
      attr_accessor :name

      # @return [OutboundNatRulesProperties]
      attr_accessor :properties

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        fail ArgumentError, 'property name is nil' if @name.nil?
        fail ArgumentError, 'property properties is nil' if @properties.nil?
        @properties.validate unless @properties.nil?
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
        output_object[:name] = serialized_property unless serialized_property.nil?

        serialized_property = object.properties
        unless serialized_property.nil?
          serialized_property = serialized_property.to_h
        end
        output_object[:properties] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        OutboundNatRules.serialize_object(hash,self)
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
      # @return [OutboundNatRules] Deserialized object.
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
        'onr'
        end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          OutboundNatRules.deserialize_object self, init.clone
        end
      end

      # Configuration code
      class Configurator < Azure::ARM::ResourceConfigurator
        attr_accessor :parent
        # @param name
        #        String
        def name(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.name = props
            return
          end
          @parent.name
        end
        # @param properties
        #        OutboundNatRulesProperties
        def properties(props)
          if @parent.properties.nil? and props.is_a? OutboundNatRulesProperties
            @parent.properties = props
            @parent.properties.parent = @parent
            @parent.properties._rsrcpath = 'properties'
          end
          if @parent.properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, OutboundNatRulesProperties)
            @parent.properties = OutboundNatRulesProperties.new(@parent, props)
            @parent.properties._rsrcpath = 'properties'
          end
          @parent.properties
        end
        # @param frontend_ipconfigurations
        #        Array<Id>
        def frontend_ipconfigurations(props)
          @parent.properties = (OutboundNatRulesProperties.new @parent, nil) if @parent.properties.nil?
          if props.is_a? Array
            @parent.properties.frontend_ipconfigurations = Array.new if @parent.properties.frontend_ipconfigurations.nil?
            props.each { |p| @parent.properties.frontend_ipconfigurations.push _frontend_ipconfigurations_id(p) }
            return @parent.properties.frontend_ipconfigurations
          end
          _element = nil
          if _element.nil? and props.is_a? Id
            _element = props
            _element.parent = @parent
            _element._rsrcpath = 'frontendIPConfigurations'
          end
          if _element.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, Id)
            _element = Id.new(@parent, props)
            _element._rsrcpath = 'frontendIPConfigurations'
          end
          if _element.nil? and (props.respond_to? :to_rsrcid)
            _element = Id.new(@parent, id: props.to_rsrcid.to_s)
            if props.is_a? Azure::ARM::TypeBase and !props.containing_resource.nil?
              @parent.containing_resource.add_dependency props.containing_resource
            end
          end
          unless _element.nil?
            @parent.properties.frontend_ipconfigurations = Array.new if @parent.properties.frontend_ipconfigurations.nil?
            @parent.properties.frontend_ipconfigurations.push _element
          end
          @parent.properties.frontend_ipconfigurations
        end
        def _frontend_ipconfigurations_id(props)
          if props.is_a? Id
            props.parent = @parent
            props._rsrcpath = 'frontendIPConfigurations'
            return props
          end
          if (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, Id)
            _properties = Id.new(@parent, props)
            _properties._rsrcpath = 'frontendIPConfigurations'
            return _properties
          end
          if props.respond_to? :to_rsrcid
            return Id.new(@parent, id: props.to_rsrcid.to_s)
          end
        end
        # @param backend_address_pool
        #        Id
        def backend_address_pool(props)
          @parent.properties = (OutboundNatRulesProperties.new @parent, nil) if @parent.properties.nil?
          if @parent.properties.backend_address_pool.nil? and props.is_a? Id
            @parent.properties.backend_address_pool = props
            @parent.properties.backend_address_pool.parent = @parent
            @parent.properties.backend_address_pool._rsrcpath = 'backendAddressPool'
          end
          if @parent.properties.backend_address_pool.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, Id)
            @parent.properties.backend_address_pool = Id.new(@parent, props)
            @parent.properties.backend_address_pool._rsrcpath = 'backendAddressPool'
          end
          if @parent.properties.backend_address_pool.nil? and (props.respond_to? :to_rsrcid)
            @parent.properties.backend_address_pool = Id.new(@parent, id: props.to_rsrcid.to_s)
            if props.is_a? Azure::ARM::TypeBase and !props.containing_resource.nil?
              @parent.containing_resource.add_dependency props.containing_resource
            end
          end
          @parent.properties.backend_address_pool
        end
        def create(init=nil,&block)
          @parent = OutboundNatRules.new nil, init
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
