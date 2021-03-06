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
    class NamespacesResourcesItemPropertiesApnsCredential0 < Azure::ARM::TypeBase

      # @return [String]
      # Microsoft.NotificationHubs/namespaces/notificationHubs: A certificate
      # (in base 64 format) provided by Apple on the iOS Provisioning Portal
      attr_accessor :apns_certificate

      # @return [String]
      # Microsoft.NotificationHubs/namespaces/notificationHubs: The
      # Certificate Key provided by the iOS Provisioning Portal when
      # registering the application
      attr_accessor :certificate_key

      # @return [String]
      # Microsoft.NotificationHubs/namespaces/notificationHubs: The APNS
      # endpoint to which our service connects. This is one of two values:
      # gateway.sandbox.push.apple.com for the sandbox endpoint or
      # gateway.push.apple.com, for the production endpoint. Any other value
      # is invalid.
      attr_accessor :endpoint

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        # Nothing to validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(output_object, object)
        Azure::ARM::TypeBase.serialize_object(output_object, object)
        object.validate

        serialized_property = object.apns_certificate
        output_object[:apnsCertificate] = serialized_property unless serialized_property.nil?

        serialized_property = object.certificate_key
        output_object[:certificateKey] = serialized_property unless serialized_property.nil?

        serialized_property = object.endpoint
        output_object[:endpoint] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        NamespacesResourcesItemPropertiesApnsCredential0.serialize_object(hash,self)
        hash
      end

      def self.ds_properties
        result = Array.new 
        result.push :apns_certificate
        result.push :certificate_key
        result.push :endpoint
        result
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [NamespacesResourcesItemPropertiesApnsCredential0]
      # Deserialized object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?
        conf = Configurator.new
        conf.parent = output_object

        if object.key?(:apns_certificate)
          conf.apns_certificate object[:apns_certificate]
          object.delete :apns_certificate
        end

        if object.key?(:certificate_key)
          conf.certificate_key object[:certificate_key]
          object.delete :certificate_key
        end

        if object.key?(:endpoint)
          conf.endpoint object[:endpoint]
          object.delete :endpoint
        end

        output_object
      end

      def get_name_template
        'nripac'
        end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          NamespacesResourcesItemPropertiesApnsCredential0.deserialize_object self, init.clone
        end
      end

      # Configuration code
      class Configurator < Azure::ARM::ResourceConfigurator
        attr_accessor :parent
        # @param apns_certificate
        #        String
        def apns_certificate(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.apns_certificate = props
            return
          end
          @parent.apns_certificate
        end
        # @param certificate_key
        #        String
        def certificate_key(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.certificate_key = props
            return
          end
          @parent.certificate_key
        end
        # @param endpoint
        #        String
        def endpoint(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.endpoint = props
            return
          end
          @parent.endpoint
        end
        def create(init=nil,&block)
          @parent = NamespacesResourcesItemPropertiesApnsCredential0.new nil, init
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
