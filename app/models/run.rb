class Run < ActiveRecord::Base
  belongs_to :route
  belongs_to :member
  validates :run_id, :uniqueness=>true
  validates :route, :presence => true
  validates :member, :presence => true
  validates :run_date, :presence => true
  validates :time_taken, :presence => true
  validates :am_pm, :presence => true
  validates :notes, :presence => true
  
  after_initialize do
        if new_record?
                maxId = Run.find_by_sql("SELECT run_id FROM runs ORDER BY run_id DESC limit 1").first.try(:run_id)
		if maxId.blank?
                    maxId = 0
                end

                self.run_id = maxId+1
        end
  end

rails_admin do
  list do
        field :run_id do
		sort_reverse false
                label "Run ID"
                read_only true
                help ''
        end
        field :route do
                label "Route"
                help 'Required'
	end
        field :member do
                label "Member"
                help 'Required'
	end
        field :run_date, :date do
                label "Run date"
                help 'Required'
	end
        field :time_taken do
                label "Time taken"
                help 'Required'
	end
        field :am_pm do
                label "Am Pm"
                help 'Required'
	end
        field :notes do
                label "Notes"
                help 'Required'
	end
   end
  
   

   update do
        field :run_id do
                label "Run ID"
                read_only true
                help ''
        end
        field :route do
                label "Route"
                help 'Required'
	end
        field :member do
                label "Member"
                help 'Required'
	end
        field :run_date, :date do
                label "Run date"
                help 'Required'
	end
        field :time_taken do
                label "Time taken"
                help 'Required'
	end
        field :am_pm do
                label "Am Pm"
                help 'Required'
	end
        field :notes do
                label "Notes"
                help 'Required'
	end
  end
  
   show do
        field :run_id do
                label "Run ID"
                read_only true
                help ''
        end
        field :route do
                label "Route"
                help 'Required'
	end
        field :member do
                label "Member"
                help 'Required'
	end
        field :run_date, :date do
                label "Run date"
                help 'Required'
	end
        field :time_taken do
                label "Time taken"
                help 'Required'
	end
        field :am_pm do
                label "Am Pm"
                help 'Required'
	end
        field :notes do
                label "Notes"
                help 'Required'
	end
  end
  
  create do
        field :run_id do
                label "Run ID"
                read_only true
                help ''
        end
        field :route do
                label "Route"
                help 'Required'
	end
        field :member do
                label "Member"
                help 'Required'
	end
        field :run_date, :date do
                label "Run date"
                help 'Required'
	end
        field :time_taken do
                label "Time taken"
                help 'Required'
	end
        field :am_pm do
                label "Am Pm"
                help 'Required'
	end
        field :notes do
                label "Notes"
                help 'Required'
	end
  end
  
end
end

