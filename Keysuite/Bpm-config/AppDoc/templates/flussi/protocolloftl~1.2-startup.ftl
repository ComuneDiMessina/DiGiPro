
<form action='complete' method='POST' enctype='multipart/form-data'>
<input type='hidden' name='docnum_corrente' value='${DOCNUM}'></input>



<#assign viewmode="ftl-editable" />

<#if (TYPE_ID?? && TYPE_ID=='RAPPORTO_INFORMATIVO')>
			<#assign viewmode="ftl-readonly" />
</#if>

<div class="${viewmode}">



<div class="panel-body">

		<div class="toastbar">Prova messaggio per lancio processo ProtocolloFTL 1.2
		</div>

		<div class="btnbar floatright">
			<button type="button" class="btn btn-default" data-dismiss="modal">Annulla</button>
			<button type='submit' name='outcome' value='Complete' class="btn btn-primary btn-small" disabled>Apri pratica</button>

		</div>
</div>
</form>



<style>
.modal-body .ftl-readonly .form-group {
    margin-bottom: 0;
}
.modal-body {
    margin: 0 0 20px;
}
span:contains("Ferro"){color:red}

#ftlStartProcess * {
    /*font-size: 17px;*/
}
div#ftlStartProcess .form-group {
 	min-height: 40px; 
}
div#ftlStartProcess .input-append {
    padding: 0;
}
div#ftlStartProcess .form-group {
    min-height: 54px !important;
}
div#ftlStartProcess .control-label {
    min-width: 178px;
}
div#ftlStartProcess .form-group {
    clear: both;
}
div#modalStartProcess .modal-footer {
    display: none !important;
}
div.toastbar{
	clear:both;
	}

div.btnbar{
	margin-bottom:8px}

div#ftlStartProcess .alert
{
	padding-left: 8px;
	padding-top: 8px;
    font-size: 0.95em;
    padding-bottom: 8px;
    margin-bottom: 8px
 }
</style>