<style>
.result-stats,print-hide{
display:none;
}
</style>
<!--<h2>${title!""}</h2>-->
<p>Il seguente grafico mostra il numero di istanze che presentano una certa percentuale di rischio per la domanda</p>
<p><b>${buffers.domanda.id_domanda}. ${buffers.domanda.testo_domanda}</b></p>
<p>Il rischio è indicato con le etichette si/no.</p>
<br>
<div class="chart-container" style="position: relative; height:600px; width:600px; margin-left:100px">
<canvas id="myChart" width="400" height="400"></canvas>
</div>

<script type="text/javascript"  src="/Chart.js" ></script>

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

var colors = ["cyan"];

var data = {

    labels: labels,

    datasets: [

 <#list series?keys as key>

<#if ((key?index) > 0)  >

                {

            label: "${key}",

            backgroundColor: colors[${key?index-1}],

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

            }]

        }

    }

});

</script>
