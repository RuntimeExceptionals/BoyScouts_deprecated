class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: [:show, :edit, :update, :destroy]

  # GET /subscriptions
  # GET /subscriptions.json
  def index
    @subscriptions = Subscription.all
  end

  # GET /subscriptions/1
  # GET /subscriptions/1.json
  def show
  end

  # GET /subscriptions/new
  def new
    @subscription = Subscription.new
  end

  # GET /subscriptions/1/edit
  def edit
  end

  # POST /subscriptions
  # POST /subscriptions.json
  def create
    @subscription = Subscription.new(subscription_params)

    respond_to do |format|
      if @subscription.save
        format.html { redirect_to @subscription, notice: 'Subscription was successfully created.' }
        format.json { render :show, status: :created, location: @subscription }
      else
        format.html { render :new }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subscriptions/1
  # PATCH/PUT /subscriptions/1.json
  def update
    respond_to do |format|
      if @subscription.update(subscription_params)
        format.html { redirect_to @subscription, notice: 'Subscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @subscription }
      else
        format.html { render :edit }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscriptions/1
  # DELETE /subscriptions/1.json
  def destroy
    @subscription.destroy
    respond_to do |format|
      format.html { redirect_to subscriptions_url, notice: 'Subscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def generate_invoice
      @subscription = Subscription.find(params[:id])
  end

  def generate_invoices
    subscriptions = Subscription.all()
    today = Date.today()
    invoices = []
    subscriptions.each do |sub|
       needs_invoice = true
       payment = SubscriptionPayment.find_by_subscription_id(sub.subscription_id)
       if payment.respond_to?("each")
           payments.each do |payment|
             if today < payment.good_till
               needs_invoice = false
             end
           end
       elsif payment.blank?
         needs_invoice = true
       else
         if today < payment.good_till
           needs_invoice = false
         end
       end

      if needs_invoice
        invoices.append(sub)
      end
    end

    @subscriptions = invoices
    @today = Date.today()
  end


  def download_invoices_as_pdf

    site_root_url = root_url
    if site_root_url includes "https"
      site_root_url.sub! 'https', 'http'
    end

    kit = PDFKit.new("#{site_root_url}subscriptions/generate_invoices", :page_size => 'Letter', :orientation=>'Portrait');
    pdf = kit.to_pdf
    send_data(pdf, :filename => "consolidated_invoices.pdf",  :type => "application/pdf")
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscription
      @subscription = Subscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscription_params
      params.require(:subscription).permit(:subscription_id, :route_id, :run_sequence, :number, :street, :qty, :qty_comp, :service_notes, :last_name, :first_name, :phone_number, :email, :city, :state, :zip, :started_date, :last_letter_sent_date, :renewal_x0020_grp, :sold_x0020_By, :subscription_amount, :maint, :subscription_notes, :renewal_due_date, :subscription_status, :alternative_invoice, :map_date)
    end
end
