<#import "macros/rma.ftl" as m>
<br>


    <div class="form-group js-input ">
        <label class="col-md-3 control-label" for="mittente_comunicazione">label.comunicazione_generale.mittente_comunicazione</label>
        <span class="col-md-8">

                <input class="auto-completion" theme="twitat"
                       data-type="group"
                       data-autocompletion-service-url="/AppDoc/autocompletionService?wild=true&fl=sid,name:GROUP_NAME&distrib=false&qt=/mygroups"
                       display-code="false"
                       data-des="${MITTENTE_COMUNICAZIONE!''}"
                       data-minChars='1'
                       key="GROUP_ID"
                       id="mittente_comunicazione"
                       name="MITTENTE_COMUNICAZIONE"
                       type="text"
                       value="${MITTENTE_COMUNICAZIONE!''}" 
                       data-tokenLimit="1"  />

        </span>
    </div> 


    <@m.autocompletion type="group" mid="destinatari_comunicazione" name="DESTINATARI_COMUNICAZIONE_SS" value="${DESTINATARI_COMUNICAZIONE_SS!''}" des="${DESTINATARI_COMUNICAZIONE_SS!''}" key="GROUP_ID" fq="type:group AND GRUPPO_STRUTTURA:true" for="comunicazione_generale" addnew="false" max="100" />

    <div class="form-group ">

        <label class="col-3 col-md-3 control-label" >label.comunicazione_generale.descrizione_comunicazione</label>
                <span class="col-md-8">
                        <INPUT id="DESCRIZIONE_COMUNICAZIONE" name="DESCRIZIONE_COMUNICAZIONE" class="form-control " value="${DESCRIZIONE_COMUNICAZIONE!''}" />
                </span>
    </div>

    <div class="form-group ">
    
        <label class="col-3 col-md-3 control-label" >label.comunicazione_generale.oggetto_comunicazione</label>
                <span class="col-md-8">
                        <INPUT id="OGGETTO_COMUNICAZIONE" name="OGGETTO_COMUNICAZIONE" class="form-control " value="${OGGETTO_COMUNICAZIONE!''}" />
                </span>
    </div>


                <script>

                        function setReadableValues(){

                            setReadableValue("GROUP_ID","group","id:*","type,sid,name:display_name","MITTENTE_COMUNICAZIONE");
                            setReadableValue("GROUP_ID","group","id:*","type,sid,name:display_name","DESTINATARI_COMUNICAZIONE_SS");
                        }

                        function setMandatoryFields(){


                            var $form = $("form[action=saveDocumentInAoo], form[action=updateProfile]");
                            var mandatory = "input[name=MITTENTE_COMUNICAZIONE]";
                            mandatory+= ",input[name=DESTINATARI_COMUNICAZIONE_SS]";
                            
                            if( $form.find( mandatory ).size() >0 ) {
                                $form.on('submit', {mandatory: mandatory}, submittableFormHandler);
                                
                                $form.find( mandatory ).each(function( index ) {
                                
                                    var $label=$(this).parents("div.form-group:eq(0)").find("label:eq(0)");
                                    if($label.text().indexOf() <0)
                                        $label.text($label.text()+ "*");
                                    
                                });
                                
                                /*
                                var msg = "I campi contrassegnati da asterisco (*) contengono dati che è obbligatorio inserire prima di salvare.";
                                $message = getMessage(msg, "warning");
                                $form.prepend($message);
                                */
                            
                            }
                        }


                        $(function() {

                            setReadableValues();
                            setMandatoryFields();
                            
                        });


                </script>
