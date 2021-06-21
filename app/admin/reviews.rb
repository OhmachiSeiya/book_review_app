ActiveAdmin.register Review do
  permit_params :title, :published, :author, :category_id, :score, :content

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :published, :author, :category_id, :score, :content
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :published, :author, :category_id, :score, :content]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
