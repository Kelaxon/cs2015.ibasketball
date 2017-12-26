$(function(){
    var chart;
    var categories= [];
    $(document).ready(function(){
        chart = new Highcharts.Chart({
            chart: {
                renderTo : 'bar_chart',  
                type: 'bar'
            },
            title: {
                text: '区平均管护收入、平均管护次数'
            },
            xAxis: {
            	categories:categories,
            },
            yAxis: {
                min: 0,
                title: {
                text: '次数'
                }
            },
            plotOptions: {
                bar: {
                    dataLabels: {
                        enabled: true
                    }
                }
            },
            credits: {
                enabled: false
            },
            series: [{
                name: '区平均管护收入',
            },{
                name: '区平均管护次数',
            }]

        });
    });

    $.ajax({
        type:'GET',
        url:'ProcedureA',
        success:function(data){
            browers1=[];
            browers2=[];
            
            dat= $.parseJSON(data); 
           // console.log(data);
            var rows  = dat.rows;
            //console.log(dat);
            $.each(rows,function(i,d){
                browers1.push([d.name,d.income]);
                categories.push([d.name]);
                browers2.push([d.name,d.count]);
        });
            chart.series[0].setData(browers1);
            chart.series[1].setData(browers2); 
        },
        error:function(e){
            alert(e);
        }

    });
});