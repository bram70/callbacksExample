require 'rails_helper'

describe Order do
  it "should discount 5% when " do
    order =  create(:order)
    expects(order).to eq(95)
  end
end
