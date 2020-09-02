module Tokenicity
  module Models
    class Token < ActiveRecord::Base
      self.table_name = :tokenicity_tokens
    end
  end
end
