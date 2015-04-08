class Activity < ActiveRecord::Base
  belongs_to :member
  validates :activity_id, :uniqueness=>true
  validates :member, :presence => true
  validates :activity_date, :presence => true
  validates :activity_ampm, :presence => true
  validates :activity_unit_count, :presence => true
  validates :activity_type, :presence => true
  after_initialize do
        if new_record?
                maxId = Activity.find_by_sql("SELECT activity_id FROM activities ORDER BY activity_id DESC limit 1").first.try(:activity_id)
                if maxId.blank?
                    maxId = 0
                end

                self.activity_id = maxId+1
        end
  end
 rails_admin do
   list do
        field :activity_id do
		sort_reverse false
                label "Activity ID"
                read_only true
                help ''
        end
        field :member do
                label "Member"
                help 'Required'
        end
        field :activity_date, :date do
                label "Activity date"
                help 'Required'
        end
        field :activity_ampm do
                label "Activity ampm"
                help 'Required'
        end
        field :activity_type do
                label "Activity type"
                help 'Required'
        end
        field :activity_unit_count do
                label "Activity unit count"
                help 'Required'
        end
   end

  
   update do
        field :activity_id do
                label "Activity ID"
                read_only true
                help ''
        end
        field :member do
                label "Member"
                help 'Required'
        end
        field :activity_date, :date do
                label "Activity date"
                help 'Required'
        end
        field :activity_ampm do
                label "Activity ampm"
                help 'Required'
        end
        field :activity_type do
                label "Activity type"
                help 'Required'
        end
        field :activity_unit_count do
                label "Activity unit count"
                help 'Required'
        end
   end
   show do
        field :activity_id do
                label "Activity ID"
                read_only true
                help ''
        end
        field :member do
                label "Member"
                help 'Required'
        end
        field :activity_date, :date do
                label "Activity date"
                help 'Required'
        end
        field :activity_ampm do
                label "Activity ampm"
                help 'Required'
        end
        field :activity_type do
                label "Activity type"
                help 'Required'
        end
        field :activity_unit_count do
                label "Activity unit count"
                help 'Required'
        end
   end
   create do
        field :activity_id do
                label "Activity ID"
                read_only true
                help ''
        end
        field :member do
                label "Member"
                help 'Required'
        end
        field :activity_date, :date do
                label "Activity date"
                help 'Required'
        end
        field :activity_ampm do
                label "Activity ampm"
                help 'Required'
        end
        field :activity_type do
                label "Activity type"
                help 'Required'
        end
        field :activity_unit_count do
                label "Activity unit count"
                help 'Required'
        end
   end
 end
end
