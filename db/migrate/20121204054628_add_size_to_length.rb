class AddSizeToLength < ActiveRecord::Migration
  def change
    add_column :lengths, :size, :string
  end
end
