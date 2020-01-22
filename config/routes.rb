Rails.application.routes.draw do
  
  [:songs,:artists,:generes].each do |model|
    resources model, only: [:index,:show,:new,:create,:edit,:update]
  end
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
