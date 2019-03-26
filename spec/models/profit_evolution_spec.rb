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

require 'rails_helper'

RSpec.describe ProfitEvolution, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
