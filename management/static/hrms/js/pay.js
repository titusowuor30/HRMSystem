
function payWithPaystack(salary,account_no,bank) {
    Swal.fire({
        title: '<strong>Transaction Successful</strong>',
        type: 'success',
        html:
          'The sum of #' +salary +
          ' has been deposited into the Account Number '+account_no+
          ' at '+bank,
        showCloseButton: true,
        showCancelButton: false,
        focusConfirm: false,
        confirmButtonText:
          'Redirecting....',
        confirmButtonAriaLabel: 'Thumbs up, great!',

        
      })
      setTimeout(()=>{
          window.location.href='/dashboard'
      }, 6000)
}