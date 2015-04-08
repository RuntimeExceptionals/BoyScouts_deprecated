class Subscription < ActiveRecord::Base
  belongs_to :route

  validates :subscription_id, :uniqueness=>true
  validates :route, :presence => true
  validates :run_sequence, :presence => true
  validates :number, :presence => true
  validates :street, :presence => true
  validates :qty, :presence => true
  validates :qty_comp, :presence => true
  validates :service_notes, :presence => true
  validates :last_name, :presence => true
  validates :first_name, :presence => true
  validates :phone_number, :presence => true
  validates :email, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :zip, :presence => true
  validates :started_date, :presence => true
  validates :last_letter_sent_date, :presence => true
  validates :renewal_x0020_grp, :presence => true
  validates :sold_x0020_by, :presence => true
  validates :subscription_amount, :presence => true
  validates :maint, :presence => true
  validates :subscription_notes, :presence => true
  validates :renewal_due_date, :presence => true
  validates :subscription_status, :presence => true
  validates :alternative_invoice, :presence => true
  validates :map_date, :presence => true
  after_initialize do
        if new_record?
                maxId = Subscription.find_by_sql("SELECT subscription_id FROM subscriptions ORDER BY subscription_id DESC limit 1").first.try(:subscription_id)
		if maxId.blank?
                    maxId = 0
                end

                self.subscription_id = maxId+1
        end
  end
  rails_admin do
   update do
 	field :subscription_id do
                label "Subscription ID"
                read_only true
                help ''
        end
        field :route  do
                label "Route"
                help 'Required'
        end
        field :run_sequence do
                label "Run sequence"
                help 'Required'
        end
        field :number  do
                label "Number"
                help 'Required'
        end
        field :run_sequence do
                label "Run sequence"
                help 'Required'
        end
        field :street do
                label "Street"
                help 'Required'
        end
        field :qty  do
                label "Qty"
                help 'Required'
        end
        field :qty_comp do
                label "Qty comp"
                help 'Required'
        end
        field :service_notes do
                label "Service notes"
                help 'Required'
        end
        field :last_name  do
                label "Last name"
                help 'Required'
        end
        field :first_name do
                label "First name"
                help 'Required'
        end
        field :phone_number do
                label "Phone number"
                help 'Required'
        end
        field :email  do
                label "Email"
                help 'Required'
        end
        field :city do
                label "City"
                help 'Required'
        end
        field :state  do
                label "State"
                help 'Required'
        end
        field :zip do
                label "Zip"
                help 'Required'
        end
        field :started_date, :date  do
                label "Started date"
                help 'Required'
        end
        field :last_letter_sent_date, :date do
                label "Last letter sent date"
                help 'Required'
        end
        field :renewal_x0020_grp  do
                label "Renewal x0020 grp"
                help 'Required'
        end
        field :sold_x0020_by do
                label "Sold x0020 by"
                help 'Required'
        end
        field :subscription_amount  do
                label "Subscription amount"
                help 'Required'
        end
        field :maint  do
                label "Maint"
                help 'Required'
        end
        field :subscription_notes  do
                label "Subscription notes"
                help 'Required'
        end
        field :renewal_due_date, :date do
                label "Renewal due date"
                help 'Required'
        end
        field :subscription_status  do
                label "Subscription status"
                help 'Required'
        end
        field :alternative_invoice  do
                label "Alternative invoice"
                help 'Required'
        end
        field :map_date, :date do
                label "Map date"
                help 'Required'
        end
   end
   show do
 	field :subscription_id do
                label "Subscription ID"
                read_only true
                help ''
        end
        field :route  do
                label "Route"
                help 'Required'
        end
        field :run_sequence do
                label "Run sequence"
                help 'Required'
        end
        field :number  do
                label "Number"
                help 'Required'
        end
        field :run_sequence do
                label "Run sequence"
                help 'Required'
        end
        field :street do
                label "Street"
                help 'Required'
        end
        field :qty  do
                label "Qty"
                help 'Required'
        end
        field :qty_comp do
                label "Qty comp"
                help 'Required'
        end
        field :service_notes do
                label "Service notes"
                help 'Required'
        end
        field :last_name  do
                label "Last name"
                help 'Required'
        end
        field :first_name do
                label "First name"
                help 'Required'
        end
        field :phone_number do
                label "Phone number"
                help 'Required'
        end
        field :email  do
                label "Email"
                help 'Required'
        end
        field :city do
                label "City"
                help 'Required'
        end
        field :state  do
                label "State"
                help 'Required'
        end
        field :zip do
                label "Zip"
                help 'Required'
        end
        field :started_date, :date  do
                label "Started date"
                help 'Required'
        end
        field :last_letter_sent_date, :date do
                label "Last letter sent date"
                help 'Required'
        end
        field :renewal_x0020_grp  do
                label "Renewal x0020 grp"
                help 'Required'
        end
        field :sold_x0020_by do
                label "Sold x0020 by"
                help 'Required'
        end
        field :subscription_amount  do
                label "Subscription amount"
                help 'Required'
        end
        field :maint  do
                label "Maint"
                help 'Required'
        end
        field :subscription_notes  do
                label "Subscription notes"
                help 'Required'
        end
        field :renewal_due_date, :date do
                label "Renewal due date"
                help 'Required'
        end
        field :subscription_status  do
                label "Subscription status"
                help 'Required'
        end
        field :alternative_invoice  do
                label "Alternative invoice"
                help 'Required'
        end
        field :map_date, :date do
                label "Map date"
                help 'Required'
        end
   end

   list do
 	field :subscription_id do
		sort_reverse false
                label "Subscription ID"
                read_only true
                help ''
        end
        field :route  do
                label "Route"
                help 'Required'
        end
        field :run_sequence do
                label "Run sequence"
                help 'Required'
        end
        field :number  do
                label "Number"
                help 'Required'
        end
        field :run_sequence do
                label "Run sequence"
                help 'Required'
        end
        field :street do
                label "Street"
                help 'Required'
        end
        field :qty  do
                label "Qty"
                help 'Required'
        end
        field :qty_comp do
                label "Qty comp"
                help 'Required'
        end
        field :service_notes do
                label "Service notes"
                help 'Required'
        end
        field :last_name  do
                label "Last name"
                help 'Required'
        end
        field :first_name do
                label "First name"
                help 'Required'
        end
        field :phone_number do
                label "Phone number"
                help 'Required'
        end
        field :email  do
                label "Email"
                help 'Required'
        end
        field :city do
                label "City"
                help 'Required'
        end
        field :state  do
                label "State"
                help 'Required'
        end
        field :zip do
                label "Zip"
                help 'Required'
        end
        field :started_date, :date  do
                label "Started date"
                help 'Required'
        end
        field :last_letter_sent_date, :date do
                label "Last letter sent date"
                help 'Required'
        end
        field :renewal_x0020_grp  do
                label "Renewal x0020 grp"
                help 'Required'
        end
        field :sold_x0020_by do
                label "Sold x0020 by"
                help 'Required'
        end
        field :subscription_amount  do
                label "Subscription amount"
                help 'Required'
        end
        field :maint  do
                label "Maint"
                help 'Required'
        end
        field :subscription_notes  do
                label "Subscription notes"
                help 'Required'
        end
        field :renewal_due_date, :date do
                label "Renewal due date"
                help 'Required'
        end
        field :subscription_status  do
                label "Subscription status"
                help 'Required'
        end
        field :alternative_invoice  do
                label "Alternative invoice"
                help 'Required'
        end
        field :map_date, :date do
                label "Map date"
                help 'Required'
        end
   end

   create do
 	field :subscription_id do
                label "Subscription ID"
                read_only true
                help ''
        end
        field :route  do
                label "Route"
                help 'Required'
        end
        field :run_sequence do
                label "Run sequence"
                help 'Required'
        end
        field :number  do
                label "Number"
                help 'Required'
        end
        field :run_sequence do
                label "Run sequence"
                help 'Required'
        end
        field :street do
                label "Street"
                help 'Required'
        end
        field :qty  do
                label "Qty"
                help 'Required'
        end
        field :qty_comp do
                label "Qty comp"
                help 'Required'
        end
        field :service_notes do
                label "Service notes"
                help 'Required'
        end
        field :last_name  do
                label "Last name"
                help 'Required'
        end
        field :first_name do
                label "First name"
                help 'Required'
        end
        field :phone_number do
                label "Phone number"
                help 'Required'
        end
        field :email  do
                label "Email"
                help 'Required'
        end
        field :city do
                label "City"
                help 'Required'
        end
        field :state  do
                label "State"
                help 'Required'
        end
        field :zip do
                label "Zip"
                help 'Required'
        end
        field :started_date, :date  do
                label "Started date"
                help 'Required'
        end
        field :last_letter_sent_date, :date do
                label "Last letter sent date"
                help 'Required'
        end
        field :renewal_x0020_grp  do
                label "Renewal x0020 grp"
                help 'Required'
        end
        field :sold_x0020_by do
                label "Sold x0020 by"
                help 'Required'
        end
        field :subscription_amount  do
                label "Subscription amount"
                help 'Required'
        end
        field :maint  do
                label "Maint"
                help 'Required'
        end
        field :subscription_notes  do
                label "Subscription notes"
                help 'Required'
        end
        field :renewal_due_date, :date do
                label "Renewal due date"
                help 'Required'
        end
        field :subscription_status  do
                label "Subscription status"
                help 'Required'
        end
        field :alternative_invoice  do
                label "Alternative invoice"
                help 'Required'
        end
        field :map_date, :date do
                label "Map date"
                help 'Required'
        end
   end
end
end
