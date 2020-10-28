class DocsController < ApplicationController

    def index
    end

    def show
    end

    def new
        @doc = Doc.new
    end

    def create
        @doc = Doc.new(docs_params)

        if @doc.save
            redirect_to @doc 
        else 
            render 'new'
        end

    end

    def update
    end

    def edit
    end

    def destroy
    end

    private
        def find_doc
        end

        def docs_params
            params.require(:doc).permit(:title, :content)
        end
end
