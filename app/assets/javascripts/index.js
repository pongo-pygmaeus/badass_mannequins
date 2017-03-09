jQuery(document).on("turbolinks:load", function() {  
  console.log("This works!");
  $(document).on("click", ".js-link", function(event) {
    event.preventDefault();

    console.log("Click")
    var link   = $(this);
    var url    = link.attr("href");
    var method = "GET";

    $.ajax( 
      {
        url: url,
        method: method
      }
    )
    .done(function(response) {
      console.log(response);
    })
  })
})