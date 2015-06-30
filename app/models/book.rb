class Book < ActiveRecord::Base
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :categories

  mount_uploader :imgbook, ImageUploader


  def self.search(search)
    where("title LIKE ? or isbn LIKE ? or publisher = ?", "%#{search}%", "%#{search}%", "#{search}")
  end



  def cart_action(current_user_id)
    if $redis.sismember "cart#{current_user_id}", id
      "Remove from"
    else
      "Add to"
    end
  end


end
