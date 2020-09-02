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

      test 'has_token_for defines token instance methods' do
        klass.has_token_for(:login)

        instance = klass.new

        assert_respond_to(instance, :login_token)
        assert_respond_to(instance, :verify_login_token)
      end
    end
  end
end
