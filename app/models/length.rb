class Length < ActiveRecord::Base
  attr_accessible :length, :size, :category
  belongs_to :custom_made

  def length_and_size
  	"#{size}, #{length}"
  	
  end
end
