class Schedule < ApplicationRecord
    scope :is_after, lambda {|start_date| where("start >= ? AND confirmed=true", start_date )}
end
