# frozen_string_literal: true
#
class CreateSubject1s < ActiveRecord::Migration[6.0]
  def change
    create_table :subject1s do |t|
      t.string :name
      t.timestamps
    end

    Subject1.create name: 'Rails'
    Subject1.create name: 'Linux'
    Subject1.create name: 'SQL'
    Subject1.create name: 'Python'
    Subject1.create name: 'Bash'
  end
end
