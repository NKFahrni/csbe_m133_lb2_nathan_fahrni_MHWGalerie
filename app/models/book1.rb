# frozen_string_literal: true

class Book1 < ApplicationRecord
  belongs_to :Subject2
  validates_presence_of :title
  validates_numericality_of :price, :message => 'Error Message'
end
