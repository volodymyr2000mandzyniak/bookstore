class Admin::CategoriesController < Admin::AdminController
   before_action :set_category, only: [:edit, :update, :destroy]
    
   def index
        @categories = Category.all
   end
    
   def new
      @category = Category.new
      @categories = Category.all.order(:name)  
   end
    
   def create
      @category = Category.new(category_params)
      if @category.save
          redirect_to admin_categories_path, success: 'Успішно добавлено'
      else
         @category = Category.all.order(:name)  
         render :new, success: 'Категорію не створино'
      end
   end
    
   def edit
      @categories = Category.where("id != #{@category.id}").order(:name)  
   end
    
   def update
      if @category.update(category_params)
         redirect_to admin_categories_path, info: 'Оновленно!'
      else
         @categories = Category.where("id != #{@category.id}").order(:name)  
         render :edit, danger: 'Оновлення не вдалось!'
      end
   end
    
   def destroy
      @category.destroy
      redirect_to categories_path, success: 'Категорію успішно видалено'			
   end
        
   private
            
   def set_category
      @category = Category.find(params[:id]) 
   end
    
   def category_params
      params.require(:category).permit(:name, :parent_id)			
   end
end
