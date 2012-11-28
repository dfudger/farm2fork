<div class="row-fluid">
  <div class="span12">
    <a href="#addneed_modal" role="button" class="btn" data-toggle="modal">Add Need</a>
  </div>
</div>

<%
category_types = ['Object', 'Fruits and Vegetables',
  'Milk and Alternatives', 'Meat and Alternatives',
  'Grains']
%>

%if form:
  <script type="text/javascript">
  %if form.get("ERROR_IN_ADD"):
    $(document).ready(function() {
      $('#addneed_modal').modal('show');
    });
  %elif form.get("ERROR_IN_UPDATE"):
    $(document).ready(function() {
      $('#collapseN${form.id}').collapse('show');
    });
  %endif
  </script>
%endif

<div class="modal hide fade" id="addneed_modal">
  <form class="form-horizontal" method="post" action="/createneed" style="margin:0;">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h3>Add new need</h3>
  </div>
  <div class="modal-body">
    %if form and form.get('ERROR_IN_ADD'):

      %if form.get("QUANTITY_INVALID"):
        <div class="control-group error">
      %else:
        <div class="control-group">
      %endif

        <label class="control-label" for="quantity">Amount</label>
        <div class="controls">
          <input type="text" class="" id="quantity" value="${form.quantity}" name="quantity">
          <span class="help-inline">eg: 20</span>
          %if form.get('QUANTITY_INVALID'):
            <span class="help-block">Must be a number greater than 0.</span>
          %endif
        </div>
      </div>

      ##%if form.get("UNITS_INVALID"):
      ##  <div class="control-group error">
      ##%else:
      ##  <div class="control-group">
      ##%endif

      ##  <label class="control-label" for="units">Units</label>
      ##  <div class="controls">
      ##    <input type="text" class="" id="units" value="${form.units}" name="units"> 
      ##    <span class="help-inline">eg: kg</span>
      ##    %if form.get('UNITS_INVALID'):
      ##      <span class="help-block">Must be less than 45 characters.</span>
      ##    %endif
      ##  </div>
      ##</div>

      %if form.get("ITEM_TITLE_INVALID"):
        <div class="control-group error">
      %else:
        <div class="control-group">
      %endif

        <label class="control-label" for="item_title">Item Title</label>
        <div class="controls">
          <input type="text" class="" id="item_title" value="${form.item_title}" name="item_title"> 
          <span class="help-inline">eg: carrots</span>
          %if form.get('ITEM_TITLE_INVALID'):
            <span class="help-block">Must be less than 45 characters.</span>
          %endif
        </div>
      </div>
      <div class="control-group">
        <div class="controls">
          <select name="category_type" class="">
            % if category_types:
               % for category in category_types:
                   <option value="${category}" 
                    %if form.category_type == category:
                      selected="selected"
                    %endif
                   >${category}</option>
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
              > Perishable?
          </label>
          <label class="checkbox inline">
              <input type="checkbox" name="is_perishable"
                % if form.is_refrigerated == 1:
                  checked="yes"
                % endif
              > Refrigerate?
          </label>
        </div>
      </div>

      %if form.get("DESCRIPTION_INVALID"):
        <div class="control-group error">
      %else:
        <div class="control-group">
      %endif
        <label class="control-label" for="description">Description</label>
        <div class="controls">
          <textarea type="text" class="" id="description" name="description">${form.description}</textarea>
          <span class="help-inline">eg: preferably fresh.</span>
          %if form.get('DESCRIPTION_INVALID'):
            <span class="help-block">Must be less than 45 characters.</span>
          %endif
        </div>
      </div>

    %else:

      <div class="control-group">
        <label class="control-label" for="quantity">Amount</label>
        <div class="controls">
          <input type="text" class="" id="quantity" name="quantity">
          <span class="help-inline">eg: 20</span>
        </div>
      </div>
      ##<div class="control-group">
      ##  <label class="control-label" for="units">Units</label>
      ##  <div class="controls">
      ##    <input type="text" class="" id="units" name="units"> 
      ##    <span class="help-inline">eg: kg</span>
      ##  </div>
      ##</div>
      <div class="control-group">
        <label class="control-label" for="item_title">Item Title</label>
        <div class="controls">
          <input type="text" class="" id="item_title" name="item_title">
          <span class="help-inline">eg: carrots</span>
        </div>
      </div>
      <div class="control-group">
        <div class="controls">
          <select name="category_type" class="">
            % if category_types:
               % for category in category_types:
                   <option value="${category}">${category}</option>
              % endfor
            % endif
          </select>
        </div>
      </div>
      <div class="control-group">
        <div class="controls">
          <label class="checkbox inline">
            <input type="checkbox" name="is_refrigerated"> Perishable?
          </label>
          <label class="checkbox inline">
              <input type="checkbox" name="is_refrigerated"> Refrigerate?
          </label>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="description">Description</label>
        <div class="controls">
          <textarea type="text" class="" id="description" name="description"></textarea>
          <span class="help-inline">eg: preferably fresh.</span>
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

