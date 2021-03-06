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
    class NetworkInterfaceConfiguration < Azure::ARM::TypeBase

      # @return [String]
      attr_accessor :name

      # @return [NetworkInterfaceConfigurationProperties]
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
        NetworkInterfaceConfiguration.serialize_object(hash,self)
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
      # @return [NetworkInterfaceConfiguration] Deserialized object.
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
        'nic'
        end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          NetworkInterfaceConfiguration.deserialize_object self, init.clone
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
        #        NetworkInterfaceConfigurationProperties
        def properties(props)
          if @parent.properties.nil? and props.is_a? NetworkInterfaceConfigurationProperties
            @parent.properties = props
            @parent.properties.parent = @parent
            @parent.properties._rsrcpath = 'properties'
          end
          if @parent.properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, NetworkInterfaceConfigurationProperties)
            @parent.properties = NetworkInterfaceConfigurationProperties.new(@parent, props)
            @parent.properties._rsrcpath = 'properties'
          end
          @parent.properties
        end
        # @param primary
        #        Boolean
        def primary(props)
          @parent.properties = (NetworkInterfaceConfigurationProperties.new @parent, nil) if @parent.properties.nil?
          if props.is_a? TrueClass or props.is_a? FalseClass or props.is_a? Azure::ARM::Expression
            @parent.properties.primary = props
            return
          end
          @parent.properties.primary
        end
        # @param ip_configurations
        #        Array<IpConfiguration>
        def ip_configurations(props)
          @parent.properties = (NetworkInterfaceConfigurationProperties.new @parent, nil) if @parent.properties.nil?
          if props.is_a? Array
            @parent.properties.ip_configurations = Array.new if @parent.properties.ip_configurations.nil?
            props.each { |p| @parent.properties.ip_configurations.push _ip_configurations_ipconfiguration(p) }
            return @parent.properties.ip_configurations
          end
          _element = nil
          if _element.nil? and props.is_a? IpConfiguration
            _element = props
            _element.parent = @parent
            _element._rsrcpath = 'ipConfigurations'
          end
          if _element.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, IpConfiguration)
            _element = IpConfiguration.new(@parent, props)
            _element._rsrcpath = 'ipConfigurations'
          end
          if _element.nil?
            _properties = nil
            if _properties.nil? and props.is_a? IpConfigurationProperties
              _properties = props
              _properties.parent = @parent
              _properties._rsrcpath = 'ipConfigurations'
            end
            if _properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, IpConfigurationProperties)
              _properties = IpConfigurationProperties.new(@parent, props)
              _properties._rsrcpath = 'ipConfigurations'
            end
            unless _properties.nil?
              props[:properties] = _properties
              _element = IpConfiguration.new(@parent, props)
              _element._rsrcpath = 'ipConfigurations'
              _element.properties = _properties
              _properties.parent = _element
            end
          end
          unless _element.nil?
            @parent.properties.ip_configurations = Array.new if @parent.properties.ip_configurations.nil?
            @parent.properties.ip_configurations.push _element
          end
          @parent.properties.ip_configurations
        end
        def _ip_configurations_ipconfiguration(props)
          if props.is_a? IpConfiguration
            props.parent = @parent
            props._rsrcpath = 'ipConfigurations'
            return props
          end
          if (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, IpConfiguration)
            _properties = IpConfiguration.new(@parent, props)
            _properties._rsrcpath = 'ipConfigurations'
            return _properties
          end
          _properties = nil
          if _properties.nil? and props.is_a? IpConfigurationProperties
            _properties = props
            _properties.parent = @parent
            _properties._rsrcpath = 'ipConfigurations'
          end
          if _properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, IpConfigurationProperties)
            _properties = IpConfigurationProperties.new(@parent, props)
            _properties._rsrcpath = 'ipConfigurations'
          end
          unless _properties.nil?
            props[:properties] = _properties
            ip_configurations = IpConfiguration.new(@parent, props)
            ip_configurations._rsrcpath = 'ipConfigurations'
            ip_configurations.properties = _properties
            _properties.parent = ip_configurations
            return ip_configurations
          end
        end
        def create(init=nil,&block)
          @parent = NetworkInterfaceConfiguration.new nil, init
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
