# == Schema Information
#
# Table name: profit_evolutions
#
#  id             :bigint(8)        not null, primary key
#  marketing_cost :decimal(16, 4)
#  revenue        :decimal(16, 4)
#  supplier_cost  :decimal(16, 4)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryBot.define do
  factory :profit_evolution do
    revenue { "9.99" }
    supplier_cost { "9.99" }
    marketing_cost { "9.99" }
  end
end
