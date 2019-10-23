class Story < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }

  scope :published, ->   { where(published: true) }
  scope :not_published, -> { where(published: false) }
  scope :recent, -> { published.order(created_at: :desc).limit(10) }
end
