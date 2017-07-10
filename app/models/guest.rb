# == Schema Information
#
# Table name: guests
#
#  id         :integer          not null, primary key
#  name       :string
#  occupation :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Guest < ApplicationRecord
  has_many :appearances
  has_many :episodes, through: :appearances

  def episode_checked?(episode)
    return "checked" if self.episodes.include?(episode)
  end

end
