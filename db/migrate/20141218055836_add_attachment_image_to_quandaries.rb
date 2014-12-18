class AddAttachmentImageToQuandaries < ActiveRecord::Migration
  def self.up
    change_table :quandaries do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :quandaries, :image
  end
end
