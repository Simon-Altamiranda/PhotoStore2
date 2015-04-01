class Photo < ActiveRecord::Base
  belongs_to :user

  has_attached_file :asset, styles: { detail: "420x", thumb: "100x100#" }

  validates :user, :title, :description, presence: true
  validates :permalink, presence: true, url: true
  validates_attachment_presence :asset
  validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/

  def self.homepage(q = 9)
    order("created_at DESC")
  end
end
