'use strict'

angular.module('app.chart.ctrls', [])

.controller('chartCtrl', [
    '$scope'
    ($scope) ->
        
        $scope.easypiechartsm1 = 
            percent: 63
            options:
                animate:
                    duration: 1000
                    enabled: true
                barColor: $scope.color.success
                lineCap: 'round'
                size: 120
                lineWidth: 5
        $scope.easypiechartsm2 = 
            percent: 35
            options:
                animate:
                    duration: 1000
                    enabled: true
                barColor: $scope.color.danger
                lineCap: 'round'
                size: 120
                lineWidth: 5
        $scope.easypiechartsm3 = 
            percent: 75
            options:
                animate:
                    duration: 1000
                    enabled: true
                barColor: $scope.color.primary
                lineCap: 'round'
                size: 120
                lineWidth: 5
        $scope.easypiechartsm4 = 
            percent: 66
            options:
                animate:
                    duration: 1000
                    enabled: true
                barColor: $scope.color.warning
                lineCap: 'round'
                size: 120
                lineWidth: 5

        $scope.easypiechart = 
            percent: 65
            options:
                animate:
                    duration: 1000
                    enabled: true
                barColor: $scope.color.primary
                lineCap: 'round'
                size: 180
                lineWidth: 5

        $scope.easypiechart2 = 
            percent: 35
            options:
                animate:
                    duration: 1000
                    enabled: true
                barColor: $scope.color.success
                lineCap: 'round'
                size: 180
                lineWidth: 10

        $scope.easypiechart3 = 
            percent: 68
            options:
                animate:
                    duration: 1000
                    enabled: true
                barColor: $scope.color.info
                lineCap: 'square'
                size: 180
                lineWidth: 20
                scaleLength: 0


        # Note: the online documentation of Gauge is outdated, thanks to https://github.com/bernii/gauge.js/Crafties/47
        # Note2: it's not responsive
        $scope.gaugeChart1 =
            data:
                maxValue: 6000
                animationSpeed: 40
                val: 1375
            options:
                lines: 12
                angle: 0
                lineWidth: 0.47
                pointer:
                    length: 0.6
                    strokeWidth: 0.03
                    color: '#000000'
                limitMax: 'false'
                # colorStart: '#A3C86D'
                # colorStop: '#A3C86D',
                strokeColor: '#E0E0E0'
                generateGradient: true
                percentColors: [
                    [0.0, $scope.color.success]
                    [1.0, $scope.color.success]
                ]

        $scope.gaugeChart2 =
            data:
                maxValue: 3000
                animationSpeed: 45
                val: 2100
            options:
                lines: 12
                angle: 0
                lineWidth: 0.47
                pointer:
                    length: 0.6
                    strokeWidth: 0.03
                    color: '#464646'
                limitMax: 'true'
                colorStart: '#87BA01'
                colorStop: '#87BA01',
                strokeColor: '#F1F1F1'
                generateGradient: true
                percentColors: [
                    [0.0, $scope.color.info]
                    [1.0, $scope.color.info]
                ]

        $scope.gaugeChart3 =
            data:
                maxValue: 3000
                animationSpeed: 50
                val: 457
            options:
                lines: 12
                angle: 0
                lineWidth: 0.47
                pointer:
                    length: 0.6
                    strokeWidth: 0.03
                    color: '#464646'
                limitMax: 'true'
                colorStart: '#FF7857'
                colorStop: '#FF7857',
                strokeColor: '#F1F1F1'
                generateGradient: true
                percentColors: [
                    [0.0, $scope.color.danger]
                    [1.0, $scope.color.danger]
                ] 

])
.controller('morrisChartCtrl', [
    '$scope'
    ($scope) ->
    
    
        mainData = [
            {month: '2014-01', ale: 294000, ipa: 136000, porter: 244000}
            {month: '2014-02', ale: 228000, ipa: 335000, porter: 127000}
            {month: '2014-03', ale: 199000, ipa: 159000, porter: 130000}
            {month: '2014-04', ale: 174000, ipa: 160000, porter: 82000}
            {month: '2014-05', ale: 255000, ipa: 318000, porter: 82000}
            {month: '2014-06', ale: 298400, ipa: 401800, porter: 98600}
            {month: '2014-07', ale: 370000, ipa: 225000, porter: 159000}
            {month: '2014-08', ale: 376700, ipa: 303600, porter: 130000}
            {month: '2014-09', ale: 527800, ipa: 301000, porter: 119400}
        ]
        mainColor = [$scope.color.infoAlt, $scope.color.danger, $scope.color.success]
        $scope.main = 
            data: mainData
            type: 'area'
            options: 
                xkey: "month"
                ykeys: ["ale", "ipa", "porter"]
                labels: ["ale", "ipa", "porter"]
                lineColors: mainColor
                lineWidth: 0
                behaveLikeLine: true
                pointSize: 0
                # resize: true      # Have to disable it, since it cause firefox (29.0.1 tested) to freeze, really scary

        # line & area
        simpleData = [
            { year: '2009', value: 20 }
            { year: '2010', value: 10 }
            { year: '2011', value: 5 }
            { year: '2012', value: 5 }
            { year: '2013', value: 20 }
            { year: '2014', value: 19 }
        ]
        simpleColor = [$scope.color.primary]
        $scope.simple1 =
            data: simpleData
            type: "line"
            options: 
                xkey: "year"
                ykeys: ["value"]
                labels: ["Value"]
                lineWidth: "2"
                lineColors: simpleColor
                # resize: true
        $scope.simple2 =
            data: simpleData
            type: "area"
            options:
                xkey: "year"
                ykeys: ["value"]
                labels: ["Value"]
                lineWidth: "2"
                lineColors: simpleColor
                # resize: true


        # combo
        comboData = [
            { month: '1', a: 20, b: 30 }
            { month: '2', a: 30, b: 20 }
            { month: '3', a: 20, b: 10 }
            { month: '4', a: 10, b: 20 }
            { month: '5', a: 20, b: 30 }
            { month: '6', a: 30, b: 20 }
            { month: '7', a: 20, b: 10 }
            { month: '8', a: 10, b: 20 }
            { month: '9', a: 20, b: 30 }
            { month: '10', a: 30, b: 20 }
            { month: '11', a: 20, b: 10 }
            { month: '12', a: 10, b: 20 }
        ]
        comboColor = [$scope.color.success, $scope.color.danger, $scope.color.infoAlt]
        $scope.combo1 = 
            data: comboData
            type: "line"
            options:
                xkey: "month"
                ykeys: ["a", "b"]
                labels: ["Value A", "Value B"]
                lineWidth: "2"
                lineColors: comboColor
                # resize: true
        $scope.combo2 = 
            data: comboData
            type: "area"
            options:
                xkey: "month"
                ykeys: ["a", "b"]
                labels: ["Value A", "Value B"]
                lineWidth: "2"
                lineColors: comboColor
                # resize: true


        # bar
        barData = [
            { year: '2009', a: 20, b: 16, c: 12 }
            { year: '2010', a: 10, b: 22, c: 30 }
            { year: '2011', a: 5, b: 14, c: 20 }
            { year: '2012', a: 5, b: 12, c: 19 }
            { year: '2013', a: 20, b: 19, c: 13}
            { year: '2014', a: 28, b: 22, c: 20 }
        ]
        barColor = [$scope.color.infoAlt, $scope.color.success, $scope.color.warning]
        $scope.bar1 =
            data: barData
            type: "bar"
            options:
                xkey: "year"
                ykeys: ["a", "b", "c"]
                labels: ["Value A", "Value B", "Value C"]
                barColors: barColor
                # resize: true
        $scope.bar2 =
            data: barData
            type: "bar"
            options: 
                xkey: "year"
                ykeys: ["a", "b", "c"]
                labels: ["Value A", "Value B", "Value C"]
                barColors: barColor
                stacked: true
                # resize: true

        # donut
        donutColor = [$scope.color.success, $scope.color.info, $scope.color.warning, $scope.color.danger]
        donutData = [
            {label: "Hops", value: 12}
            {label: "Malts", value: 30}
            {label: "Snifters", value: 20}
            {label: "Crafties", value: 9}
        ]
        $scope.donut1 = 
            data: donutData
            type: 'donut'
            options:
                xkey: "year"
                # resize: true
        $scope.donut2 = 
            data: donutData
            type: 'donut'
            options:
                xkey: "year"
                colors: donutColor
                # resize: true
        $scope.donut3 = 
            data: donutData
            type: 'donut'
            options:
                xkey: "year"
                formatter: "return '$' + y;"
                # resize: true


])
.controller('flotChartCtrl', [
    '$scope'
    ($scope) ->

        
        
        # Line Chart
        lineChart1 = {}
        lineChart1.data1 = [[1,15],[2,20],[3,14],[4,10],[5,10],[6,20],[7,28],[8,26],[9,22]]
        $scope.line1 = {}
        $scope.line1.data = [
            data: lineChart1.data1
            label: 'Craft vs Shitty Beer Trend'
        ]
        $scope.line1.options = {
            series:
                lines:
                    show: true
                    fill: true
                    fillColor: { colors: [ { opacity: 0 }, { opacity: 0.3 } ] }
                points:
                    show: true
                    lineWidth: 2
                    fill: true
                    fillColor: "#ffffff"
                    symbol: "circle"
                    radius: 5
            colors: [$scope.color.primary, $scope.color.infoAlt]
            tooltip: true
            tooltipOpts:
                defaultTheme: false
            grid:
                hoverable: true
                clickable: true
                tickColor: "#f9f9f9"
                borderWidth: 1
                borderColor: "#eeeeee"
            xaxis:
                 ticks: [[1,'Jan.'],[2,'Feb.'],[3,'Mar.'],[4,'Apr.'],[5,'May'],[6,'June'],[7,'July'],[8,'Aug.'],[9,'Sept.'],[10,'Oct.'],[11,'Nov.'],[12,'Dec.'],]
        }

        # Area Chart
        areaChart = {}
        areaChart.data1 = [[2007,15],[2009,20],[2010,10],[2011,5],[2012,5],[2013,20],[2014,28]]
        areaChart.data2 = [[2007,15],[2009,16],[2010,22],[2011,14],[2012,12],[2013,19],[2014,22]]
        $scope.area = {}
        $scope.area.data = [
            data: areaChart.data1
            label: "Value A"
            lines:
                fill: true
        ,
            data: areaChart.data2
            label: "Value B"
            points:
                show: true
            yaxis: 2
        ]
        $scope.area.options = {
            series:
                lines:
                    show: true
                    fill: false
                points:
                    show: true
                    lineWidth: 2
                    fill: true
                    fillColor: "#ffffff"
                    symbol: "circle"
                    radius: 5
                shadowSize: 0
            grid:
                hoverable: true
                clickable: true
                tickColor: "#f9f9f9"
                borderWidth: 1
                borderColor: "#eeeeee"
            colors: [$scope.color.success, $scope.color.danger]
            tooltip: true
            tooltipOpts:
                defaultTheme: false
            xaxis:
                mode: "time"
            yaxes: [{
                # First y axis
            }, {
                # Second y axis
                position: "right"
            }]
        }


        # Stacked bar chart
        barChart = {} 
        barChart.data1 = [[2009,20],[2010,10],[2011,5],[2012,5],[2013,20],[2014,28]]
        barChart.data2 = [[2009,16],[2010,22],[2011,14],[2012,12],[2013,19],[2014,22]]
        barChart.data3 = [[2009,12],[20102009,30],[20112010,20],[20122011,19],[20132012,13],[20142013,20]]
        $scope.barChart = {}
        $scope.barChart.data = [
                label: "Value A"
                data: barChart.data1
            ,
                label: "Value B"
                data: barChart.data2
            ,
                label: "Value C"
                data: barChart.data3
        ]
        $scope.barChart.options =
            series:
                stack: true
                bars:
                    show: true
                    fill: 1
                    barWidth: 0.3
                    align: "center"
                    horizontal: false
                    order: 1
            grid:
                hoverable: true
                borderWidth: 1
                borderColor: "#eeeeee"
            tooltip: true
            tooltipOpts:
                defaultTheme: false  
            colors: [$scope.color.success, $scope.color.info, $scope.color.warning, $scope.color.danger]


        # Note: flot.orderBar.js is needed in order to seperate bars side by side like Morris.js, example here: http://jsfiddle.net/pmking/WbuAF/
        $scope.barChart1 = {}
        $scope.barChart1.data = [
                label: "Value A"
                data: barChart.data1
                bars:
                    order: 0
            ,
                label: "Value B"
                data: barChart.data2
                bars:
                    order: 1
            ,
                label: "Value C"
                data: barChart.data3
                bars:
                    order: 2
        ]
        $scope.barChart1.options =
            series:
                stack: true
                bars:
                    show: true
                    fill: 1
                    barWidth: 0.2
                    align: "center"
                    horizontal: false
            grid:
                hoverable: true
                borderWidth: 1
                borderColor: "#eeeeee"
            tooltip: true
            tooltipOpts:
                defaultTheme: false  
            colors: [$scope.color.success, $scope.color.info, $scope.color.warning, $scope.color.danger]


        barChartH = {} 
        barChartH.data1 = [[85, 10], [50, 20], [55,30]]
        barChartH.data2 = [[77, 10], [60, 20], [70,30]]
        barChartH.data3 = [[100, 10], [70, 20], [55,30]]
        $scope.barChart2 = {}
        $scope.barChart2.data = [
                label: "Value A"
                data: barChartH.data1
                bars:
                    order: 1
            ,
                label: "Value B"
                data: barChartH.data2
                bars:
                    order: 2
            ,
                label: "Value C"
                data: barChartH.data3
                bars:
                    order: 3
        ]
        $scope.barChart2.options =
            series:
                stack: true
                bars:
                    show: true
                    fill: 1
                    barWidth: 1
                    align: "center"
                    horizontal: true
            grid:
                hoverable: true
                borderWidth: 1
                borderColor: "#eeeeee"
            tooltip: true
            tooltipOpts:
                defaultTheme: false  
            colors: [$scope.color.success, $scope.color.info, $scope.color.warning, $scope.color.danger]



        # Pie Chart
        $scope.pieChart = {}
        $scope.pieChart.data = [
            label: "Hops"
            data: 12
        ,
            label: "Malts"
            data: 30
        ,
            label: "Snifters"
            data: 20
        ,
            label: "Crafties"
            data: 9        
        ]
        $scope.pieChart.options =
            series:
                pie:
                    show: true
            legend:
                show: true
            grid:
                hoverable: true
                clickable: true
            colors: [$scope.color.primary, $scope.color.success, $scope.color.info, $scope.color.warning,$scope.color.danger]
            tooltip: true
            tooltipOpts:
                content: "%p.0%, %s" # thanks https://github.com/krzysu/flot.tooltip/Crafties/25
                defaultTheme: false            


        # Donut Chart
        $scope.donutChart = {}
        $scope.donutChart.data = [
            label: "Hops"
            data: 12
        ,
            label: "Malts"
            data: 30
        ,
            label: "Snifters"
            data: 20
        ,
            label: "Crafties"
            data: 9    
        ]
        $scope.donutChart.options =
            series:
                pie:
                    show: true
                    innerRadius: 0.5
            legend:
                show: true
            grid:
                hoverable: true
                clickable: true
            colors: [$scope.color.primary, $scope.color.success, $scope.color.info, $scope.color.warning,$scope.color.danger]
            tooltip: true
            tooltipOpts:
                content: "%p.0%, %s"
                defaultTheme: false

        # Donut Chart2
        $scope.donutChart2 = {}
        $scope.donutChart2.data = [
            label: "Hops"
            data: 12
        ,
            label: "Malts"
            data: 30
        ,
            label: "Malts"
            data: 20
        ,
            label: "Snifters"
            data: 19
        ,
            label: "Snifters"
            data: 15  
        ]
        $scope.donutChart2.options =
            series:
                pie:
                    show: true
                    innerRadius: 0.45
            legend:
                show: false
            grid:
                hoverable: true
                clickable: true
            colors: ["#87BA01", "#567500", "#52A3BB","#294E13", "#294E13"]
            tooltip: true
            tooltipOpts:
                content: "%p.0%, %s"
                defaultTheme: false


])
.controller('sparklineCtrl', [
    '$scope'
    ($scope) ->

        # advanced filters
        $scope.isCollapsed = true

    	# for widget
        $scope.demoData1 = 
            data: [3,1,2,2,4,6,4,5,2,4,5,3,4,6,4,7]
            options:
                type: 'line'
                lineColor: '#fff'
                highlightLineColor: '#fff'
                fillColor: $scope.color.success
                spotColor: false
                minSpotColor: false
                maxSpotColor: false
                width: '100%';
                height: '150px';

        # sparkline page
        $scope.simpleChart1 =
            data: [3,1,2,3,5,3,4,2]
            options:
                type: 'line'
                lineColor: $scope.color.primary
                fillColor: '#fafafa'
                spotColor: false
                minSpotColor: false
                maxSpotColor: false

        $scope.simpleChart2 =
            data: [15,13,17,14,16]
            options:
                type: 'bar'
                barColor: $scope.color.primary

        $scope.simpleChart3 =
            data: [3,1,2,3,5,3,4,2]
            options:
                type: 'pie'
                sliceColors: [$scope.color.primary, $scope.color.success, $scope.color.info, $scope.color.infoAlt, $scope.color.warning, $scope.color.danger]

        $scope.tristateChart1 =
            data: [1,2,-3,-5,3, 1, -4,2]
            options:
                type: 'tristate'
                posBarColor: $scope.color.success
                negBarColor: $scope.color.danger


        $scope.largeChart1 =
            data: [3,1,2,3,5,3,4,2]
            options:
                type: 'line'
                lineColor: $scope.color.info
                highlightLineColor: '#fff'
                fillColor: $scope.color.info
                spotColor: false
                minSpotColor: false
                maxSpotColor: false
                width: '100%';
                height: '150px';

        $scope.largeChart2 =
            data: [3,1,2,3,5,3,4,2]
            options:
                type: 'bar'
                barColor: $scope.color.success
                barWidth: 10
                width: '100%';
                height: '150px';

        $scope.largeChart3 =
            data: [3,1,2,3,5]
            options:
                type: 'pie'
                sliceColors: [$scope.color.primary, $scope.color.success, $scope.color.info, $scope.color.infoAlt, $scope.color.warning, $scope.color.danger]
                width: '150px';
                height: '150px';
])