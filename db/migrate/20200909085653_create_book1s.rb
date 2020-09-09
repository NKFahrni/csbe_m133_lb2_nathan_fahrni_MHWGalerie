# frozen_string_literal: true
#
class CreateBook1s < ActiveRecord::Migration[6.0]
  def change
    create_table :book1s do |t|
      t.string :title
      t.float :price
      t.integer :subject2_id
      t.timestamps
    end
  end
end
