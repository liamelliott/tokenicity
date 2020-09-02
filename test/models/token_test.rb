require 'test_helper'
require_relative '../../lib/tokenicity/models/token'

module Tokenicity
  module Models
    class TokenTest < ActiveSupport::TestCase
      test 'token is' do
        Token
      end
    end
  end
end
