class AddImageToShelter < ActiveRecord::Migration[5.1]
  def change
    add_column :shelters, :image, :string, default: "http://www.clker.com/cliparts/f/e/6/c/120743200840710503sleeping%20shelter%20white.svg.med.png"
  end
end
