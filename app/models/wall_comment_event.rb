# == Schema Information
# Schema version: 12
#
# Table name: events
#
#  id          :integer(11)     not null, primary key
#  person_id   :integer(11)     
#  instance_id :integer(11)     
#  type        :string(255)     
#  created_at  :datetime        
#  updated_at  :datetime        
#

class WallCommentEvent < Event
  belongs_to :comment, :class_name => "WallComment",
                       :foreign_key => "instance_id"
end
