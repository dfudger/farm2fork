<html>
   <head>
        <title>${title}</title>
   </head>
   <body>
   <h1>Need Create!</h1>
   <div>
     <form action="/createneed" method="POST">
       <strong>New Item:</strong> <input type="text" name="item_title" value="${form.get('item_title')}">
       <strong>Description:</strong> <input type="text" name="description" value="${form.get('description')}">
       <select name="category_type">
       <option value="">Any</option>
       <option value="Object">Object</option>
       <option value="Fruits and Veggies">F and A</option>
       <option value="Milk and Alts">M and A</option>
       <option value="Mean and Alts">Meat and A</option>
       <option value="Grains">Grains</option>
       </select>
       <strong>Quantity:</strong> <input type="text" name="quantity" value="${form.get('quantity')}">
       <!-- is_perishable and is_refrig checkboxes flags -->
       <input name="is_perishable" id="perish" type="checkbox"> perishable
       <input name="is_refrigerated" id="perish" type="checkbox"> refrigerated
       <input type="submit"/>
     </form>
   </div>
   </body>
</html>
