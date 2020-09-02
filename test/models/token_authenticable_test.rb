require 'test_helper'

module Tokenicity
  module Models
    class TokenAuthenticableTest < ActiveSupport::TestCase
      def klass
        @klass ||= Class.new { include Tokenicity::Models::TokenAuthenticable } 
      end

      def instance
        unless @instance
          @instance = klass.new
          klass.has_token_for(:login)
        end

        @instance
      end

      test 'macro is defined' do
        assert_respond_to(klass, :has_token_for)
      end

      test 'has_token_for defines token instance methods' do
        assert_respond_to(instance, :login_token)
        assert_respond_to(instance, :verify_login_token)
      end

      test 'token instance method returns string' do
        assert_kind_of(String, instance.login_token)
      end

      test 'successful token verification returns self' do
        token = instance.login_token

        assert_same(instance, instance.verify_login_token(token))
      end

      test 'unsuccessful token verification returns false' do
        refute(instance.verify_login_token('not a token'))
      end

      test 'token model is created when token method is called' do
      end
    end
  end
end
