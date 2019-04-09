class IdentifiersController < InheritedResources::Base


  def edit
    
    @identifier = Identifier.find(params[:id])
    begin
      @name = "#{@identifier.identifiable_type}".constantize.find(@identifier.identifiable_id).name 
    rescue
      'Not provided.'
    end

  end


  def show
  	@identifier = Identifier.find(params[:id])
    @parent = @identifier.identifiable_type.constantize
    begin   
      @name = @parent.find(@identifier.identifiable_id).name
    rescue
      @name = @parent.find(@identifier.identifiable_id).first_name
      @name += ' '
      @name += @parent.find(@identifier.identifiable_id).last_name
    end
  end


  private

    def identifier_params
      params.require(:identifier).permit(:id, :identifiable_type, :identifiable_id, :name, :value, :rank)
    end
end

