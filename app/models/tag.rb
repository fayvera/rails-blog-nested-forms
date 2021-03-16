class Tag < ActiveRecord::Base
  has_many :post_tags
  has_many :posts, :through => :post_tags

  # accepts_nested_attributes_for :posts, reject_if: proc { |attributes| attributes['title'].blank? }
  # validates_uniqueness_of :name
  validates :name, uniqueness: true, presence: true
end
