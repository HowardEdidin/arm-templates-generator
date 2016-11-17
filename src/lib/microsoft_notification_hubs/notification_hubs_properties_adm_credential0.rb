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
    class NotificationHubsPropertiesAdmCredential0 < Azure::ARM::TypeBase

      # @return [String]
      # Microsoft.NotificationHubs/namespaces/notificationHubs: ClientId for
      # authenticating with ADM
      attr_accessor :client_id

      # @return [String]
      # Microsoft.NotificationHubs/namespaces/notificationHubs: ClientSecret
      # for authenticating with ADM
      attr_accessor :client_secret

      # @return [String]
      # Microsoft.NotificationHubs/namespaces/notificationHubs: The AuthToken
      # URL. valid endpoint: https://api.amazon.com/auth/O2/token . Other
      # values are invalid.
      attr_accessor :auth_token_url

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

        serialized_property = object.client_id
        output_object[:clientId] = serialized_property unless serialized_property.nil?

        serialized_property = object.client_secret
        output_object[:clientSecret] = serialized_property unless serialized_property.nil?

        serialized_property = object.auth_token_url
        output_object[:authTokenUrl] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        NotificationHubsPropertiesAdmCredential0.serialize_object(hash,self)
        hash
      end

      def self.ds_properties
        result = Array.new 
        result.push :client_id
        result.push :client_secret
        result.push :auth_token_url
        result
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [NotificationHubsPropertiesAdmCredential0] Deserialized object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?
        conf = Configurator.new
        conf.parent = output_object

        if object.key?(:client_id)
          conf.client_id object[:client_id]
          object.delete :client_id
        end

        if object.key?(:client_secret)
          conf.client_secret object[:client_secret]
          object.delete :client_secret
        end

        if object.key?(:auth_token_url)
          conf.auth_token_url object[:auth_token_url]
          object.delete :auth_token_url
        end

        output_object
      end

      def get_name_template
        'nhpac'
        end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          NotificationHubsPropertiesAdmCredential0.deserialize_object self, init.clone
        end
      end

      # Configuration code
      class Configurator < Azure::ARM::ResourceConfigurator
        attr_accessor :parent
        # @param client_id
        #        String
        def client_id(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.client_id = props
            return
          end
          @parent.client_id
        end
        # @param client_secret
        #        String
        def client_secret(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.client_secret = props
            return
          end
          @parent.client_secret
        end
        # @param auth_token_url
        #        String
        def auth_token_url(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.auth_token_url = props
            return
          end
          @parent.auth_token_url
        end
        def create(init=nil,&block)
          @parent = NotificationHubsPropertiesAdmCredential0.new nil, init
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
