require 'test_helper'

module Tokenicity
  module Models
    class TokenTest < ActiveSupport::TestCase
      def klass
        @klass ||= Token
      end

      def instance
        @instance ||= klass.new
      end

      test 'table name is prefixed' do
        assert_equal('tokenicity_tokens', klass.table_name)
      end

      test 'allows setting of plaintext token' do
        assert_respond_to(instance, :plaintext=)
      end
    end
  end
end
