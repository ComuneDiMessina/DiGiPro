<form action='complete' method='POST' enctype='multipart/form-data'>
    <div>
    	<#if variabili?? && variabili.primoHT == "si">
        	<h2>Primo HT</h2>
        	<input type="hidden" name="variabili.primoHT" value="no">
    	<#else>
    		<h2>Secondo HT</h2>
    	</#if>
        <hr>
        <BR />
        <button type='submit' name='outcome' value='Complete'>Completa attivita'</button>
</form>
</div>