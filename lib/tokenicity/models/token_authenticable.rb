module Tokenicity
  module Models
    module TokenAuthenticable
      extend ActiveSupport::Concern

      class_methods do
        def has_token_for(name, **options)
        end
      end
    end
  end
end
