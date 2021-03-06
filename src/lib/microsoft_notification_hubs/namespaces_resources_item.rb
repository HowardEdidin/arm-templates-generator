# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require_relative '../arm/module_definition'
require_relative './module_definition'

module Azure::ARM::NotificationHubs
    #
    # Model object.
    #
    class NamespacesResourcesItem < Azure::ARM::ResourceBase

      # @return [NamespacesResourcesItemProperties]
      attr_accessor :properties

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        fail ArgumentError, 'property name is nil' if self.name.nil?
        fail ArgumentError, 'property type is nil' if self.type.nil?
        fail ArgumentError, 'property api_version is nil' if self.api_version.nil?
        fail ArgumentError, 'property type is nil' if self.type.nil?
        fail ArgumentError, 'property api_version is nil' if self.api_version.nil?
        fail ArgumentError, 'property properties is nil' if self.properties.nil?
        @properties.validate unless @properties.nil?
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

        output_object
      end

      def to_h
        self.validate
        hash = {}
        NamespacesResourcesItem.serialize_object(hash,self)
        hash
      end

      def self.ds_properties
        result = Array.new
        result.push :depends_on
        result.push :properties
        result
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [NamespacesResourcesItem] Deserialized object.
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

        unless object.key?(:properties)
          conf.properties object
        end

        output_object
      end

      def get_name_template
        'nri'
      end

      def initialize(parent, init)
        super(parent, init)
        self.type = 'Microsoft.NotificationHubs/namespaces/notificationHubs' if self.type.nil?
        self.api_version = '2014-09-01' if self.api_version.nil?
        if init.is_a? Hash
          NamespacesResourcesItem.deserialize_object self, init.clone
        end 
      end

      # Configuration code
      class Configurator < Azure::ARM::ResourceConfigurator
        attr_accessor :parent
        attr_accessor :template
        # @param properties
        #        NamespacesResourcesItemProperties
        def properties(props)
          if @parent.properties.nil? and props.is_a? NamespacesResourcesItemProperties
            @parent.properties = props
            @parent.properties.parent = @parent
            @parent.properties._rsrcpath = 'properties'
          end
          if @parent.properties.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, NamespacesResourcesItemProperties)
            @parent.properties = NamespacesResourcesItemProperties.new(@parent, props)
            @parent.properties._rsrcpath = 'properties'
          end
          @parent.properties
        end
        # @param wns_credential
        #        NamespacesResourcesItemPropertiesWnsCredential0
        #        Expression
        def wns_credential(props)
          @parent.properties = (NamespacesResourcesItemProperties.new @parent, nil) if @parent.properties.nil?
          if @parent.properties.wns_credential.nil? and props.is_a? NamespacesResourcesItemPropertiesWnsCredential0
            @parent.properties.wns_credential = props
            @parent.properties.wns_credential.parent = @parent
            @parent.properties.wns_credential._rsrcpath = 'wnsCredential'
          end
          if @parent.properties.wns_credential.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, NamespacesResourcesItemPropertiesWnsCredential0)
            @parent.properties.wns_credential = NamespacesResourcesItemPropertiesWnsCredential0.new(@parent, props)
            @parent.properties.wns_credential._rsrcpath = 'wnsCredential'
          end
          if @parent.properties.wns_credential.nil? and props.is_a? Azure::ARM::Expression
            @parent.properties.wns_credential = props
          end
          @parent.properties.wns_credential
        end
        # @param apns_credential
        #        NamespacesResourcesItemPropertiesApnsCredential0
        #        Expression
        def apns_credential(props)
          @parent.properties = (NamespacesResourcesItemProperties.new @parent, nil) if @parent.properties.nil?
          if @parent.properties.apns_credential.nil? and props.is_a? NamespacesResourcesItemPropertiesApnsCredential0
            @parent.properties.apns_credential = props
            @parent.properties.apns_credential.parent = @parent
            @parent.properties.apns_credential._rsrcpath = 'apnsCredential'
          end
          if @parent.properties.apns_credential.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, NamespacesResourcesItemPropertiesApnsCredential0)
            @parent.properties.apns_credential = NamespacesResourcesItemPropertiesApnsCredential0.new(@parent, props)
            @parent.properties.apns_credential._rsrcpath = 'apnsCredential'
          end
          if @parent.properties.apns_credential.nil? and props.is_a? Azure::ARM::Expression
            @parent.properties.apns_credential = props
          end
          @parent.properties.apns_credential
        end
        # @param gcm_credential
        #        NamespacesResourcesItemPropertiesGcmCredential0
        #        Expression
        def gcm_credential(props)
          @parent.properties = (NamespacesResourcesItemProperties.new @parent, nil) if @parent.properties.nil?
          if @parent.properties.gcm_credential.nil? and props.is_a? NamespacesResourcesItemPropertiesGcmCredential0
            @parent.properties.gcm_credential = props
            @parent.properties.gcm_credential.parent = @parent
            @parent.properties.gcm_credential._rsrcpath = 'gcmCredential'
          end
          if @parent.properties.gcm_credential.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, NamespacesResourcesItemPropertiesGcmCredential0)
            @parent.properties.gcm_credential = NamespacesResourcesItemPropertiesGcmCredential0.new(@parent, props)
            @parent.properties.gcm_credential._rsrcpath = 'gcmCredential'
          end
          if @parent.properties.gcm_credential.nil? and props.is_a? Azure::ARM::Expression
            @parent.properties.gcm_credential = props
          end
          @parent.properties.gcm_credential
        end
        # @param mpns_credential
        #        NamespacesResourcesItemPropertiesMpnsCredential0
        #        Expression
        def mpns_credential(props)
          @parent.properties = (NamespacesResourcesItemProperties.new @parent, nil) if @parent.properties.nil?
          if @parent.properties.mpns_credential.nil? and props.is_a? NamespacesResourcesItemPropertiesMpnsCredential0
            @parent.properties.mpns_credential = props
            @parent.properties.mpns_credential.parent = @parent
            @parent.properties.mpns_credential._rsrcpath = 'mpnsCredential'
          end
          if @parent.properties.mpns_credential.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, NamespacesResourcesItemPropertiesMpnsCredential0)
            @parent.properties.mpns_credential = NamespacesResourcesItemPropertiesMpnsCredential0.new(@parent, props)
            @parent.properties.mpns_credential._rsrcpath = 'mpnsCredential'
          end
          if @parent.properties.mpns_credential.nil? and props.is_a? Azure::ARM::Expression
            @parent.properties.mpns_credential = props
          end
          @parent.properties.mpns_credential
        end
        # @param adm_credential
        #        NamespacesResourcesItemPropertiesAdmCredential0
        #        Expression
        def adm_credential(props)
          @parent.properties = (NamespacesResourcesItemProperties.new @parent, nil) if @parent.properties.nil?
          if @parent.properties.adm_credential.nil? and props.is_a? NamespacesResourcesItemPropertiesAdmCredential0
            @parent.properties.adm_credential = props
            @parent.properties.adm_credential.parent = @parent
            @parent.properties.adm_credential._rsrcpath = 'AdmCredential'
          end
          if @parent.properties.adm_credential.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, NamespacesResourcesItemPropertiesAdmCredential0)
            @parent.properties.adm_credential = NamespacesResourcesItemPropertiesAdmCredential0.new(@parent, props)
            @parent.properties.adm_credential._rsrcpath = 'AdmCredential'
          end
          if @parent.properties.adm_credential.nil? and props.is_a? Azure::ARM::Expression
            @parent.properties.adm_credential = props
          end
          @parent.properties.adm_credential
        end
        # @param baidu_credential
        #        NamespacesResourcesItemPropertiesBaiduCredential0
        #        Expression
        def baidu_credential(props)
          @parent.properties = (NamespacesResourcesItemProperties.new @parent, nil) if @parent.properties.nil?
          if @parent.properties.baidu_credential.nil? and props.is_a? NamespacesResourcesItemPropertiesBaiduCredential0
            @parent.properties.baidu_credential = props
            @parent.properties.baidu_credential.parent = @parent
            @parent.properties.baidu_credential._rsrcpath = 'BaiduCredential'
          end
          if @parent.properties.baidu_credential.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, NamespacesResourcesItemPropertiesBaiduCredential0)
            @parent.properties.baidu_credential = NamespacesResourcesItemPropertiesBaiduCredential0.new(@parent, props)
            @parent.properties.baidu_credential._rsrcpath = 'BaiduCredential'
          end
          if @parent.properties.baidu_credential.nil? and props.is_a? Azure::ARM::Expression
            @parent.properties.baidu_credential = props
          end
          @parent.properties.baidu_credential
        end
        # @param authorization_rules
        #        NamespacesResourcesItemPropertiesAuthorizationRules0
        #        Expression
        def authorization_rules(props)
          @parent.properties = (NamespacesResourcesItemProperties.new @parent, nil) if @parent.properties.nil?
          if @parent.properties.authorization_rules.nil? and props.is_a? NamespacesResourcesItemPropertiesAuthorizationRules0
            @parent.properties.authorization_rules = props
            @parent.properties.authorization_rules.parent = @parent
            @parent.properties.authorization_rules._rsrcpath = 'authorizationRules'
          end
          if @parent.properties.authorization_rules.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, NamespacesResourcesItemPropertiesAuthorizationRules0)
            @parent.properties.authorization_rules = NamespacesResourcesItemPropertiesAuthorizationRules0.new(@parent, props)
            @parent.properties.authorization_rules._rsrcpath = 'authorizationRules'
          end
          if @parent.properties.authorization_rules.nil? and props.is_a? Azure::ARM::Expression
            @parent.properties.authorization_rules = props
          end
          @parent.properties.authorization_rules
        end
        def initialize(template)
          @template = template
        end
        def create(init=nil,&block)
          @parent = NamespacesResourcesItem.new @template,init
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
