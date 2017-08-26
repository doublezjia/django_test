// jPages分页设置
 /* when document is ready */
  $(function() {
    /* initiate plugin */
    $("div.holder").jPages({
      containerID: "itemContainer" ,
      perPage:8  /*设置每页显示*/
    });
  });
