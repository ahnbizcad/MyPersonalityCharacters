# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#
# Socionics Types
#                    0      1       2       3     4     5     6    7      8     9    10     11         12           13            14         15
socionics_neti = ["ENTp", "ILE", "Ne-Ti", "Ne", "Ti", "Se", "Fi", "Si", "Fe", "Ni", "Te", "alpha", "infantile", "researchers",   "EP", "firm",        ]
socionics_sife = ["ISFp", "SEI", "Si-Fe", "Si", "Fe", "Ni", "Te", "Ne", "Ti", "Se", "Fi", "alpha", "caregiver", "socials",       "IP", "sincere",     ]
socionics_fesi = ["ESFj", "ESE", "Fe-Si", "Fe", "Si", "Te", "Ni", "Ti", "Ne", "Fi", "Se", "alpha", "caregiver", "socials",       "EJ", "passionate",  ]
socionics_tine = ["INTj", "LII", "Ti-Ne", "Ti", "Ne", "Fi", "Se", "Fe", "Si", "Te", "Ni", "alpha", "infantile", "researchers",   "IJ", "cold-blooded",]

socionics_feni = ["ENFj", "EIE", "Fe-Ni", "Fe", "Ni", "Te", "Si", "Ti", "Se", "Fi", "Ne", "beta",  "victim",    "humanitarians", "EJ", "passionate",  ]
socionics_tise = ["ISTj", "LSI", "Ti-Se", "Ti", "Se", "Fi", "Ne", "Fe", "Ni", "Te", "Si", "beta",  "aggressor", "pragmatists",   "IJ", "cold-blooded",]
socionics_seti = ["ESTp", "SLE", "Se-Ti", "Se", "Ti", "Ne", "Fi", "Ni", "Fe", "Si", "Te", "beta",  "aggressor", "pragmatists",   "EP", "firm",        ]
socionics_nife = ["INFp", "IEI", "Ni-Fe", "Ni", "Fe", "Si", "Te", "Se", "Ti", "Ne", "Fi", "beta",  "victim",    "humanitarians", "IP", "sincere",     ]

socionics_sefi = ["ESFp", "SEE", "Se-Fi", "Se", "Fi", "Ne", "Ti", "Ni", "Te", "Si", "Fe", "gamma", "aggressor", "socials",       "EP", "passionate",  ]
socionics_nite = ["INTp", "ILI", "Ni-Te", "Ni", "Te", "Si", "Fe", "Se", "Fi", "Ne", "Ti", "gamma", "victim",    "researchers",   "IP", "cold-blooded",]
socionics_teni = ["ENTj", "LIE", "Te-Ni", "Te", "Ni", "Fe", "Si", "Fi", "Se", "Ti", "Ne", "gamma", "victim",    "researchers",   "EJ", "firm",        ]
socionics_fise = ["ISFj", "ESI", "Se-Fi", "Fi", "Se", "Ti", "Ne", "Te", "Ni", "Fe", "Si", "gamma", "aggressor", "socials",       "IJ", "sincere",     ]

socionics_tesi = ["ESTj", "LSE", "Te-Si", "Te", "Si", "Fe", "Ni", "Fi", "Ne", "Ti", "Se", "delta", "caregiver", "pragmatists",   "EJ", "firm",        ]
socionics_fine = ["INFJ", "EII", "Fi-Ne", "Fi", "Ne", "Ti", "Se", "Te", "Si", "Fe", "Ni", "delta", "infantile", "humanitarians", "IJ", "sincere",     ]
socionics_nefi = ["ENFp", "IEE", "Ne-Fi", "Ne", "Fi", "Se", "Ti", "Si", "Te", "Ni", "Fe", "delta", "infantile", "humanitarians", "EP", "passionate",  ]
socionics_site = ["ISTp", "SLI", "Si-Te", "Si", "Te", "Ni", "Fe", "Ne", "Fi", "Se", "Ti", "delta", "caregiver", "pragmatists",   "IP", "cold-blooded",]

socionics_types = [socionics_neti,
									 socionics_sife,
									 socionics_fesi,
									 socionics_tine,

									 socionics_feni,
									 socionics_tise,
									 socionics_seti,
									 socionics_nife,

									 socionics_sefi,
									 socionics_nite,
									 socionics_teni,
									 socionics_fise,

									 socionics_tesi,
									 socionics_fine,
									 socionics_nefi,
									 socionics_site]

def socionics_type_factory(socionics_types)
	socionics_types.each do |type|
		SocionicsType.create(type_four_letter:    type[0], 
												 type_three_letter:   type[1], 
												 type_two_im:         type[2], 
												 im_1st:              type[3], 
												 im_2nd:              type[4], 
												 im_3rd:              type[5], 
												 im_4th:              type[6], 
												 im_5th:              type[7], 
												 im_6th:              type[8], 
												 im_7th:              type[9], 
												 im_8th:              type[10], 
												 quadra:              type[11], 
												 romance_style:       type[12],
												 club:                type[13], 
												 temperament:         type[14], 
												 communication_style: type[15],
												 )
	end
end

socionics_type_factory(socionics_types)

#												 e:                   type[16],
												 #n:                   type[17],
												 #t:                   type[18],
												 #p:                   type[19],
												 #en:                  type[20],
												 #et:                  type[21],
												 #ep:                  type[22],
												 #nt:                  type[23],
												 #np:                  type[24],
												 #tp:                  type[25],
												 #ent:                 type[26],
												 #enp:                 type[27],
												 #etp:                 type[28],
												 #ntp:                 type[29],
												 #entp:                type[30]