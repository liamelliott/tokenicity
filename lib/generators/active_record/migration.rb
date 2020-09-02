class TokenicityCreateTokens < ActiveRecord::Migration<%= migration_version %>
  def change
    create_table :tokenicity_tokens do |t|
      t.string :token_digest, null: false
      t.datetime :expires_at, null: false
      t.references :tokenable, null: false, polymorphic: true

      t.timestamps
    end
  end
end
