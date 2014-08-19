class AddAttachmentPhotoBikeToBikes < ActiveRecord::Migration
  def self.up
    change_table :bikes do |t|
      t.attachment :photo_bike
    end
  end

  def self.down
    remove_attachment :bikes, :photo_bike
  end
end
