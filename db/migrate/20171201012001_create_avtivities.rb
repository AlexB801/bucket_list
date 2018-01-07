class CreateAvtivities < ActiveRecord::Migration[5.1]
  def change
    create_table :avtivities do |t|
      t.string :name
      t.string :body
      t.belongs_to :list, foreign_key: true
      t.timestamps
    end
  end
end
