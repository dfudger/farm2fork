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
              <select class="input-medium" name="food_bank">
                <option value="">All Foodbanks</option>
                % if food_bank_names:
                    % for id, fb_name in food_bank_names.items():
                         <option value="${id}"
                         %if form.get('food_bank') == id :
                             selected
                         %endif
                         > ${fb_name} </option>
                    % endfor
                % endif
            </select>
            % if form.get:
                <input type="text" class="input-medium" placeholder="search criteria..." value="${form.get('item')}" name="item">
            % endif
            <button type="submit" class="btn">Search</button>
          </div>
        </form>
    </div>
</div>
<div class="row-fluid">
    % if food_banks:
        <% i = 1 %>
        % for pantry, requests in food_banks:
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
                                            <input type="hidden" id="need_id">
                                            <button type="submit" disabled="disabled" class="btn">submit</button>
                                            <button type="button" disabled="disabled" class="btn">cancel</button>
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
</div>
