# frozen_string_literal: true
#
class AddDescriptionToBook1s < ActiveRecord::Migration[6.0]
  def change
    add_column :book1s, :description, :string
  end
end
