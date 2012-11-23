<%inherit file="base.mako"/>

<%block name="page_title">farm2fork - ${title}</%block>

<%block name="header">
    <h1 id="header_title">${title} <small>test</small></h1>
</%block>
<div class="row-fluid">
    <div class="span6">
        <h1>List of Needs</h1>
    </div>
    <div class="span6">
        <form class="form-search pull-right" method="post">
          <div class="input-prepend input-append row-fluid">
              <select class="input-medium" id="food_bank">
                <option value="">All Foodbanks</option>
                % if food_banks_names:
                     % for id, fb_name in food_banks_names.items():
                         <option value="${id}"
                         %if form.get('food_bank') == id :
                             selected
                         %endif
                         >  <!-- End of option -->
                             ${fb_name}
                        </option>
                    % endfor
                % endif
            </select>
            <input type="text" class="input-medium" placeholder="search criteria..." value="${form.get('item')}" id="item">
            <button type="submit" class="btn">Search</button>
          </div>
        </form>
    </div>
</div>
<div class="row-fluid">
    % if food_banks:
        <% i = 1 %>
        % for pantry, request in food_banks:
            % if (i) % 2:
                </div>
                <div class="row-fluid">
            % endif
            <div class="span6">
                <h2><a href="provider/${pantry.pantry_id}">${pantry.name}</a></h2>
                <div class="accordion" id="accordionF${i}">
                    <% j = 1 %>
                    % for request in requests:
                      <div class="accordion-group">
                        <div class="accordion-heading">
                          <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionF${i}" href="#collapseF${i}N${j}">
                              ${request.quantity} ${request.item.item_title}
                          </a>
                        </div>
                        <div id="collapseF${i}N${j}" class="accordion-body collapse">
                          <div class="accordion-inner">
                            <div class="row-fluid">
                                <div class="span5">
                                    <p>${request.item.description}</p>
                                </div>
                                <div class="span7">
                                    <form class="form-inline" id="submit_pledge">
                                        <input type="text" class="span12" placeholder="amount" id="amount">
                                        <span class="help-block">I pledge to donate this many units.</span>
                                        % if not user:
                                            <input type="text" class="span12" placeholder="email" id="email">
                                        % else:
                                            <input type="hidden" id="email" value="${user.email}">
                                        % endif
                                        <div class="form-actions">
                                            <input type="hidden" id="need_id" value"${need['id']}">
                                            <button type="submit" class="btn">submit</button>
                                            <button type="button" class="btn">cancel</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <% j = j + 1 %>
                    % endfor
                </div>
            </div>
            <% i = i + 1 %>
        % endfor
    % endif
    <!--
    <div class="span6">
        <h2><a href="#">Foodbank1</a></h2>
        <div class="accordion" id="accordionF1">
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionF1" href="#collapseF1N1">
                25 lbs frozen chicken
              </a>
            </div>
            <div id="collapseF1N1" class="accordion-body collapse in">
              <div class="accordion-inner">
                <div class="row-fluid">
                    <div class="span5">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut a justo risus, quis eleifend quam. Aenean gravida risus lobortis dui ornare faucibus. Nullam vitae enim urna. Duis condimentum, lacus at blandit ultricies, lectus ligula consequat ipsum, nec suscipit metus sapien ut arcu.</p>
                    </div>
                    <div class="span7">
                        <form class="form-inline">
                            <input type="text" class="span8" placeholder="amount">
                            <input type="text" class="span4" disabled="disabled" value="lbs">
                            <span class="help-block">I pledge to donate this much.</span>
                            <input type="text" class="span12" placeholder="email">
                            <div class="form-actions">
                                <button type="submit" class="btn">submit</button>
                                <button type="button" class="btn">cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
              </div>
            </div>
          </div>
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionF1" href="#collapseF1N2">
                Collapsible Group Item #2
              </a>
            </div>
            <div id="collapseF1N2" class="accordion-body collapse">
              <div class="accordion-inner">
                Anim pariatur cliche...
              </div>
            </div>
          </div>
        </div>
    </div>
    
    <div class="span6">
        <h2>Foodbank2</h2>
        <div class="accordion" id="accordionF2">
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionF2" href="#collapseF2N1">
                4 kg fresh vegetables citrus
              </a>
            </div>
            <div id="collapseF2N1" class="accordion-body collapse">
              <div class="accordion-inner">
                <div class="row-fluid">
                    <div class="span4">
                        <p>Description</p>
                    </div>
                    <div class="span8">
                        <form>
                            I pledge donate form
                        </form>
                    </div>
                </div>
              </div>
            </div>
          </div>
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionF2" href="#collapseF2N2">
                Collapsible Group Item #2
              </a>
            </div>
            <div id="collapseF2N2" class="accordion-body collapse">
              <div class="accordion-inner">
                Anim pariatur cliche...
              </div>
            </div>
          </div>
        </div>
    </div>
</div>
<div class="row-fluid">
    <div class="span6"><h2>Foodbank3</h3></div>
    <div class="span6"><h2>Foodbank4</h3></div>-->
</div>
