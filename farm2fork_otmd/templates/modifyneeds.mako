<div class="row-fluid">
  <div class="span12">
    <a href="#addneed_modal" role="button" class="btn" data-toggle="modal">Add Need</a>
  </div>
</div>
<div class="modal hide fade" id="addneed_modal">
  <form class="form-inline">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h3>Add new need</h3>
  </div>
  <div class="modal-body">
    <input type="text" class="span2" placeholder="amount" name="quantity">
      <input type="text" class="span2" placeholder="units" name="units">
      <input type="text" class="span2" placeholder="item title" name="item_title">
      <select name="category_type" class="span2">
        % if categories:
             % for category in categories:
                 <option value="${category}">
                     ${category}
                </option>
            % endfor
        % endif
      </select>
      <label class="checkbox">
        <input type="checkbox" name="is_perishable">
        Perishable?
      </label>
      <label class="checkbox">
        <input type="checkbox" name="is_refrigerated">
        Refrigerate?
      </label>
      <textarea type="text" class="span12" placeholder="description" name="description"></textarea>
  </div>
  <div class="modal-footer">
    <input type="submit" class="btn" value="OK">
    <a href="#" data-dismiss="modal" class="btn">Cancel</a>
  </div>
  </form>
</div>
% if needs:
<div class="row-fluid">
  <div class="span12">
      <div class="accordion" id="accordion">
        <% i = 1 %>
        % for need in needs:
        ##${need}
            <div class="accordion-group">
              <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseN${i}">
                   ${need['quantity']} ${need['units']} ${need['item_title']}
                </a>
              </div>
              <div id="collapseN${i}" class="accordion-body collapse">
                <div class="accordion-inner">
                  <div class="row-fluid">
                      <div class="span12">
                          <form class="form-inline" id="submit_pledge">
                              <input type="text" class="span2" placeholder="amount" name="quantity" value="${need['quantity']}">
                              <input type="text" class="span2" placeholder="units" name="units" value="${need['units']}">
                              <input type="text" class="span2" placeholder="item title" name="item_title" value="${need['item_title']}">
                              <select name="category_type" class="span2">
                                % if categories:
                                     % for category in categories:
                                         <option value="${category}"
                                         %if need['category'] == category :
                                             selected="selected"
                                         %endif
                                         >  <!-- End of option -->
                                             ${category}
                                        </option>
                                    % endfor
                                % endif
                              </select>
                              <label class="checkbox">
                                <input type="checkbox" name="is_perishable"
                                % if need['is_perishable']==1:
                                  checked="yes"
                                % endif
                                >
                                Perishable?
                              </label>
                              <label class="checkbox">
                                <input type="checkbox" name="is_refrigerated"
                                % if need['is_refrigerated']==1:
                                  checked="yes"
                                % endif
                                >
                                Refrigerate?
                              </label>
                              <textarea type="text" class="span12" placeholder="description" name="description">${need['description']}</textarea>
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
          <% i = i + 1 %>
          % endfor
      </div>
  </div>      
</div>   
% endif
