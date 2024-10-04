# frozen_string_literal: true

class AddSettingsToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :settings, :jsonb, default: {
      theme: 'dark',
    }
  end
end
