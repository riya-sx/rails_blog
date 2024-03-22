class AddParentIdToComments < ActiveRecord::Migration[7.1]
  def change
    add_reference :comments, :parent_comment, foreign_key: { to_table: :comments }
  end
end
