class Project < ActiveRecord::Base
    mount_uploader :image, ImageUploader
    has_many :photos
    accepts_nested_attributes_for :photos, reject_if: :all_blank, allow_destroy: true
end
