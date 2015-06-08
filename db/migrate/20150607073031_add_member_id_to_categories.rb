class AddMemberIdToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :member_id, :integer
    add_column :categories, :name, :string

  end
end
