class Bike < ActiveRecord::Base
  has_attached_file :photo_bike, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo_bike, :content_type => /\Aimage\/.*\Z/
end
