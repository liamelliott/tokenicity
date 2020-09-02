module Tokenicity
  module Models
    module TokenAuthenticable
      extend ActiveSupport::Concern

      InstanceMethods = lambda do |name, **options|
        Module.new do
          define_method(:"#{name}_token") do
          end

          define_method(:"verify_#{name}_token") do
          end
        end
      end

      class_methods do
        def has_token_for(name, **options)
          include InstanceMethods[name, **options]
        end
      end
    end
  end
end
