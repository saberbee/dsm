<?php
/*
Template Name: Withdraw
*/
?>
<style type="text/css">
    .header {
    height: inherit !important;
}
</style>
<?php get_header(); ?>
<div class="form-style-10">
<h1>Withdrawal Form</h1>
<form action="#" method="post" enctype="multipart/form-data" onsubmit='return validateForm()'>
    <div class="section"><span>1</span>First Name &amp; Address</div>
    <div class="inner-wrap">
        <label>Your Full Name 
                <input type="text" name="usrname" id="usrname" onblur='validate_name(this.value,"namespan");'/>
                <span id='namespan' style='display:none' class="cValidationErrors">Please Enter Valid Name</span>
        </label>
        <label>Address 
                <textarea name="address" id="address" onblur='validate_empty(this.value,"addresspan");'></textarea>
                <span id='addresspan' style='display:none' class="cValidationErrors">Please Enter Valid Address</span>
        </label>
    </div>

    <div class="section"><span>2</span>Email &amp; Phone</div>
   	<div class="inner-wrap">
        <label>Email Address 
               <input type="email" name="email" id="email" onblur='validate_em(this.value,"emailspan");'>
               <span id='emailspan' style='display:none' class="cValidationErrors">Please Enter Valid Email</span>
        </label>
        <span style="display: block;font: 13px Arial, Helvetica, sans-serif;color: #888;">Phone Number</span>
        <label>
        <input type="text" name="phone" id="phone" style="float: left;width: 50%;" onblur='validate_empty(this.value,"phonespan");'>
  		<select name="phone_type" style="float: right;width: 50%;">
		    <option>Work</option>
		    <option>Home</option>
		    <option>Mobile</option>
  		</select>
               <span id='phonespan' style='display:none' class="cValidationErrors">Please Enter Valid Phone Number</span>
		</label>
    </div>

    <div class="section"><span>3</span>Country &amp; Contact</div>
        <div class="inner-wrap">
        <label>Country <input type="text" name="country" id="country" onblur='validate_empty(this.value,"countryspan");'/>
               <span id='countryspan' style='display:none' class="cValidationErrors">Please Enter Valid Country</span>
        </label>
        <span style="display: block;font: 13px Arial, Helvetica, sans-serif;color: #888;">Way Of Contact</span>
        <label>
        <select style="float: left;width: 50%;" name="wayofcontact">
		    <option>Phone</option>
		    <option>Email</option>
		</select>
  		<select style="float: right;width: 50%;" name="timeofcontact">
		    <option>Morning</option>
		    <option>Afternoon</option>
		    <option>Evening</option>
  		</select>
        </label>
    </div>
        <div class="section"><span>4</span>Banking Info</div>
        <div class="inner-wrap">
        <label>Withdrawal Amount <input type="text" name="Withdrawal_amount" id="Withdrawal_amount" onblur='validate_empty(this.value,"Withdrawal_amount_span");'/>
               <span id='Withdrawal_amount_span' style='display:none' class="cValidationErrors">Please Enter Valid Amount</span>
        </label>
        <label>MT4 Account <input type="text" name="MT4_account" id="MT4_account" onblur='validate_empty(this.value,"MT4_account_span");'/>
               <span id='MT4_account_span' style='display:none' class="cValidationErrors">Please Enter Valid Account</span>
        </label>
        <label>Bank Name <input type="text" name="Bank_name" id="Bank_name" onblur='validate_empty(this.value,"Bank_name_span");'/>
               <span id='Bank_name_span' style='display:none' class="cValidationErrors">Please Enter Valid Bank Name</span>
        </label>
        <label>Bank SWIFT Code <input type="text" name="Bank_code" id="Bank_code" onblur='validate_empty(this.value,"Bank_code_span");'/>
               <span id='Bank_name_span' style='display:none' class="cValidationErrors">Please Enter Valid Bank SWIFT Code</span>
        </label>
        <label>Bank Account Number <input type="text" name="Banck_account_number" id="Banck_account_number" onblur='validate_empty(this.value,"Banck_account_number_span");'/>
               <span id='Banck_account_number_span' style='display:none' class="cValidationErrors">Please Enter Valid Bank Account Number</span>
        </label>
        <label>IBAN Number <input type="text" name="iban_number" id="iban_number" onblur='validate_empty(this.value,"iban_number_span");'/>
               <span id='iban_number_span' style='display:none' class="cValidationErrors">Please Enter Valid IBAN Number</span>
        </label>
        <label>Branch Name <input type="text" name="branch_name" id="branch_name" onblur='validate_empty(this.value,"branch_name_span");'/>
               <span id='branch_name_span' style='display:none' class="cValidationErrors">Please Enter Valid Branch Name</span>
        </label>
        <label>ABA / Routing Code (For USA Only) <input type="text" name="routing_code" id="routing_code" onblur='validate_empty(this.value,"routing_code_span");'/>
               <span id='routing_code_span' style='display:none' class="cValidationErrors">Please Enter Valid Routing Code</span>
        </label>
        
    </div>
    <div class="button-section">
     <input type="submit" name="Sign Up" />
     <span class="privacy-policy">
     </span>
    </div>
</form>
</div>
<?php get_footer(); ?>
<script type="text/javascript">
  function validateForm()
     {
       var name = document.getElementById("usrname").value;
       var address = document.getElementById("address").value;
       var phone = document.getElementById("phone").value;
       var country = document.getElementById("country").value;
       var email = document.getElementById("email").value;
       if((document.getElementById("namespan").style.display=='block')
        ||(document.getElementById("phonespan").style.display=='block')
        ||(document.getElementById("addresspan").style.display=='block')
        ||(document.getElementById("countryspan").style.display=='block')
        ||(document.getElementById("emailspan").style.display=='block')
        ||(name=="")
        ||(address=="")
        ||(phone=="")
        ||(country=="")
        ||(email==""))
        {
          $("#usrname").blur();
          $("#address").blur();
          $("#phone").blur();
          $("#country").blur();
          $("#email").blur();
          return false;
        }
      else
      {
        return true;
      }
    }
</script>
<style type="text/css">
   span {

    color: #2b8ccf;
    font-weight: 700;
    padding-top: 2px;
  }
</style>