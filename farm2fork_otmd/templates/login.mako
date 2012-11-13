
<form class="form-horizontal" action="/login">
    %if not EMAIL_INVALID:
        <div class="control-group">
    %else:
        <div class="control-group error">
    %endif
        <label class="control-label" for="inputEmail">Email</label>
        <div class="controls">
            %if not EMAIL_INVALID:
                <input name="email" type="text" id="inputEmail" placeholder="Email">
            %else:
                <input name="email" type="text" id="inputEmail">
                <span class="help-inline">This email is invalid</span>
            %endif
            
        </div>
    </div>
    
    %if not PASSWORD_INVALID:
        <div class="control-group">
    %else:
        <div class="control-group error">
    %endif
        <label class="control-label" for="inputPassword">Password</label>
        <div class="controls">
            %if PASSWORD_INVALID:
                <input name="password" type="password" id="inputPassword">
                <span class="help-inline">The password you provided is incorrect</span>
            %else:
                <input name="password" type="password" id="inputPassword" placeholder="Password">
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
</form>

<hr>

<div>
    <p>Not a member of the Farm2Fork community yet?</p>
    <a href="/signup" class="btn">Sign up for Farm2Fork</a>
</div>

