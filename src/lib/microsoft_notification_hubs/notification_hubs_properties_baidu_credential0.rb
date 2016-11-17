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
    class NotificationHubsPropertiesBaiduCredential0 < Azure::ARM::TypeBase

      # @return [String]
      # Microsoft.NotificationHubs/namespaces/notificationHubs: ApiKey
      # provided by the Baidu portal
      attr_accessor :baidu_api_key

      # @return [String]
      # Microsoft.NotificationHubs/namespaces/notificationHubs: SecretKey
      # provided by the Baidu portal
      attr_accessor :baidu_secret_key

      # @return [String]
      # Microsoft.NotificationHubs/namespaces/notificationHubs: The Baidu
      # endpoint to which our service connects
      attr_accessor :baidu_end_point

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

        serialized_property = object.baidu_api_key
        output_object[:baiduApiKey] = serialized_property unless serialized_property.nil?

        serialized_property = object.baidu_secret_key
        output_object[:baiduSecretKey] = serialized_property unless serialized_property.nil?

        serialized_property = object.baidu_end_point
        output_object[:baiduEndPoint] = serialized_property unless serialized_property.nil?

        output_object
      end

      def to_h
        hash = {}
        NotificationHubsPropertiesBaiduCredential0.serialize_object(hash,self)
        hash
      end

      def self.ds_properties
        result = Array.new 
        result.push :baidu_api_key
        result.push :baidu_secret_key
        result.push :baidu_end_point
        result
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [NotificationHubsPropertiesBaiduCredential0] Deserialized
      # object.
      #
      def self.deserialize_object(output_object, object)
        return if object.nil?
        conf = Configurator.new
        conf.parent = output_object

        if object.key?(:baidu_api_key)
          conf.baidu_api_key object[:baidu_api_key]
          object.delete :baidu_api_key
        end

        if object.key?(:baidu_secret_key)
          conf.baidu_secret_key object[:baidu_secret_key]
          object.delete :baidu_secret_key
        end

        if object.key?(:baidu_end_point)
          conf.baidu_end_point object[:baidu_end_point]
          object.delete :baidu_end_point
        end

        output_object
      end

      def get_name_template
        'nhpbc'
        end

      def initialize(parent, init)
        super(parent)
        if init.is_a? Hash
          NotificationHubsPropertiesBaiduCredential0.deserialize_object self, init.clone
        end
      end

      # Configuration code
      class Configurator < Azure::ARM::ResourceConfigurator
        attr_accessor :parent
        # @param baidu_api_key
        #        String
        def baidu_api_key(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.baidu_api_key = props
            return
          end
          @parent.baidu_api_key
        end
        # @param baidu_secret_key
        #        String
        def baidu_secret_key(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.baidu_secret_key = props
            return
          end
          @parent.baidu_secret_key
        end
        # @param baidu_end_point
        #        String
        def baidu_end_point(props)
          if props.is_a? String or props.is_a? Azure::ARM::Expression
            @parent.baidu_end_point = props
            return
          end
          @parent.baidu_end_point
        end
        def create(init=nil,&block)
          @parent = NotificationHubsPropertiesBaiduCredential0.new nil, init
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
