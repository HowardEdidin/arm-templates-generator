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
    class NamespacesResourcesItemPropertiesWnsCredential0 < Azure::ARM::TypeBase

      # @return [String]
      # Microsoft.NotificationHubs/namespaces/notificationHubs: The Package
      # SID provided by Windows Live Application Management when registering
      # the application.
      attr_accessor :package_sid

      # @return [String]
      # Microsoft.NotificationHubs/namespaces/notificationHubs: The Secret
      # Key associated with the packageSid provided by Windows Live
      # Application Management when registering the application.
      attr_accessor :secret_key

      # @return [String]
      # Microsoft.NotificationHubs/namespaces/notificationHubs: The Windows
      # Live Endpoint used to retrieve the Access Token for the application
      attr_accessor :windows_live_endpoint

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

        serialized_property = object.package_sid
        output_object[:packageSid] = serialized_property unless serialized_property.nil?

        serialized_property = object.secret_key
        output_object[:secretKey] = serialized_property unless serialized_property.nil?

        serialized_property = object.windows_live_endpoint
        output_object[:windowsLiveEndpoint] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        NamespacesResourcesItemPropertiesWnsCredential0.serialize_object(hash,self)
        hash
      end

      def self.ds_properties
        result = Array.new 
        result.push :package_sid
        result.push :secret_key
        result.push :windows_live_endpoint
        result
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [NamespacesResourcesItemPropertiesWnsCredential0] Deserialized
      # object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?
        conf = Configurator.new
        conf.parent = output_object

        if object.key?(:package_sid)
          conf.package_sid object[:package_sid]
          object.delete :package_sid
        end

        if object.key?(:secret_key)
          conf.secret_key object[:secret_key]
          object.delete :secret_key
        end

        if object.key?(:windows_live_endpoint)
          conf.windows_live_endpoint object[:windows_live_endpoint]
          object.delete :windows_live_endpoint
        end

        output_object
      end

      def get_name_template
        'nripwc'
        end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          NamespacesResourcesItemPropertiesWnsCredential0.deserialize_object self, init.clone
        end
      end

      # Configuration code
      class Configurator < Azure::ARM::ResourceConfigurator
        attr_accessor :parent
        # @param package_sid
        #        String
        def package_sid(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.package_sid = props
            return
          end
          @parent.package_sid
        end
        # @param secret_key
        #        String
        def secret_key(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.secret_key = props
            return
          end
          @parent.secret_key
        end
        # @param windows_live_endpoint
        #        String
        def windows_live_endpoint(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.windows_live_endpoint = props
            return
          end
          @parent.windows_live_endpoint
        end
        def create(init=nil,&block)
          @parent = NamespacesResourcesItemPropertiesWnsCredential0.new nil, init
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