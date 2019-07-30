class RemoveAndAddIndexToQuestion < ActiveRecord::Migration[5.2]
  def change
    remove_index :questions, :poll_id
    add_index :questions, :poll_id
  end
end
