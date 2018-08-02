class RemoveLengthConstraintsToUsersEmail < ActiveRecord::Migration
  def up
    change_column :users, :email, :string, default: "", null: false, limit: nil
  end
  def down
    change_column :users, :email, :string, default: "", null: false, limit: 80
  end
end
