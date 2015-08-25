class Order < ActiveRecord::Base
  has_many :line_item

  validates :total_price, numericality: true

  before_create :apply_discount, if: lambda { |order| order.discount? }

  def apply_discount
    self.total_price = self.total_price * 0.95
  end
end
