class User < ApplicationRecord
  has_token_for :login
end
