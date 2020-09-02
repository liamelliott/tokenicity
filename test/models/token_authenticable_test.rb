require 'test_helper'
require_relative '../../lib/tokenicity/models/token_authenticable'

module Tokenicity
  module Models
    class TokenAuthenticableTest < ActiveSupport::TestCase
      def klass
        @klass ||= Class.new { include Tokenicity::Models::TokenAuthenticable } 
      end

      test 'macro is defined' do
        assert_respond_to(klass, :has_token_for)
      end
    end
  end
end
