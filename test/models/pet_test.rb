# == Schema Information
#
# Table name: pets
#
#  id         :integer          not null, primary key
#  owner_id   :integer          not null
#  name       :string(255)      not null
#  animal     :string(255)      not null
#  age        :integer
#  color      :string(255)
#  gender     :string(255)      not null
#  bio        :text
#  image_url  :string(255)      default("http://cf.ltkcdn.net/socialnetworking/images/std/168646-150x150-Cat-Avatar-Primary.jpg")
#  created_at :datetime
#  updated_at :datetime
#  address    :string(255)
#  city       :string(255)
#  state      :string(255)
#  zipcode    :string(255)
#

require 'test_helper'

class PetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
