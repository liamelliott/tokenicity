module Tokenicity
  module Models
    module TokenAuthenticable
      extend ActiveSupport::Concern

      InstanceMethods = lambda do |name, **options|
        valid_for = options.fetch(:valid_for, 2.days)

        Module.new do
          define_method(:"#{name}_token") do
            'useless string'
          end

          define_method(:"verify_#{name}_token") do |token|
            token == 'useless string' ? self : false
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
