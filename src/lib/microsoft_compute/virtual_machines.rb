# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require_relative '../arm/module_definition'
require_relative './module_definition'

module Azure::ARM::Compute
    #
    # Microsoft.Compute/virtualMachines
    #
    class VirtualMachine < Azure::ARM::ResourceBase

      # @return [VirtualMachinesProperties]
      attr_accessor :properties

      # @return [Array<VirtualMachinesResourcesItem>]
      # Microsoft.Compute/virtualMachines: Resource Definition for Virtual
      # Machines.
      attr_writer :resources
      def resources(name=nil)
        if name and @resources and @resources.is_a? Array          
          return @resources.find { | p | p.name == name } if name.is_a? String
          return @resources[name] if name.is_a? Integer
        end
        @resources
      end

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        fail ArgumentError, 'property type is nil' if self.type.nil?
        fail ArgumentError, 'property api_version is nil' if self.api_version.nil?
        fail ArgumentError, 'property properties is nil' if self.properties.nil?
        @properties.validate unless @properties.nil?
        @resources.each{ |e| e.validate if e.respond_to?(:validate) } unless @resources.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(output_object, object)
        Azure::ARM::ResourceBase.serialize_object(output_object, object)
        object.validate

        serialized_property = object.properties
        unless serialized_property.nil?
          serialized_property = serialized_property.to_h
        end
        output_object[:properties] = serialized_property unless serialized_property.nil?

        serialized_property = object.resources
        unless serialized_property.nil?
          serializedarray = []
          serialized_property.each do |element|
            unless element.nil?
              element = element.to_h
            end
            serializedarray.push(element)
          end
          serialized_property = serializedarray
        end
        output_object[:resources] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        self.validate
        hash = {}
        VirtualMachine.serialize_object(hash,self)
        hash
      end

      def self.ds_properties
        result = Array.new
        result.push :properties
        result.push :resources
        result
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [VirtualMachine] Deserialized object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?
        object.delete :name
        object.delete :type
        object.delete :api_version
        object.delete :location
        object.delete :tags
        object.delete :copy
        object.delete :comments
        conf = Configurator.new output_object.template
        conf.parent = output_object

        if object.key?(:properties)
          conf.properties object[:properties]
        end

        if object.key?(:resources)
          conf.resources object[:resources]
          object.delete :resources
        end

        unless object.key?(:properties)
          conf.properties object
        end

        output_object
      end

      def get_name_template
        'vm'
      end

      def initialize(parent, init)
        super(parent, init)
        self.type = 'Microsoft.Compute/virtualMachines' if self.type.nil?
        self.api_version = '2015-06-15' if self.api_version.nil?
        if init.is_a? Hash
          VirtualMachine.deserialize_object self, init.clone
        end 
      end

      # Configuration code
      class Configurator < Azure::ARM::ResourceConfigurator
        attr_accessor :parent
        attr_accessor :template
        # @param api_version
        #        A string, one of '2015-05-01-preview','2015-06-15'
        def api_version(props)
          if props.is_a? String
            fail ArgumentError, "#{props} is an invalid value for @parent.api_version" unless ['2015-05-01-preview','2015-06-15'].index(props)
            @parent.api_version = props
            return
          end
          @parent.api_version
        end
        # @param properties
        #        VirtualMachinesProperties
        def properties(props)
          if @parent.properties.nil? and props.is_a? VirtualMachinesProperties
            @parent.properties = props
            @parent.properties.parent = @parent
            @parent.properties._rsrcpath = 'properties'
          end
          if @parent.properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, VirtualMachinesProperties)
            @parent.properties = VirtualMachinesProperties.new(@parent, props)
            @parent.properties._rsrcpath = 'properties'
          end
          @parent.properties
        end
        # @param availability_set
        #        Id
        #        Expression
        def availability_set(props)
          @parent.properties = (VirtualMachinesProperties.new @parent, nil) if @parent.properties.nil?
          if @parent.properties.availability_set.nil? and props.is_a? Id
            @parent.properties.availability_set = props
            @parent.properties.availability_set.parent = @parent
            @parent.properties.availability_set._rsrcpath = 'availabilitySet'
          end
          if @parent.properties.availability_set.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, Id)
            @parent.properties.availability_set = Id.new(@parent, props)
            @parent.properties.availability_set._rsrcpath = 'availabilitySet'
          end
          if @parent.properties.availability_set.nil? and (props.respond_to? :to_rsrcid)
            @parent.properties.availability_set = Id.new(@parent, id: props.to_rsrcid.to_s)
            if props.is_a? Azure::ARM::TypeBase and !props.containing_resource.nil?
              @parent.containing_resource.add_dependency props.containing_resource
            end
          end
          if @parent.properties.availability_set.nil? and props.is_a? Azure::ARM::Expression
            @parent.properties.availability_set = props
          end
          @parent.properties.availability_set
        end
        # @param hardware_profile
        #        HardwareProfile
        #        Expression
        def hardware_profile(props)
          @parent.properties = (VirtualMachinesProperties.new @parent, nil) if @parent.properties.nil?
          if @parent.properties.hardware_profile.nil? and props.is_a? HardwareProfile
            @parent.properties.hardware_profile = props
            @parent.properties.hardware_profile.parent = @parent
            @parent.properties.hardware_profile._rsrcpath = 'hardwareProfile'
          end
          if @parent.properties.hardware_profile.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, HardwareProfile)
            @parent.properties.hardware_profile = HardwareProfile.new(@parent, props)
            @parent.properties.hardware_profile._rsrcpath = 'hardwareProfile'
          end
          if @parent.properties.hardware_profile.nil? and props.is_a? Azure::ARM::Expression
            @parent.properties.hardware_profile = props
          end
          @parent.properties.hardware_profile
        end
        # @param storage_profile
        #        StorageProfile
        #        Expression
        def storage_profile(props)
          @parent.properties = (VirtualMachinesProperties.new @parent, nil) if @parent.properties.nil?
          if @parent.properties.storage_profile.nil? and props.is_a? StorageProfile
            @parent.properties.storage_profile = props
            @parent.properties.storage_profile.parent = @parent
            @parent.properties.storage_profile._rsrcpath = 'storageProfile'
          end
          if @parent.properties.storage_profile.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, StorageProfile)
            @parent.properties.storage_profile = StorageProfile.new(@parent, props)
            @parent.properties.storage_profile._rsrcpath = 'storageProfile'
          end
          if @parent.properties.storage_profile.nil? and props.is_a? Azure::ARM::Expression
            @parent.properties.storage_profile = props
          end
          @parent.properties.storage_profile
        end
        # @param os_profile
        #        OsProfile
        #        Expression
        def os_profile(props)
          @parent.properties = (VirtualMachinesProperties.new @parent, nil) if @parent.properties.nil?
          if @parent.properties.os_profile.nil? and props.is_a? OsProfile
            @parent.properties.os_profile = props
            @parent.properties.os_profile.parent = @parent
            @parent.properties.os_profile._rsrcpath = 'osProfile'
          end
          if @parent.properties.os_profile.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, OsProfile)
            @parent.properties.os_profile = OsProfile.new(@parent, props)
            @parent.properties.os_profile._rsrcpath = 'osProfile'
          end
          if @parent.properties.os_profile.nil? and props.is_a? Azure::ARM::Expression
            @parent.properties.os_profile = props
          end
          @parent.properties.os_profile
        end
        # @param network_profile
        #        NetworkProfile
        #        Expression
        def network_profile(props)
          @parent.properties = (VirtualMachinesProperties.new @parent, nil) if @parent.properties.nil?
          if @parent.properties.network_profile.nil? and props.is_a? NetworkProfile
            @parent.properties.network_profile = props
            @parent.properties.network_profile.parent = @parent
            @parent.properties.network_profile._rsrcpath = 'networkProfile'
          end
          if @parent.properties.network_profile.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, NetworkProfile)
            @parent.properties.network_profile = NetworkProfile.new(@parent, props)
            @parent.properties.network_profile._rsrcpath = 'networkProfile'
          end
          if @parent.properties.network_profile.nil? and props.is_a? Azure::ARM::Expression
            @parent.properties.network_profile = props
          end
          @parent.properties.network_profile
        end
        # @param resources
        #        Array<VirtualMachinesResourcesItem>
        def resources(props)
          if props.is_a? Array
            @parent.resources = Array.new if @parent.resources.nil?
            props.each { |p| @parent.resources.push _resources_virtualmachinesresourcesitem(p) }
            return @parent.resources
          end
          _element = nil
          if _element.nil? and props.is_a? VirtualMachinesResourcesItem
            _element = props
            _element.parent = @parent
            _element._rsrcpath = 'resources'
          end
          if _element.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, VirtualMachinesResourcesItem)
            _element = VirtualMachinesResourcesItem.new(@parent, props)
            _element._rsrcpath = 'resources'
          end
          if _element.nil?
            _properties = nil
            if _properties.nil? and props.is_a? VirtualMachinesResourcesItemProperties
              _properties = props
              _properties.parent = @parent
              _properties._rsrcpath = 'resources'
            end
            if _properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, VirtualMachinesResourcesItemProperties)
              _properties = VirtualMachinesResourcesItemProperties.new(@parent, props)
              _properties._rsrcpath = 'resources'
            end
            unless _properties.nil?
              props[:properties] = _properties
              _element = VirtualMachinesResourcesItem.new(@parent, props)
              _element._rsrcpath = 'resources'
              _element.properties = _properties
              _properties.parent = _element
            end
          end
          unless _element.nil?
            @parent.resources = Array.new if @parent.resources.nil?
            @parent.resources.push _element
          end
          @parent.resources
        end
        def _resources_virtualmachinesresourcesitem(props)
          if props.is_a? VirtualMachinesResourcesItem
            props.parent = @parent
            props._rsrcpath = 'resources'
            return props
          end
          if (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, VirtualMachinesResourcesItem)
            _properties = VirtualMachinesResourcesItem.new(@parent, props)
            _properties._rsrcpath = 'resources'
            return _properties
          end
          _properties = nil
          if _properties.nil? and props.is_a? VirtualMachinesResourcesItemProperties
            _properties = props
            _properties.parent = @parent
            _properties._rsrcpath = 'resources'
          end
          if _properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, VirtualMachinesResourcesItemProperties)
            _properties = VirtualMachinesResourcesItemProperties.new(@parent, props)
            _properties._rsrcpath = 'resources'
          end
          unless _properties.nil?
            props[:properties] = _properties
            resources = VirtualMachinesResourcesItem.new(@parent, props)
            resources._rsrcpath = 'resources'
            resources.properties = _properties
            _properties.parent = resources
            return resources
          end
        end
        def initialize(template)
          @template = template
        end
        def create(init=nil,&block)
          @parent = VirtualMachine.new @template,init
          @template.resources.push @parent
          self.instance_exec(@parent,&block) if block
          @parent
        end
      end
      def configure(&block)
        conf = Configurator.new self.template
        conf.parent = self
        conf.instance_exec(self,&block) if block
        self
      end
    end
end
