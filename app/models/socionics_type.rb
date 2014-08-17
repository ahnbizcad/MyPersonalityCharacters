# == Schema Information
#
# Table name: socionics_types
#
#  id                  :integer          not null, primary key
#  im_1st              :string(255)
#  im_2nd              :string(255)
#  im_3rd              :string(255)
#  im_4th              :string(255)
#  im_5th              :string(255)
#  im_6th              :string(255)
#  im_7th              :string(255)
#  im_8th              :string(255)
#  quadra              :string(255)
#  club                :string(255)
#  temperament         :string(255)
#  communication_style :string(255)
#  romance_style       :string(255)
#  type_four_letter    :string(255)
#  type_three_letter   :string(255)
#  type_two_im         :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  type_two_im_raw     :string(255)
#

class SocionicsType < ActiveRecord::Base	
	has_many :users
	has_many :characters
	has_many :celebrities
	
	scope :in_order, all.order(:id)

	def reinin_e
		if type_four_letter_downcase[0] == "e"
			"extraverted"
		else
			"introverted"
		end
	end

	def reinin_n
		if type_four_letter_downcase[1] == "n"
			"intuitive"
		else
			"sensing"
		end
	end

	def reinin_t
		if type_four_letter_downcase[2] == "t"
			"thinking"
		else
			"feeling"
		end
	end

	def reinin_p
		if type_four_letter_downcase[3] == "p"
			"perceiving"
		else
			"judging"
		end
	end

	def reinin_en
		positive = type_four_letter_downcase[0] == "e"
		second 	 = type_four_letter_downcase[1] == "n"
		positive = xnor positive second

		if (positive == true)
			"carefree"
		else
			"farsighted"
		end
	end

	def reinin_et
		positive = type_four_letter_downcase[0] == "e"
		second 	 = type_four_letter_downcase[2] == "t"
		positive = xnor positive second

		if (positive == true)
			"yielding"
		else
			"obstinate"
		end
	end

	def reinin_ep
		positive = type_four_letter_downcase[0] == "e"
		second 	 = type_four_letter_downcase[3] == "p"
		positive = xnor positive second

		if (positive == true)
			"static"
		else
			"dynamic"
		end
	end

	def reinin_nt
		positive = type_four_letter_downcase[1] == "n"
		second 	 = type_four_letter_downcase[2] == "t"
		positive = xnor positive second

		if (positive == true)
			"democratic"
		else
			"aristocratic"
		end
	end

	def reinin_np
		positive = type_four_letter_downcase[1] == "n"
		second 	 = type_four_letter_downcase[3] == "p"
		positive = xnor positive second

		if (positive == true)
			"tactical"
		else
			"strategic"
		end
	end

	def reinin_tp
		positive = type_four_letter_downcase[2] == "t"
		second 	 = type_four_letter_downcase[3] == "p"
		positive = xnor positive second

		if (positive == true)
			"constructivist"
		else
			"emotivist"
		end
	end

	def reinin_ent
		positive = type_four_letter_downcase[0] == "e"
		second 	 = type_four_letter_downcase[1] == "n"
		positive = xnor positive second
		@third 	 = type_four_letter_downcase[2] == "t"
		positive = xnor positive @third

		if (positive == true)
			"positivist"
		else
			"negativist"
		end
	end

	def reinin_enp
		positive = type_four_letter_downcase[0] == "e"
		second 	 = type_four_letter_downcase[1] == "n"
		positive = xnor positive second
		@third 	 = type_four_letter_downcase[3] == "p"
		positive = xnor positive @third

		if (positive == true)
			"judicious"
		else
			"decisive"
		end
	end

	def reinin_etp
		positive = type_four_letter_downcase[0] == "e"	
		second 	 = type_four_letter_downcase[2] == "t"
		positive = xnor positive second
		@third 	 = type_four_letter_downcase[3] == "p"
		positive = xnor positive @third

		if (positive == true)
			"merry"
		else
			"serious"
		end
	end

	def reinin_ntp
		positive = type_four_letter_downcase[1] == "n"
		second 	 = type_four_letter_downcase[2] == "t"
		positive = xnor positive second
		@third 	 = type_four_letter_downcase[3] == "p"
		positive = xnor positive @third

		if (positive == true)
			"process"
		else
			"result"
		end
	end

	def reinin_entp
		positive = type_four_letter_downcase[0] == "e"
		second 	 = type_four_letter_downcase[1] == "n"
		positive = xnor positive second
		@third 	 = type_four_letter_downcase[2] == "t"
		positive = xnor positive @third
		@fourth  = type_four_letter_downcase[3] == "p"
		positive = xnor positive @fourth

		if (positive == true)
			"asking"
		else
			"declaring"
		end
	end

	private
		def type_four_letter_downcase
			self.type_four_letter.downcase
		end

		def xnor(bool1, bool2)
			!(bool1 ^ bool2)
		end
end
