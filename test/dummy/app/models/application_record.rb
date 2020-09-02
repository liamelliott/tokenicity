class ApplicationRecord < ActiveRecord::Base
  include Tokenicity::Models::TokenAuthenticable

  self.abstract_class = true
end
