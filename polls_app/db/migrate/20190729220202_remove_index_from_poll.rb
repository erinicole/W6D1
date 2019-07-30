class RemoveIndexFromPoll < ActiveRecord::Migration[5.2]

  def change
    remove_index :polls, :user_id
  end
end
