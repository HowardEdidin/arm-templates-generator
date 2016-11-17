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
    class NotificationHubsProperties < Azure::ARM::TypeBase

      # @return Microsoft.NotificationHubs/namespaces/notificationHubs: WNS
      # credentials for a Notification Hub.
      attr_accessor :wns_credential

      # @return Microsoft.NotificationHubs/namespaces/notificationHubs: APNS
      # credentials for a Notification Hub.
      attr_accessor :apns_credential

      # @return Microsoft.NotificationHubs/namespaces/notificationHubs: GCM
      # credentials for a Notification Hub.
      attr_accessor :gcm_credential

      # @return Microsoft.NotificationHubs/namespaces/notificationHubs: MPNS
      # credentials for a Notification Hub.
      attr_accessor :mpns_credential

      # @return Microsoft.NotificationHubs/namespaces/notificationHubs: ADM
      # credentials for a Notification Hub.
      attr_accessor :adm_credential

      # @return Microsoft.NotificationHubs/namespaces/notificationHubs: Baidu
      # credentials for a Notification Hub.
      attr_accessor :baidu_credential

      # @return Microsoft.NotificationHubs/namespaces/notificationHubs:
      # Authorization Rules for a Notification Hub.
      attr_accessor :authorization_rules

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

        serialized_property = object.wns_credential
        if serialized_property.is_a? NotificationHubsPropertiesWnsCredential0
          unless serialized_property.nil?
            serialized_property = serialized_property.to_h
          end
        end
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:wnsCredential] = serialized_property unless serialized_property.nil?

        serialized_property = object.apns_credential
        if serialized_property.is_a? NotificationHubsPropertiesApnsCredential0
          unless serialized_property.nil?
            serialized_property = serialized_property.to_h
          end
        end
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:apnsCredential] = serialized_property unless serialized_property.nil?

        serialized_property = object.gcm_credential
        if serialized_property.is_a? NotificationHubsPropertiesGcmCredential0
          unless serialized_property.nil?
            serialized_property = serialized_property.to_h
          end
        end
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:gcmCredential] = serialized_property unless serialized_property.nil?

        serialized_property = object.mpns_credential
        if serialized_property.is_a? NotificationHubsPropertiesMpnsCredential0
          unless serialized_property.nil?
            serialized_property = serialized_property.to_h
          end
        end
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:mpnsCredential] = serialized_property unless serialized_property.nil?

        serialized_property = object.adm_credential
        if serialized_property.is_a? NotificationHubsPropertiesAdmCredential0
          unless serialized_property.nil?
            serialized_property = serialized_property.to_h
          end
        end
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:AdmCredential] = serialized_property unless serialized_property.nil?

        serialized_property = object.baidu_credential
        if serialized_property.is_a? NotificationHubsPropertiesBaiduCredential0
          unless serialized_property.nil?
            serialized_property = serialized_property.to_h
          end
        end
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:BaiduCredential] = serialized_property unless serialized_property.nil?

        serialized_property = object.authorization_rules
        if serialized_property.is_a? NotificationHubsPropertiesAuthorizationRules0
          unless serialized_property.nil?
            serialized_property = serialized_property.to_h
          end
        end
        if serialized_property.is_a? Azure::ARM::Expression
          unless serialized_property.nil?
            serialized_property = serialized_property.to_s
          end
        end
        output_object[:authorizationRules] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        NotificationHubsProperties.serialize_object(hash,self)
        hash
      end

      def self.ds_properties
        result = Array.new 
        result.push :wns_credential
        result.push :apns_credential
        result.push :gcm_credential
        result.push :mpns_credential
        result.push :adm_credential
        result.push :baidu_credential
        result.push :authorization_rules
        result
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [NotificationHubsProperties] Deserialized object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?
        conf = Configurator.new
        conf.parent = output_object

        if object.key?(:wns_credential)
          conf.wns_credential object[:wns_credential]
          object.delete :wns_credential
        end

        if object.key?(:apns_credential)
          conf.apns_credential object[:apns_credential]
          object.delete :apns_credential
        end

        if object.key?(:gcm_credential)
          conf.gcm_credential object[:gcm_credential]
          object.delete :gcm_credential
        end

        if object.key?(:mpns_credential)
          conf.mpns_credential object[:mpns_credential]
          object.delete :mpns_credential
        end

        if object.key?(:adm_credential)
          conf.adm_credential object[:adm_credential]
          object.delete :adm_credential
        end

        if object.key?(:baidu_credential)
          conf.baidu_credential object[:baidu_credential]
          object.delete :baidu_credential
        end

        if object.key?(:authorization_rules)
          conf.authorization_rules object[:authorization_rules]
          object.delete :authorization_rules
        end

        output_object
      end

      def get_name_template
        'nhp'
        end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          NotificationHubsProperties.deserialize_object self, init.clone
        end
      end

      # Configuration code
      class Configurator < Azure::ARM::ResourceConfigurator
        attr_accessor :parent
        # @param wns_credential
        #        NotificationHubsPropertiesWnsCredential0
        #        Expression
        def wns_credential(props)
          if @parent.wns_credential.nil? and props.is_a? NotificationHubsPropertiesWnsCredential0
            @parent.wns_credential = props
            @parent.wns_credential.parent = @parent
            @parent.wns_credential._rsrcpath = 'wnsCredential'
          end
          if @parent.wns_credential.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, NotificationHubsPropertiesWnsCredential0)
            @parent.wns_credential = NotificationHubsPropertiesWnsCredential0.new(@parent, props)
            @parent.wns_credential._rsrcpath = 'wnsCredential'
          end
          if @parent.wns_credential.nil? and props.is_a? Azure::ARM::Expression
            @parent.wns_credential = props
          end
          @parent.wns_credential
        end
        # @param apns_credential
        #        NotificationHubsPropertiesApnsCredential0
        #        Expression
        def apns_credential(props)
          if @parent.apns_credential.nil? and props.is_a? NotificationHubsPropertiesApnsCredential0
            @parent.apns_credential = props
            @parent.apns_credential.parent = @parent
            @parent.apns_credential._rsrcpath = 'apnsCredential'
          end
          if @parent.apns_credential.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, NotificationHubsPropertiesApnsCredential0)
            @parent.apns_credential = NotificationHubsPropertiesApnsCredential0.new(@parent, props)
            @parent.apns_credential._rsrcpath = 'apnsCredential'
          end
          if @parent.apns_credential.nil? and props.is_a? Azure::ARM::Expression
            @parent.apns_credential = props
          end
          @parent.apns_credential
        end
        # @param gcm_credential
        #        NotificationHubsPropertiesGcmCredential0
        #        Expression
        def gcm_credential(props)
          if @parent.gcm_credential.nil? and props.is_a? NotificationHubsPropertiesGcmCredential0
            @parent.gcm_credential = props
            @parent.gcm_credential.parent = @parent
            @parent.gcm_credential._rsrcpath = 'gcmCredential'
          end
          if @parent.gcm_credential.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, NotificationHubsPropertiesGcmCredential0)
            @parent.gcm_credential = NotificationHubsPropertiesGcmCredential0.new(@parent, props)
            @parent.gcm_credential._rsrcpath = 'gcmCredential'
          end
          if @parent.gcm_credential.nil? and props.is_a? Azure::ARM::Expression
            @parent.gcm_credential = props
          end
          @parent.gcm_credential
        end
        # @param mpns_credential
        #        NotificationHubsPropertiesMpnsCredential0
        #        Expression
        def mpns_credential(props)
          if @parent.mpns_credential.nil? and props.is_a? NotificationHubsPropertiesMpnsCredential0
            @parent.mpns_credential = props
            @parent.mpns_credential.parent = @parent
            @parent.mpns_credential._rsrcpath = 'mpnsCredential'
          end
          if @parent.mpns_credential.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, NotificationHubsPropertiesMpnsCredential0)
            @parent.mpns_credential = NotificationHubsPropertiesMpnsCredential0.new(@parent, props)
            @parent.mpns_credential._rsrcpath = 'mpnsCredential'
          end
          if @parent.mpns_credential.nil? and props.is_a? Azure::ARM::Expression
            @parent.mpns_credential = props
          end
          @parent.mpns_credential
        end
        # @param adm_credential
        #        NotificationHubsPropertiesAdmCredential0
        #        Expression
        def adm_credential(props)
          if @parent.adm_credential.nil? and props.is_a? NotificationHubsPropertiesAdmCredential0
            @parent.adm_credential = props
            @parent.adm_credential.parent = @parent
            @parent.adm_credential._rsrcpath = 'AdmCredential'
          end
          if @parent.adm_credential.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, NotificationHubsPropertiesAdmCredential0)
            @parent.adm_credential = NotificationHubsPropertiesAdmCredential0.new(@parent, props)
            @parent.adm_credential._rsrcpath = 'AdmCredential'
          end
          if @parent.adm_credential.nil? and props.is_a? Azure::ARM::Expression
            @parent.adm_credential = props
          end
          @parent.adm_credential
        end
        # @param baidu_credential
        #        NotificationHubsPropertiesBaiduCredential0
        #        Expression
        def baidu_credential(props)
          if @parent.baidu_credential.nil? and props.is_a? NotificationHubsPropertiesBaiduCredential0
            @parent.baidu_credential = props
            @parent.baidu_credential.parent = @parent
            @parent.baidu_credential._rsrcpath = 'BaiduCredential'
          end
          if @parent.baidu_credential.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, NotificationHubsPropertiesBaiduCredential0)
            @parent.baidu_credential = NotificationHubsPropertiesBaiduCredential0.new(@parent, props)
            @parent.baidu_credential._rsrcpath = 'BaiduCredential'
          end
          if @parent.baidu_credential.nil? and props.is_a? Azure::ARM::Expression
            @parent.baidu_credential = props
          end
          @parent.baidu_credential
        end
        # @param authorization_rules
        #        NotificationHubsPropertiesAuthorizationRules0
        #        Expression
        def authorization_rules(props)
          if @parent.authorization_rules.nil? and props.is_a? NotificationHubsPropertiesAuthorizationRules0
            @parent.authorization_rules = props
            @parent.authorization_rules.parent = @parent
            @parent.authorization_rules._rsrcpath = 'authorizationRules'
          end
          if @parent.authorization_rules.nil? and (props.is_a? Hash) and (Azure::ARM::TypeBase.matches_type props, NotificationHubsPropertiesAuthorizationRules0)
            @parent.authorization_rules = NotificationHubsPropertiesAuthorizationRules0.new(@parent, props)
            @parent.authorization_rules._rsrcpath = 'authorizationRules'
          end
          if @parent.authorization_rules.nil? and props.is_a? Azure::ARM::Expression
            @parent.authorization_rules = props
          end
          @parent.authorization_rules
        end
        def create(init=nil,&block)
          @parent = NotificationHubsProperties.new nil, init
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