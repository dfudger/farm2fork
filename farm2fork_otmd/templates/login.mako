
<form class="form-horizontal" action="/login" method="POST">
    %if form:
        %if form.get("EMAIL_INVALID"):
        <div class="control-group error">
        %else:
        <div class="control-group">
        %endif
    %else:
    <div class="control-group">
    %endif
        <label class="control-label" for="inputEmail">Email</label>
        <div class="controls">
            %if form:
                %if form.get("EMAIL_INVALID"):
                <input name="email" type="text" id="inputEmail">
                <span class="help-inline">This email is invalid</span>
                %elif form.get("NOT_VERIFIED"):
                <input name="email" type="text" id="inputEmail" value="${form.email}">
                <span class="help-inline">You must verify your account before you can login</span>
                %else:
                <input name="email" type="text" id="inputEmail" placeholder="Email">
                %endif
            %else:
            <input name="email" type="text" id="inputEmail" placeholder="Email">
            %endif
            
        </div>
    </div>
    
    %if form:
        %if form.get("PASSWORD_INVALID"):
        <div class="control-group error">
        %else:
        <div class="control-group">
        %endif
    %else:
    <div class="control-group">
    %endif
        <label class="control-label" for="inputPassword">Password</label>
        <div class="controls">
            %if form:
                %if form.get("PASSWORD_INVALID"):
                <input name="password" type="password" id="inputPassword">
                <span class="help-inline">The password you provided is incorrect. <a href="/password_recovery">Forgot your password?</a></span>
                %else:
                <input name="password" type="password" id="inputPassword" placeholder="Password">
                <span class="help-inline"><a href="/password_recovery">Forgot your password?</a></span>
                %endif
            %else:
            <input name="password" type="password" id="inputPassword" placeholder="Password">
            <span class="help-inline"><a href="/password_recovery">Forgot your password?</a></span>
            %endif
        </div>
    </div>
    <div class="control-group">
        <div class="controls">
            <button type="submit" class="btn btn-primary">Sign in</button>
            %if title != "Login":
                 <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            %endif
        </div>
    </div>
    <div class="control-group">
        <div class="controls">
            <hr />

            <a class="btn" href="/signup">Not a member of the Farm2Fork community yet?</a>
        </div>
    </div>
</form>
