Rails.application.routes.draw do
  devise_for :users, :controllers => {:omniauth_callbacks => "omniauth_callbacks"}
  root to: "home#index"


  #https://nerdmetric.com/auth/linkedin/callback?code=AQRvm0Wzj2wy9YNGkSf83u0cQJGpPSBnsOtyNUFYfem4tQyQ1bzhpeqt0KMmyfH2GhTDAg_pM2408EYiYuyO23HgOHmS48a5M6wmPAsZMk6h49XtBE90YNaSWRhvKucneEOFWB54-p4y2CXlnABP3pIO3HnXHU0z6ZHAx3qzxBwM3A-tOBPYByPjSF9KDA&state=asdklfj1287891uaksjdf
  get "linkedin", to: redirect("https://www.linkedin.com/oauth/v2/authorization?response_type=code&client_id=77ryjms0kwm5b1&state=asdklfj1287891uaksjdf&scope=r_liteprofile%20r_emailaddress%20w_member_social&redirect_uri=https://nerdmetric.com/auth/linkedin/callback")

end
