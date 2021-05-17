<style>
.result-stats,.print-hide{
display:none;
}
</style>
<h2>${title!""}</h2>
<p>Il seguente grafico mostra il numero di istanze per percentuale di rischio.</p>
<br>
<div class="chart-container" style="position: relative; height:600px; width:750px; margin-left:100px">
<canvas id="myChart" width="500" height="400"></canvas>
</div>

<script type="text/javascript" src="/Chart.js" ></script>

<script>

var ctx = document.getElementById('myChart');

<#list series?keys as key>

<#assign serie = series[key] />

<#if key?index==0>

var labels = [<#list serie as item>'${item!""}'<#sep>,</#list>];

<#else>

var ${key} = [<#list serie as item>${(item!0)}<#sep>,</#list>];

</#if>

</#list>

var colors = ["rgba(0, 0, 0, 0.1)","rgb(153, 255, 102)","yellow","orange","red"];

var data = {

    labels: labels,

    datasets: [

 <#list series?keys as key>

<#if ((key?index) > 0)  >

                {

            label: "${key}",

            backgroundColor: colors,

            data: ${key}

        },

</#if>

</#list>

    ]

};

var myChart = new Chart('myChart', {

    type: 'bar',

    data: data,

    options: {

        scales: {

            yAxes: [{

                ticks: {

                    beginAtZero: true,
                        stepSize: 1

                }

            }],
xAxes: [{
        ticks: {
          autoSkip: false,
          maxRotation: 0,
          minRotation: 0
        }
      }]

        }

    }

});

</script>
