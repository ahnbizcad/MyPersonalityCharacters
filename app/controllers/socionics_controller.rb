class SocionicsController < ApplicationController
	before_action 

	def index
	end

# Information elements.
	def information_elements
	end

	def si
	end

	def se
	end

	def ni
	end

	def ne
	end

	def ti
	end

	def te
	end

	def fi
	end

	def fe
	end

# Functions.
	def functions
	end

	def function_dichotomies
	end

# Dichotomies.
	def dichotomies
	end

	def jungian_dichotomies
	end

	def reinin_dichotomies
	end

# Small Groups.
	def small_groups
	end

	def quadra
	end

	def clubs
	end

	def temperaments
	end

	def communication_styles
	end

	def romance_styles
	end

# Types

# Alpha quadra.
	def ENTp
	end

	def ISFp
	end

	def ESFj
	end

	def INTj
	end

# Beta quadra.
	def ENFj
	end

	def ISTj
	end

	def ESTp
	end

	def INFp
	end

# Gamma quadra.
	def ESFp
	end

	def INTp
	end

	def ENTj
	end

	def ISFj
	end

# Delta quadra.
	def ESTj
	end

	def INFj
	end

	def ENFp
	end

	def ISTp
	end

	private
		def get_socionics_types
			@socionics_types = Socionics
		end

end
