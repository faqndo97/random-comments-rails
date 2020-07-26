class Like < ApplicationRecord
  belongs_to :comment

  validates :anonymous_user_id, presence: true
end
