class SurveyResultsController < ApplicationController
  # GET /survey_results
  # GET /survey_results.json
  def index
    @survey_results = SurveyResult.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @survey_results }
    end
  end

  # GET /survey_results/1
  # GET /survey_results/1.json
  def show
    @survey_result = SurveyResult.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @survey_result }
    end
  end

  # GET /survey_results/new
  # GET /survey_results/new.json
  def new
    @survey_result = SurveyResult.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @survey_result }
    end
  end

  # GET /survey_results/1/edit
  def edit
    @survey_result = SurveyResult.find(params[:id])
  end

  # POST /survey_results
  # POST /survey_results.json
  def create
    @survey_result = SurveyResult.new(params[:survey_result])

    respond_to do |format|
      if @survey_result.save
        format.html { redirect_to @survey_result, notice: 'Survey result was successfully created.' }
        format.json { render json: @survey_result, status: :created, location: @survey_result }
      else
        format.html { render action: "new" }
        format.json { render json: @survey_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /survey_results/1
  # PUT /survey_results/1.json
  def update
    @survey_result = SurveyResult.find(params[:id])

    respond_to do |format|
      if @survey_result.update_attributes(params[:survey_result])
        format.html { redirect_to @survey_result, notice: 'Survey result was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @survey_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_results/1
  # DELETE /survey_results/1.json
  def destroy
    @survey_result = SurveyResult.find(params[:id])
    @survey_result.destroy

    respond_to do |format|
      format.html { redirect_to survey_results_url }
      format.json { head :no_content }
    end
  end
end
