class CreateWizards < ActiveRecord::Migration[6.1]
  def change
    create_table :wizards do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
