class AddUserIdToQuandaries < ActiveRecord::Migration
  def change
    add_column :quandaries, :user_id, :integer
  end
end


