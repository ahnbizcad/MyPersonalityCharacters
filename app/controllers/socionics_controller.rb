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
	def neti
		@socionics_type = SocionicsType.find_by(type_two_im: 'Ne-Ti')
	end

	def sife
		@socionics_type = SocionicsType.find_by(type_two_im: 'Si-Fe')
	end

	def fesi
		@socionics_type = SocionicsType.find_by(type_two_im: 'Fe-Si')
	end

	def tine
		@socionics_type = SocionicsType.find_by(type_two_im: 'Ti-Ne')
	end

# Beta quadra.
	def feni
		@socionics_type = SocionicsType.find_by(type_two_im: 'Fe-Ni')
	end

	def tise
		@socionics_type = SocionicsType.find_by(type_two_im: 'Ti-Se')
	end

	def seti
		@socionics_type = SocionicsType.find_by(type_two_im: 'Se-Ti')
	end

	def nife
		@socionics_type = SocionicsType.find_by(type_two_im: 'Ni-Fe')
	end

# Gamma quadra.
	def sefi
		@socionics_type = SocionicsType.find_by(type_two_im: 'Se-Fi')
	end

	def nite
		@socionics_type = SocionicsType.find_by(type_two_im: 'Ni-Te')
	end

	def teni
		@socionics_type = SocionicsType.find_by(type_two_im: 'Te-Ni')
	end

	def fise
		@socionics_type = SocionicsType.find_by(type_two_im: 'Fi-Se')
	end

# Delta quadra.
	def tesi
		@socionics_type = SocionicsType.find_by(type_two_im: 'Te-Si')
	end

	def fine
		@socionics_type = SocionicsType.find_by(type_two_im: 'Fi-Ne')
	end

	def nefi
		@socionics_type = SocionicsType.find_by(type_two_im: 'Ne-Fi')
	end

	def site
		@socionics_type = SocionicsType.find_by(type_two_im: 'Si-Te')
	end

	private
		def set_socionics_types
			@socionics_types = SocionicsType.all
		end

end
