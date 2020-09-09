class Subject2 < ApplicationRecord
  has_many :book1s, dependent: :restrict_with_error
end
