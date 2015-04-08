# spec/factories/subscription.rb
FactoryGirl.define do
  factory :sub do |s|
    s.subscription_id 1
    s.route_id 2
    #s.run_sequence literally what
    s.number 42
    s.street 'Wallaby Way'
    s.qty 69
    #s.qty_comp
    s.last_name 'Sherman'
    s.first_name 'P.'
    s.phone_numer '867-5309'
    s.email 'hunter2@yahoo.com'
    s.city 'Sydney'
    s.state 'Australia'
    s.zip 11111
    s.started_date '06/09/2012'
    #s.last_letter_sent_date
    #s.renewal_x0020_grp
    s.sold_x0020_By 'Donkey Kong'
    s.subscription_amount 30
    #s.maint
    s.renewal_due_date '06/09/2013'
    s.subscription_status 'Valid'
    #s.alternative_invoice
    #s.map_date
  end
end