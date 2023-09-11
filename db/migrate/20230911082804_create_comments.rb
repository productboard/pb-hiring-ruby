# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments, id: :uuid do |t|
      t.belongs_to :feature, null: false, foreign_key: true, type: :uuid
      t.string :title, null: false
      t.timestamps
    end
  end
end
