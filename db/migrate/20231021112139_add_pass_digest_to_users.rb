class AddPassDigestToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :pass_digest, :string
  end
end
