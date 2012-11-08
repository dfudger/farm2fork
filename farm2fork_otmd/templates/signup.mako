
<%inherit file="base.mako"/>

<%block name="page_title">farm2fork - ${title}</%block>

<%block name="header">
    <h2 id="header_title">${title} <small>test</small></h2>
</%block>


<div class="fluid-row">
    <div class="span12">
        <form class="form-horizontal">
            <div class="control-group">
                <label class="control-label">Given Name</label>
                <div class="controls">
                    <input type="text">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Surname</label>
                <div class="controls">
                    <input type="text">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Email</label>
                <div class="controls">
                    <input type="text">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Confirm Email</label>
                <div class="controls">
                    <input type="text">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Password</label>
                <div class="controls">
                    <input type="text">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Confirm Password</label>
                <div class="controls">
                    <input type="text">
                </div>
            </div>

            <div class="control-group">
                <div class="controls">
                    <label class="checkbox inline">
                        <input type="checkbox"> Are you a farmer?
                    </label>
                    <a href="#farmerModal" role="button" class="btn btn-small inline" data-toggle="modal">
                        Why do we ask?
                    </a>
                </div>
            </div>
            <!-- TODO add why do you ask -->

            <div class="control-group">
                <div class="controls">
                    <label class="checkbox">
                        <input type="checkbox"> I would like to receive a newsletter from farm2fork?
                    </label>
                </div>
            </div>

            <div class="control-group">
                <div class="controls">
                    <label class="checkbox">
                        <input id="tosCheckbox" type="checkbox"> I agree to the 
                        <a href="#tosModal" role="button" data-toggle="modal">
                            Terms of Service
                        </a>
                    </label>
                </div>
            </div>
            <!-- TODO add terms of service link -->
            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </form>
    </div>
</div>

<!-- Farmer Modal -->
<div id="farmerModal" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="farmerModalLabel">Why are we asking if you are a farmer?</h3>
    </div>
    <div class="modal-body">
        <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus pharetra
            mollis sem suscipit consequat. Proin tellus lacus, volutpat nec fringilla id,
            venenatis id quam. Mauris eu elit sit amet lorem luctus posuere convallis sit
            amet nunc. Etiam pulvinar pharetra lacus ut consequat. Sed vitae ante a odio
            faucibus cursus. Praesent eu ante et nulla ornare venenatis eget vel ante.
            Phasellus sollicitudin pharetra tempor. Curabitur molestie euismod tempor. Cras
            eget orci ut nibh iaculis interdum.
        <p>
        </p>
            Maecenas vehicula ligula sem. Praesent faucibus ligula non nisl viverra
            sodales. Aenean mollis eros consequat nibh bibendum tristique. Donec posuere
            adipiscing nunc et venenatis. Vestibulum porta nisi quis dui mollis interdum.
            Nam ac purus nunc. Aliquam nec est eu metus pellentesque sagittis eleifend at
            arcu. Maecenas eu risus in neque gravida ultricies. Nulla faucibus congue
            faucibus. Phasellus quis mollis nisl. Nam ut augue risus. Sed pretium
            pellentesque nisl, et lobortis orci rutrum molestie. 
        </p>
    </div>
    <div class="modal-footer">
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
        <!-- This currently does not work. The function checkTos must be created -->
        <!-- <button class="btn btn-primary" onclick="checkTos()">I Agree</button> -->
        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
    </div>
</div>


