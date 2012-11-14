
<%inherit file="base.mako"/>

<%block name="page_title">farm2fork - ${user.first_name}</%block>

<%block name="header">
    <h1 id="header_title">${user.first_name}</h1>
</%block>


<!-- User Profile -->
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span3">
            <!--Sidebar content-->

            <h3>${user.first_name} ${user.last_name}</h3>
            <img src="/static/img/user_sample.jpg" alt="">

            <div class="accordion" id="accordion2">
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <h5><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">Contact...</a></h5>
                    </div>

                    <div id="collapseTwo" class="accordion-body collapse">
                        <div class="accordion-inner">
                            <li>Volunteer: ${user.first_name} ${user.last_name}</li>
                            <li>Phone: 519-226-1235</li>
                            <li>Fax:   221-231-1422</li>
                            <li><a href="mailto:${user.email}">Email:${user.email}</a></li>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="span9">
            <!--Body content-->
            <div>
                <h3>About Me</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. 
                    Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh 
                    elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus 
                    sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. 
                    Class aptent taciti sociosq.
                </p>
            </div>
        </div>
    </div>
</div>
