class TabelsController <ApplicationController

	def index
		@tabel = Tabel.all.order('created_at DESC')

	end
	
	def new
		@tabel = Tabel.new
	end
	def create 
		@tabel = Tabel.create(tabel_params)
		if @tabel.save
			flash[:notice] = 'Tabel Created'
			redirect_to tabels_path
		else
			render 'new'
		end
	end



	def show
		@tabel= Tabel.find(params[:id])
	end


	def edit 
		@tabel= Tabel.find(params[:id])

	end

    def update
    	@tabel= Tabel.find(params[:id])
    	if @tabel.update(tabel_params)
    		flash[:notice] = "Tabel Updated"
    		redirect_to tabels_path
    	else
    		render 'edit'
    	end
    end


    def destroy
    	@tabel= Tabel.find(params[:id])
    	@tabel.destroy
    	redirect_to tabels_path
    end




private
def tabel_params
	params.require(:tabel).permit(:number)


end

end