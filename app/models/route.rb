class Route < ActiveRecord::Base
  validates :route_id, :uniqueness=>true
  validates :route_name, :presence => true
  validates :print_sequence, :presence => true
  after_initialize do
        if new_record?
                maxId = Route.find_by_sql("SELECT route_id FROM routes ORDER BY route_id DESC limit 1").first.try(:route_id)
		if maxId.blank?
                    maxId = 0
                end

                self.route_id = maxId+1
                self.route_name = "Unassigned"
        end
  end
 
rails_admin do

   update do
        field :route_id do
                label "Route ID"
                read_only true
                help ''
        end
        field :route_name do
                label "Route name"
                help 'Required'
        end
        field :print_sequence do
		label "Print sequence"
                help 'Required'
	end
   end
   
   show do 
	field :route_id do
                label "Route ID"
                read_only true
                help ''
        end
        field :route_name do
                label "Route name"
                help 'Required'
        end
        field :print_sequence do
                label "Print sequence"
                help 'Required'
        end
   end
   create do
        field :route_id do
                label "Route ID"
                read_only true
                help ''
        end
        field :route_name do
                label "Route name"
                help 'Required'
        end
        field :print_sequence do
                label "Print sequence"
                help 'Required'
        end
   end
  
   list do
        sort_by :print_sequence
	field :print_sequence do
		sort_reverse false
                label "Print sequence"
                help 'Required'
        end
        field :route_name do
                label "Route name"
                help 'Required'
        end
        
        field :route_id do
                label "Route ID"
                read_only true
                help ''
        end

    end

end

end
