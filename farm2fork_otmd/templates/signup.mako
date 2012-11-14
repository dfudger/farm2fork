
<%inherit file="base.mako"/>

<%block name="page_title">farm2fork - ${title}</%block>

<%block name="header">
    <h1 id="header_title">${title} <small>test</small></h1>
</%block>


<div class="fluid-row">
    <div class="span12">
        <form class="form-horizontal" action="/signup" method="POST">
            <div class="control-group">
                <label class="control-label">Given Name</label>
                <div class="controls">
                    %if form.get("EMAIL_INVALID") or form.get("EMAIL_MISMATCH") or form.get("EMAIL_ALREADY_EXISTS"):
                    <input name="last_name" type="text" value="${form.first_name}">
                    %else:
                    <input name="first_name" type="text" placeholder="Enter your Given Name">
                    %endif
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Surname</label>
                <div class="controls">
                    
                    %if form.get("EMAIL_INVALID") or form.get("EMAIL_MISMATCH") or form.get("EMAIL_ALREADY_EXISTS"):
                    <input name="last_name" type="text" value="${form.last_name}">
                    %else:
                    <input name="last_name" type="text" placeholder="Enter your Surname">
                    %endif
                </div>
            </div>

            %if form.get("EMAIL_INVALID") or form.get("EMAIL_MISMATCH") or form.get("EMAIL_ALREADY_EXISTS"):
            <div class="control-group error">
            %else:
            <div class="control-group">
            %endif
                <label class="control-label">Email</label>
                <div class="controls">
                    %if form.get("EMAIL_INVALID"):
                    <input name="email" type="text">
                    <span class="help-inline">The Email you provided is not a valid email.</span>
                    %elif form.get("EMAIL_MISMATCH"):
                    <input name="email" type="text" value="${form.email}">
                    <span class="help-inline">The Emails you provided do not match each other.</span>
                    %elif form.get("EMAIL_ALREADY_EXISTS"):
                    <input name="email" type="text">
                    <span class="help-inline">The Email you chosen is already taken.</span>
                    %else:
                    <input name="email" type="text" placeholder="Enter your Email">
                    %endif
                </div>
            </div>
            %if form.get("EMAIL_INVALID") or form.get("EMAIL_MISMATCH") or form.get("EMAIL_ALREADY_EXISTS"):
            <div class="control-group error">
            %else:
            <div class="control-group">
            %endif
                <label class="control-label">Confirm Email</label>
                <div class="controls">
                    %if form.get("EMAIL_INVALID") or form.get("EMAIL_MISMATCH") or form.get("EMAIL_ALREADY_EXISTS"):
                    <input name="con_email" type="text">
                    %else:
                    <input name="con_email" type="text" placeholder="Repeat your Email">
                    %endif
                </div>
            </div>

            %if form.get("PASSWORD_INVALID") or form.get("PASSWORD_MISMATCH"):
            <div class="control-group error">
            %else:
            <div class="control-group">
            %endif
                <label class="control-label">Password</label>
                <div class="controls">
                %if form.get("PASSWORD_INVALID"):
                    <input name="password" type="password" id="inputPassword">
                    <span class="help-inline">The password you provided does not meet our standards. It should be 8-20 characters long with uppercase and lowercase letters with at least 1 number.</span>
                %elif form.get("PASSWORD_MISMATCH"):
                    <input name="password" type="password" id="inputPassword">
                    <span class="help-inline">The password you provided is incorrect</span>
                %else:
                    <input name="password" type="password" placeholder="Enter a Password">
                    <span class="help-inline">Your password must be 8-20 characters long with uppercase and lowercase letters with at least 1 number.</span>
                %endif
                </div>
            </div>

            %if form.get("PASSWORD_INVALID") or form.get("PASSWORD_MISMATCH"):
            <div class="control-group error">
            %else:
            <div class="control-group">
            %endif
                <label class="control-label">Confirm Password</label>
                <div class="controls">
                    %if form.get("PASSWORD_INVALID") or form.get("PASSWORD_MISMATCH"):
                    <input name="con_password" type="password">
                    %else:
                    <input name="con_password" type="password" placeholder="Repeat the same Password">
                    %endif
                </div>
            </div>

            <div class="control-group">
                <div class="controls">
                    <label class="checkbox inline">
                        <input name="farmer_box" id="farmerCheckbox" type="checkbox"> Are you a farmer?
                        <a href="#farmerModal" role="button" data-toggle="modal">
                            Why do we ask?
                        </a>
                    </label>
                </div>
            </div>

            <div class="control-group">
                <div class="controls">
                    <label class="checkbox">
                        <input type="checkbox"> I would like to receive a newsletter from Farm2Fork
                    </label>
                </div>
            </div>

            <div class="control-group">
                <div class="controls">
                    <label class="checkbox">
                        <input name="tos_box" id="tosCheckbox" type="checkbox"> I agree to the 
                        <a href="#tosModal" role="button" data-toggle="modal">
                            Terms of Service
                        </a>
                    </label>
                </div>
            </div>

            <div class="control-group">
                <div class="controls">
                    <button id="signup_button" type="submit" disabled="disabled" class="btn">Signup</button>
                </div>
            </div>
        </form>
    </div>
</div>

<!-- Farmer Modal -->
<div id="farmerModal" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="farmerModalLabel">Why do we ask if you are a farmer?</h3>
    </div>
    <div class="modal-body">
        <p>
            Bill 104 is currently being passed through the Legislative Assembly
            of Ontario which will grant a tax credit for certain donations made to Ontario
            Food Banks by farmers.  By creating a Farm2Fork account listed as a farmer, you
            will be eligible to receive a tax receipt for your bulk donations made through
            the website.
        </p>
        <p>
            Please note that it is not certain that this bill will be passed.
        </p>

    </div>
    <div class="modal-footer">
        <button class="btn btn-primary" onclick="$('#farmerCheckbox').prop('checked', true);$('#farmerModal').modal('hide')">
            I am a Farmer
        </button>
        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
    </div>
</div>

<!-- Terms of Service (tos) Modal -->
<div id="tosModal" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="tosModalLabel">Farm2fork Terms of Service</h3>
    </div>
    <div class="modal-body">
        <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus
            pharetra mollis sem suscipit consequat. Proin tellus lacus, volutpat nec
            fringilla id, venenatis id quam. Mauris eu elit sit amet lorem luctus posuere
            convallis sit amet nunc. Etiam pulvinar pharetra lacus ut consequat. Sed vitae
            ante a odio faucibus cursus. Praesent eu ante et nulla ornare venenatis eget
            vel ante.  Phasellus sollicitudin pharetra tempor. Curabitur molestie euismod
            tempor. Cras eget orci ut nibh iaculis interdum. This filler text will be read
            as often as the real terms of service.
        </p>
    </div>
    <div class="modal-footer">
        <button class="btn btn-primary" onclick="$('#tosCheckbox').prop('checked', true);$('#signup_button').removeAttr('disabled');$('#tosModal').modal('hide')">I Agree</button>
            
        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
    </div>
</div>


