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
    class InboundNatPoolsProperties < Azure::ARM::TypeBase

      # @return [Id]
      attr_accessor :frontend_ipconfiguration

      # @return [String]
      attr_accessor :protocol

      # @return
      attr_accessor :frontend_port_range_start

      # @return
      attr_accessor :frontend_port_range_end

      # @return
      attr_accessor :backend_port

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        fail ArgumentError, 'property frontend_ipconfiguration is nil' if @frontend_ipconfiguration.nil?
        fail ArgumentError, 'property protocol is nil' if @protocol.nil?
        fail ArgumentError, 'property frontend_port_range_start is nil' if @frontend_port_range_start.nil?
        fail ArgumentError, 'property frontend_port_range_end is nil' if @frontend_port_range_end.nil?
        fail ArgumentError, 'property backend_port is nil' if @backend_port.nil?
        @frontend_ipconfiguration.validate unless @frontend_ipconfiguration.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(output_object, object)
        Azure::ARM::TypeBase.serialize_object(output_object, object)
        object.validate

        serialized_property = object.frontend_ipconfiguration
        unless serialized_property.nil?
          serialized_property = serialized_property.to_h
        end
        output_object[:frontendIPConfiguration] = serialized_property unless serialized_property.nil?

        serialized_property = object.protocol
        output_object[:protocol] = serialized_property unless serialized_property.nil?

        serialized_property = object.frontend_port_range_start
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:frontendPortRangeStart] = serialized_property unless serialized_property.nil?

        serialized_property = object.frontend_port_range_end
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:frontendPortRangeEnd] = serialized_property unless serialized_property.nil?

        serialized_property = object.backend_port
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:backendPort] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        InboundNatPoolsProperties.serialize_object(hash,self)
        hash
      end

      def self.ds_properties
        result = Array.new 
        result.push :frontend_ipconfiguration
        result.push :protocol
        result.push :frontend_port_range_start
        result.push :frontend_port_range_end
        result.push :backend_port
        result
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [InboundNatPoolsProperties] Deserialized object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?
        conf = Configurator.new
        conf.parent = output_object

        if object.key?(:frontend_ipconfiguration)
          conf.frontend_ipconfiguration object[:frontend_ipconfiguration]
          object.delete :frontend_ipconfiguration
        end

        if object.key?(:protocol)
          conf.protocol object[:protocol]
          object.delete :protocol
        end

        if object.key?(:frontend_port_range_start)
          conf.frontend_port_range_start object[:frontend_port_range_start]
          object.delete :frontend_port_range_start
        end

        if object.key?(:frontend_port_range_end)
          conf.frontend_port_range_end object[:frontend_port_range_end]
          object.delete :frontend_port_range_end
        end

        if object.key?(:backend_port)
          conf.backend_port object[:backend_port]
          object.delete :backend_port
        end

        output_object
      end

      def get_name_template
        'inpp'
        end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          InboundNatPoolsProperties.deserialize_object self, init.clone
        end
      end

      # Configuration code
      class Configurator < Azure::ARM::ResourceConfigurator
        attr_accessor :parent
        # @param frontend_ipconfiguration
        #        Id
        def frontend_ipconfiguration(props)
          if @parent.frontend_ipconfiguration.nil? and props.is_a? Id
            @parent.frontend_ipconfiguration = props
            @parent.frontend_ipconfiguration.parent = @parent
            @parent.frontend_ipconfiguration._rsrcpath = 'frontendIPConfiguration'
          end
          if @parent.frontend_ipconfiguration.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, Id)
            @parent.frontend_ipconfiguration = Id.new(@parent, props)
            @parent.frontend_ipconfiguration._rsrcpath = 'frontendIPConfiguration'
          end
          if @parent.frontend_ipconfiguration.nil? and (props.respond_to? :to_rsrcid)
            @parent.frontend_ipconfiguration = Id.new(@parent, id: props.to_rsrcid.to_s)
            if props.is_a? Azure::ARM::TypeBase and !props.containing_resource.nil?
              @parent.containing_resource.add_dependency props.containing_resource
            end
          end
          @parent.frontend_ipconfiguration
        end
        # @param protocol
        #        String
        def protocol(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.protocol = props
            return
          end
          @parent.protocol
        end
        # @param frontend_port_range_start
        #        Fixnum
        #        Expression
        def frontend_port_range_start(props)
          if props.is_a? Fixnum or props.is_a? Azure::ARM::Expression
            @parent.frontend_port_range_start = props
            return
          end
          if @parent.frontend_port_range_start.nil? and props.is_a? Azure::ARM::Expression
            @parent.frontend_port_range_start = props
          end
          @parent.frontend_port_range_start
        end
        # @param frontend_port_range_end
        #        Fixnum
        #        Expression
        def frontend_port_range_end(props)
          if props.is_a? Fixnum or props.is_a? Azure::ARM::Expression
            @parent.frontend_port_range_end = props
            return
          end
          if @parent.frontend_port_range_end.nil? and props.is_a? Azure::ARM::Expression
            @parent.frontend_port_range_end = props
          end
          @parent.frontend_port_range_end
        end
        # @param backend_port
        #        Fixnum
        #        Expression
        def backend_port(props)
          if props.is_a? Fixnum or props.is_a? Azure::ARM::Expression
            @parent.backend_port = props
            return
          end
          if @parent.backend_port.nil? and props.is_a? Azure::ARM::Expression
            @parent.backend_port = props
          end
          @parent.backend_port
        end
        def create(init=nil,&block)
          @parent = InboundNatPoolsProperties.new nil, init
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
