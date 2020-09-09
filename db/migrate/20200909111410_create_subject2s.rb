# frozen_string_literal: true
#
class CreateSubject2s < ActiveRecord::Migration[6.0]
  def change
    create_table :subject2s do |t|
      t.string :name
      t.timestamps
    end

    Subject2.create name: 'Rails'
    Subject2.create name: 'Linux'
    Subject2.create name: 'SQL'
    Subject2.create name: 'Python'
    Subject2.create name: 'Bash'
  end
end
