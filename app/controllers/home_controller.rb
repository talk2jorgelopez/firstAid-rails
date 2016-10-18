class HomeController < ApplicationController
	def index

	end

	def how_to
		@how_tos = HowTo.all
	end

	def survival_guide
		@survival_guides = SurvivalGuide.all
	end

	def palliative_care
		@palliative_cares = PalliativeCare.all
	end

end
