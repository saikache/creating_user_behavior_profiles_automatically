class ChartsController < ApplicationController

  def index
  	@users = History.all
  end

  def show
  	id = params[:id]
	  frequency =	History.find(id).user_commands.pluck(:frequency)
	  commands =  History.find(id).user_commands.pluck(:uniq_command)
		@count = commands

		@employee = History.find(id)

		@h = LazyHighCharts::HighChart.new('graph') do |f|
		  f.options[:chart][:defaultSeriesType] = "area"
		  f.series(:name=>"#{@employee.user_name.capitalize}", :data=> frequency)
		  f.xAxis(:categories => commands , :labels=>{:rotation=>-45 , :align => 'right'})
			# *************************
			 arr = []
			 @uq = History.find(id).user_commands
			 @uq.each do | c |
		 		h = {}
		 		h[:name] = c.uniq_command
		 		h[:y]  = c.frequency
		 		arr << h
			end
		 
			studentiOcjenePieChartData = arr
			studentiOcjenePieChartName = "#{@employee.user_name.capitalize}"
			studentiOcjenePieChartTitle = ""	
			@pie = LazyHighCharts::HighChart.new('graph') do |f|

				f.options[:chart][:defaultSeriesType] = "pie"
				f.options[:title][:text] = studentiOcjenePieChartTitle
				f.options[:chart][:renderTo] = 'container'
				f.options[:chart][:plotBackgroundColor] = '#f6f6f6'
				f.options[:chart][:plotBorderWidth] = nil
				f.options[:chart][:plotShadow] = false
				f.options[:tooltip][:percentageDecimals] = 1
				f.plotOptions(:pie => { :allowPointSelect => true })
				f.plotOptions(:pie => { :cursor => :pointer })
				f.plotOptions(:pie => { :dataLabels => { :enabled => true} } )
				f.plotOptions(:pie => { :dataLabels => { :color => '#000000' } })
				f.plotOptions(yAxis: {min: 0,title: {text: 'Population (millions)',align: 'high'},labels: {overflow: 'justify'}})
				f.series(:name =>studentiOcjenePieChartName, :data => studentiOcjenePieChartData)
			end
		end
	end
end
