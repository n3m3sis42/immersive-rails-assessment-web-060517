# == Schema Information
#
# Table name: appearances
#
#  id         :integer          not null, primary key
#  guest_id   :integer
#  episode_id :integer
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
end
