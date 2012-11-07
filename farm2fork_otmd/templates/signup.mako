
<%inherit file="base.mako"/>

<%block name="page_title">farm2fork - ${title}</%block>

<%block name="header">
    <h2 id="header_title">${title} <small>test</small></h2>
</%block>


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
            <label class="checkbox">
                <input type="checkbox"> Are you a farmer?
            </label>
        </div>
    </div>
    <!-- TODO add why do you ask -->

    <div class="control-group">
        <div class="controls">
            <label class="checkbox">
                <input type="checkbox"> I would like to receive the newsletter?
            </label>
        </div>
    </div>

    <div class="control-group">
        <div class="controls">
            <label class="checkbox">
                <input type="checkbox"> I agree to the terms of service
            </label>
        </div>
    </div>
    <!-- TODO add terms of service link -->
    <div class="control-group">
        <div class="controls">
            <button type="submit" class="btn">Submit</button>
        </div>
    </div>
</form>
