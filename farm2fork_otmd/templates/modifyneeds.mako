<div class="row-fluid">
  <div class="span12">
    <a href="#addneed_modal" role="button" class="btn" data-toggle="modal">Add Need</a>
  </div>
</div>
%if form:
  %if form.get("Error with adding a new need"):
    <script type="text/javascript">
      $(document).ready(function() {
        $('#addneed_modal').modal('show');
      });
    </script>
  %elif form.get("Error with a specific existing need"):
    <script type="text/javascript">
      $(document).ready(function() {
        $('#collapseN${form.id}').collapse('show');
      });
    </script>
  %endif
%endif
<div class="modal hide fade" id="addneed_modal">
  <form class="form-horizontal">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h3>Add new need</h3>
  </div>
  <div class="modal-body">
    %if form:
      <div class="control-group 
        %if form.get('SOMETHING'):
          error
        %endif
        ">
        <label class="control-label" for="quantity">Amount</label>
        <div class="controls">
          <input type="text" class="" id="quantity" value="${form.quantity}" name="quantity">
          %if form.get('SOMETHING'):
            <span class="help-inline">Must be a number greater than 0.</span>
          %endif
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="units">Units</label>
        <div class="controls">
          <input type="text" class="" id="units" value="${form.units}" name="units"> 
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="item_title">Item Title</label>
        <div class="controls">
          <input type="text" class="" id="item_title" value="${form.item_title}" name="item_title"> 
        </div>
      </div>
      <div class="control-group">
        <div class="controls">
          <select name="category_type" class="">
            % if categories:
               % for category in categories:
                   <option value="${category}" 
                    %if form.category == category:
                      selected="selected"
                    %endif
                   >
                       ${category}
                  </option>
              % endfor
            % endif
          </select>
        </div>
      </div>
      <div class="control-group">
        <div class="controls">
          <label class="checkbox inline">
            <input type="checkbox" name="is_refrigerated"
                % if form.is_refrigerated == 1:
                  checked="yes"
                % endif
              >Perishable?
          </label>
          <label class="checkbox inline">
              <input type="checkbox" name="is_refrigerated"
                % if form.is_refrigerated == 1:
                  checked="yes"
                % endif
              >Refrigerate?
          </label>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="description">Description</label>
        <div class="controls">
          <textarea type="text" class="" id="description" name="description">${form.description}</textarea>
        </div>
      </div>
    %else:
      <div class="control-group error">
        <label class="control-label" for="quantity">Amount</label>
        <div class="controls">
          <input type="text" class="" id="quantity" name="quantity">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="units">Units</label>
        <div class="controls">
          <input type="text" class="" id="units" name="units"> 
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="item_title">Item Title</label>
        <div class="controls">
          <input type="text" class="" id="item_title" name="item_title"> 
        </div>
      </div>
      <div class="control-group">
        <div class="controls">
          <select name="category_type" class="">
            % if categories:
               % for category in categories:
                   <option value="${category}">
                       ${category}
                  </option>
              % endfor
            % endif
          </select>
        </div>
      </div>
      <div class="control-group">
        <div class="controls">
          <label class="checkbox inline">
            <input type="checkbox" name="is_refrigerated">Perishable?
          </label>
          <label class="checkbox inline">
              <input type="checkbox" name="is_refrigerated">Refrigerate?
          </label>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="description">Description</label>
        <div class="controls">
          <textarea type="text" class="" id="description" name="description"></textarea>
        </div>
      </div>
    %endif;
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
                      <form class="form-inline" id="update_need">
                        %if form and form.get('error in update') and form.id==need['id']:
                          <input type="text" class="span2" placeholder="amount" name="quantity" value="${form.quantity}">
                          <input type="text" class="span2" placeholder="units" name="units" value="${form.units}">
                          <input type="text" class="span2" placeholder="item title" name="item_title" value="${form.item_title}">
                          <select name="category_type" class="span2">
                            % if categories:
                              % for category in categories:
                                 <option value="${category}"
                                 %if form.category == category :
                                    selected="selected"
                                 %endif
                                 >${category}</option>
                              % endfor
                            % endif
                          </select>
                          <label class="checkbox">
                            <input type="checkbox" name="is_perishable"
                            % if form.is_perishable == 1:
                              checked="yes"
                            % endif
                            >
                            Perishable?
                          </label>
                          <label class="checkbox">
                            <input type="checkbox" name="is_refrigerated"
                            % if form.is_refrigerated == 1:
                              checked="yes"
                            % endif
                            >
                            Refrigerate?
                          </label>
                          <textarea type="text" class="span12" placeholder="description" name="description">${form.description}</textarea>
                        %else:
                          <input type="text" class="span2 inline-error" placeholder="amount" name="quantity" value="${need['quantity']}">
                          <span class="help-block">Must be a number greater than 0.</span>
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
                        %endif
                        <input type="hidden" name="id" value="${need['id']}">
                        <div class="form-actions">
                          <button type="submit" class="btn">update</button>
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
