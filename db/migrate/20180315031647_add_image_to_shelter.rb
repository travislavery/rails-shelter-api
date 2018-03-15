class AddImageToShelter < ActiveRecord::Migration[5.1]
  def change
    add_column :shelters, :image, :string, default: "http://a57.foxnews.com/images.foxnews.com/content/fox-news/lifestyle/2017/11/09/how-to-keep-cat-from-scratching-your-sofa-to-shreds/_jcr_content/par/featured_image/media-0.img.jpg/931/524/1510172827500.jpg?ve=1&tl=1&text=big-top-image"
  end
end