% if pantry.requests:
<div class="row-fluid">
  <div class="span12">
      <div class="accordion" id="accordion">
        <% i = 1 %>
        % for need in pantry.requests:
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseN${i}">
                 ${need.quantity} ${need.item.item_title}
              </a>
            </div>
            <div id="collapseN${i}" class="accordion-body collapse">
              <div class="accordion-inner">
                <div class="row-fluid">
                  <div class="span12">
                    <form class="form-inline" id="update_need" method="post" action="/createneed" style="margin:0;">

                      %if form and form.get('ERROR_IN_UPDATE') and form.item_title==need.item_title:

                        %if form.get("QUANTITY_INVALID"):
                          <input type="text" class="span2 inline-error" placeholder="amount" name="quantity" value="${form.quantity}">
                        %else:
                          <input type="text" class="span2" placeholder="amount" name="quantity" value="${form.quantity}">
                        %endif

                        ##%if form.get("UNITS_INVALID"):
                        ##  <input type="text" class="span2 inline-error" placeholder="units" name="units" value="${form.units}">
                        ##%else:                            
                        ##  <input type="text" class="span2" placeholder="units" name="units" value="${form.units}">
                        ##%endif

                        %if form.get("ITEM_TITLE_INVALID"):
                          <input type="text" class="span2 inline-error" placeholder="item title" name="item_title" value="${form.item_title}">
                        %else:
                          <input type="text" class="span2" placeholder="item title" name="item_title" value="${form.item_title}">
                        %endif

                        <select name="category_type" class="span2">
                          % if category_types:
                            % for category in category_types:
                               <option value="${category}"
                               %if form.category_type == category :
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
                          > Perishable?
                        </label>
                        <label class="checkbox">
                          <input type="checkbox" name="is_refrigerated"
                          % if form.is_refrigerated == 1:
                            checked="yes"
                          % endif
                          > Refrigerate?
                        </label>

                        %if form.get("QUANTITY_INVALID"):
                          <span class="help-block inline-error-label">Must be a number greater than 0.</span>
                        %endif

                        ##%if form.get("UNITS_INVALID"):
                        ##  <span class="help-block inline-error-label">Units must be less than 45 characters long.</span>
                        ##%endif

                        %if form.get("ITEM_TITLE_INVALID"):
                          <span class="help-block inline-error-label">Item Title must be less than 45 characters long.</span>
                        %endif

                        %if form.get("DESCRIPTION_INVALID"):
                          <textarea type="text" class="span12 inline-error" placeholder="description" name="description">${form.description}</textarea>
                          <span class="help-block inline-error-label">Description must be less than 45 characters long.</span>
                        %else:
                          <textarea type="text" class="span12" placeholder="description" name="description">${form.description}</textarea>
                        %endif

                      %else:

                        <input type="text" class="span2" placeholder="amount" name="quantity" value="${need.quantity}">
                        ##<input type="text" class="span2" placeholder="units" name="units" value="${need.units}">
                        <input type="text" class="span2" placeholder="item title" name="item_title" value="${need.item.item_title}">
                        <select name="category_type" class="span2">
                          % if category_types:
                            % for category in category_types:
                               <option value="${category}"
                               %if need.item.category_type == category :
                                selected="selected"
                               %endif
                               >${category}</option>
                            % endfor
                          % endif
                        </select>
                        <label class="checkbox">
                          <input type="checkbox" name="is_perishable"
                          % if need.item.is_perishable==1:
                            checked="yes"
                          % endif
                          > Perishable?
                        </label>
                        <label class="checkbox">
                          <input type="checkbox" name="is_refrigerated"
                          % if need.item.is_refrigerated==1:
                            checked="yes"
                          % endif
                          > Refrigerate?
                        </label>
                        <textarea type="text" class="span12" placeholder="description" name="description">${need.item.description}</textarea>

                      %endif
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
