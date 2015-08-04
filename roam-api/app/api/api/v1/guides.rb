module API
	module V1
		class Guides < Grape::API
			include API::V1::Defaults

			resource :guides do
				desc "Return all guides"

				get "", root: :guides do
					Guide.all
				end
			end
		end
	end
end