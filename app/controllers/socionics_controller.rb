class SocionicsController < ApplicationController

	def index
		set_socionics_types
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

# Intertype Relations
	def intertype_relations
	end

# Types
# Alpha quadra.
	def entp
		@socionics_type = SocionicsType.find_by(type_four_letter: 'ENTp')
		render 'socionics/types/entp'
	end

	def isfp
		@socionics_type = SocionicsType.find_by(type_four_letter: 'ISFp')
	end

	def esfj
	end

	def intj
	end

# Beta quadra.
	def enfj
	end

	def istj
	end

	def estp
	end

	def infp
	end

# Gamma quadra.
	def esfp
	end

	def intp
	end

	def entj
	end

	def isfj
	end

# Delta quadra.
	def estj
	end

	def infj
	end

	def enfp
	end

	def istp
	end

	private
		def set_socionics_types
			@socionics_types = SocionicsType.all
		end

end
