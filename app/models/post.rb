class Post < ActiveRecord::Base
  default_scope { order('updated_at DESC') } # sorts by updated at in reverse orderr
  has_many :comments
  has_many :tags
  has_many :categories, through: :tags
  belongs_to :user
end
