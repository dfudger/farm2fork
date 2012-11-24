
<%inherit file="base.mako"/>

<div class="row_fluid">
    <div class="span12">
        ## ${recaptcha_body | n}
        <h1>Password Recovery</h1>
        ## TODO display an error if the email is valid but not in the system?
        <form class="form-horizontal" action="/password/recovery/success" method="POST">
            <div class="control-group">
                <label class="control-label" for="inputEmail">Email</label>
                <div class="controls">
                    %if form:
                        %if form.get("EMAIL_INVALID"):
                        <input name="email" type="text" id="inputEmail" value="${form.email}">
                        <span class="help-inline">This email is invalid</span>
                        %endif
                    %else:
                    <input name="email" type="text" id="inputEmail" placeholder="Email">
                    %endif
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn">Recover</button>
                </div>
            </div>
        </form>
    </div>
</div>
