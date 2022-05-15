// jQuery
// on start
$(document).ready(function(){
    $('#add-form').hide();
})

$('#add-range-button').click(function (e) { 
    $('#range-table').hide();
    $('#add-form').show();
    // e.preventDefault();
});

// $('#add-range-submit').click(function (e) { 
//     $('#range-table').show();
//     $('#add-form').hide();
//     // e.preventDefault();
// });

$("#back-btn").click(function (e) { 
    // e.preventDefault();
    $('#range-table').show();
    $('#add-form').hide();
    $('#reset-form').click();
    
});


(() => {
    'use strict'
  
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    const forms = document.querySelectorAll('.needs-validation')
  
    // Loop over them and prevent submission
    Array.from(forms).forEach(form => {
      form.addEventListener('submit', event => {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }
  
        form.classList.add('was-validated')

      }, false)
    })
  })()