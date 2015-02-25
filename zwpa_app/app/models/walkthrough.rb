class Walkthrough < ActiveRecord::Base
	
	# Relationships
	belongs_to :request

	# Validations
	validates_presence_of :request_id
	validates_numericality_of :square_footage, only_integer: true, greater_than_or_equal_to: 0
	validates_numericality_of :num_floors, only_integer: true, greater_than_or_equal_to: 0
	validates_numericality_of :max_occupancy, only_integer: true, greater_than_or_equal_to: 0

	validates_inclusion_of :other_businesses, in: %w[Yes No DK]
	validates_inclusion_of :ownership, in: %w[Own Lease]
	validates_inclusion_of :waste_disposal_contract, in: %w[Yes No DK]
	validates_inclusion_of :waste_management_cost, in: %w[Yes No DK]
	validates_inclusion_of :loading_dock, in: %w[Yes No DK]
	validates_inclusion_of :freight_elevators, in: %w[Yes No DK]
	validates_inclusion_of :storage_space, in: %w[Yes No]
	validates_inclusion_of :trash_hauler_contract, in: %w[Yes No DK]
	validates_inclusion_of :contract_available, in: %w[Yes No DK]
	validates_inclusion_of :annual_record, in: %w[Yes No DK]
	validates_inclusion_of :waste_containers, in: %w[Dumpster Roll-off Other]
	validates_inclusion_of :buy_recycled, in: %w[Yes No DK]
	validates_inclusion_of :green_cleaning_products, in: %w[Yes No DK]
	validates_inclusion_of :mandated_recycling, in: %w[Yes No DK]
	validates_inclusion_of :recycling_program, in: %w[Yes No DK]
	validates_inclusion_of :recycling_stream, in: %w[Yes No DK]
	validates_inclusion_of :current_compost, in: %w[Yes No DK]
	# past_compost

	validates_inclusion_of :generate_toner_ink, in: %w[Yes No DK]
	validates_inclusion_of :recycle_toner_ink, in: %w[Yes No DK]
	validates_inclusion_of :generate_CFLs, in: %w[Yes No DK]
	validates_inclusion_of :recycle_CFLs, in: %w[Yes No DK]
	validates_inclusion_of :generate_batteries, in: %w[Yes No DK]
	validates_inclusion_of :recycle_batteries, in: %w[Yes No DK]
	validates_inclusion_of :generate_computers, in: %w[Yes No DK]
	validates_inclusion_of :recycle_computers, in: %w[Yes No DK]
	validates_inclusion_of :generate_cellphones, in: %w[Yes No DK]
	validates_inclusion_of :recycle_cellphones, in: %w[Yes No DK]
	validates_inclusion_of :generate_tvs, in: %w[Yes No DK]
	validates_inclusion_of :recycle_tvs, in: %w[Yes No DK]
	validates_inclusion_of :generate_other_corded_equipment, in: %w[Yes No DK]
	# need recycle other corded equipment

	validates_inclusion_of :generate_furniture, in: %w[Yes No DK]
	validates_inclusion_of :recycle_furniture, in: %w[Yes No DK]
	validates_inclusion_of :generate_linens_uniforms, in: %w[Yes No DK]
	validates_inclusion_of :recycle_linens_uniforms, in: %w[Yes No DK]
	validates_inclusion_of :generate_construction_debris, in: %w[Yes No DK]
	validates_inclusion_of :recycle_construction_debris, in: %w[Yes No DK]
	validates_inclusion_of :generate_pallets, in: %w[Yes No DK]
	validates_inclusion_of :recycle_pallets, in: %w[Yes No DK]

	validates_inclusion_of :ZW_policy, in: %w[Yes No DK]
	validates_inclusion_of :LEED, in: %w[Yes No DK]
	validates_inclusion_of :recertify_LEED, in: %w[Yes No DK]
	validates_inclusion_of :requesting_audit_services, in: %w[Yes No DK]


end
