class Personal_Blog < ActiveRecord::Base
  validates :title, :subtitle,:author, presence: true

end
