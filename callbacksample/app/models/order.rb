class Order < ActiveRecord::Base
  has_many :line_item

  validates :total_price, numericality: true

  after_create :apply_discount, if: lambda { |order| order.discount? }

  def apply_discount
    Rails.logger.debug "about to apply discount"
    self.total_price = self.total_price * 0.95
    Rails.logger.debug "discount applied"
  end

  Order.transaction do
    Order.create
    sleep 10
    raise ActiveRecord::Rollback
  end
end
