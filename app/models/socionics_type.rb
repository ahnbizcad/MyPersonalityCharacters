class SocionicsType < ActiveRecord::Base

def reinin_e
end

def reinin_n
end

def reinin_t
end

def reinin_p
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
		"carefree"
	else
		"farsighted"
	end
end

def reinin_nt
	positive = type_four_letter_downcase[1] == "n"
	second 	 = type_four_letter_downcase[2] == "t"
	positive = xnor positive second

	if (positive == true)
		"carefree"
	else
		"farsighted"
	end
end

def reinin_np
	positive = type_four_letter_downcase[1] == "n"
	second 	 = type_four_letter_downcase[3] == "p"
	positive = xnor positive second

	if (positive == true)
		"carefree"
	else
		"farsighted"
	end
end

def reinin_tp
	positive = type_four_letter_downcase[2] == "t"
	second 	 = type_four_letter_downcase[3] == "p"
	positive = xnor positive second

	if (positive == true)
		"carefree"
	else
		"farsighted"
	end
end

def reinin_ent
	positive = type_four_letter_downcase[0] == "e"
	second 	 = type_four_letter_downcase[1] == "n"
	positive = xnor positive second
	@third 	 = type_four_letter_downcase[2] == "t"
	positive = xnor positive @third

	if (positive == true)
		"carefree"
	else
		"farsighted"
	end
end

def reinin_enp
	positive = type_four_letter_downcase[0] == "e"
	second 	 = type_four_letter_downcase[1] == "n"
	positive = xnor positive second
	@third 	 = type_four_letter_downcase[3] == "p"
	positive = xnor positive @third

	if (positive == true)
		"carefree"
	else
		"farsighted"
	end
end

def reinin_etp
	positive = type_four_letter_downcase[0] == "e"	
	second 	 = type_four_letter_downcase[2] == "t"
	positive = xnor positive second
	@third 	 = type_four_letter_downcase[3] == "p"
	positive = xnor positive @third

	if (positive == true)
		"carefree"
	else
		"farsighted"
	end
end

def reinin_ntp
	positive = type_four_letter_downcase[1] == "n"
	second 	 = type_four_letter_downcase[2] == "t"
	positive = xnor positive second
	@third 	 = type_four_letter_downcase[3] == "p"
	positive = xnor positive @third

	if (positive == true)
		"carefree"
	else
		"farsighted"
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
		"carefree"
	else
		"farsighted"
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
