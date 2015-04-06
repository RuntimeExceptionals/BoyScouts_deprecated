class Member < ActiveRecord::Base
  
  validates :member_id, :uniqueness=>true
  validates :member_last_name, :presence => true
  validates :member_first_name, :presence => true
  validates :member_cell, :presence => true
  validates :member_landline, :presence => true
  validates :member_email, :presence => true
  validates :member_inactive, :presence => true
  validates :member_vehicle, :presence => true

 rails_admin do
    list do
        field :member_id do
                sort_reverse false
                label "Member ID"
                read_only true
                help ''
        end
        field :member_last_name  do
                label "Member last name"
                help 'Required'
        end
        field :member_first_name do
                label "Member first name"
                help 'Required'
        end
        field :member_cell do
                label "Member cell"
                help 'Required'
        end
        field :member_landline do
                label "Member landline"
                help 'Required'
        end
        field :member_email do
                label "Member email"
                help 'Required'
        end
        field :member_inactive do
                label "Member inactive"
                help 'Required'
        end
        field :member_vehicle do
                label "Member vehicle"
                help 'Required'
        end
   end

   update do
        field :member_id do
                label "Member ID"
                read_only true
                help ''
        end
        field :member_last_name  do
                label "Member last name"
                help 'Required'
        end
        field :member_first_name do
                label "Member first name"
                help 'Required'
        end
        field :member_cell do
                label "Member cell"
                help 'Required'
        end
        field :member_landline do
                label "Member landline"
                help 'Required'
        end
        field :member_email do
                label "Member email"
                help 'Required'
        end
        field :member_inactive do
                label "Member inactive"
                help 'Required'
        end
        field :member_vehicle do
                label "Member vehicle"
                help 'Required'
        end
   end
   show do
        field :member_id do
                label "Member ID"
                read_only true
                help ''
        end
        field :member_last_name  do
                label "Member last name"
                help 'Required'
        end
        field :member_first_name do
                label "Member first name"
                help 'Required'
        end
        field :member_cell do
                label "Member cell"
                help 'Required'
        end
        field :member_landline do
                label "Member landline"
                help 'Required'
        end
        field :member_email do
                label "Member email"
                help 'Required'
        end
        field :member_inactive do
                label "Member inactive"
                help 'Required'
        end
        field :member_vehicle do
                label "Member vehicle"
                help 'Required'
        end
   end
   create do
        field :member_id do
                label "Member ID"
                read_only true
                help ''
        end
        field :member_last_name  do
                label "Member last name"
                help 'Required'
        end
        field :member_first_name do
                label "Member first name"
                help 'Required'
        end
        field :member_cell do
                label "Member cell"
                help 'Required'
        end
        field :member_landline do
                label "Member landline"
                help 'Required'
        end
        field :member_email do
                label "Member email"
                help 'Required'
        end
        field :member_inactive do
                label "Member inactive"
                help 'Required'
        end
        field :member_vehicle do
                label "Member vehicle"
                help 'Required'
        end
   end
 end
end
