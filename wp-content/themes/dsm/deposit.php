<?php
/*
Template Name: Deposit
*/
?>
<style type="text/css">
    .header {
    height: inherit !important;
}
</style>
<?php get_header(); ?>
<div class="form-style-10">
<h1>Deposit</h1>
<form action="<?php echo bloginfo('template_url'); ?>/depositesubmit.php" method="post" enctype="multipart/form-data" onsubmit='return validateForm()'>
    <div class="section"><span>1</span>First Name &amp; Address Information</div>
    <div class="inner-wrap">
        <label>
        <label>Your Full Name 
                <input type="text" name="usrname" id="usrname" onblur='validate_name(this.value,"namespan");'/>
                <span id='namespan' style='display:none' class="cValidationErrors">Please Enter Valid Name</span>
        </label>
        <label>Address 
                <textarea name="address" id="address" onblur='validate_empty(this.value,"addresspan");'></textarea>
                <span id='addresspan' style='display:none' class="cValidationErrors">Please Enter Valid Address</span>
        </label>
        <label>Country 
                <textarea name="country" id="country" onblur='validate_empty(this.value,"countryspan");'></textarea>
                <span id='countryspan' style='display:none' class="cValidationErrors">Please Enter Valid Country</span>
        </label>
        
    </div>

    <div class="section"><span>2</span>Deposit Information</div>
   	<div class="inner-wrap">
        <span style="display: block;font: 13px Arial, Helvetica, sans-serif;color: #888;">Deposit Amount</span>
        <label>
        <input type="text" name="depositamount" id="depositamount" style="float: left;width: 50%;" onblur='validate_empty(this.value,"depositamountspan");'>
               <span id='depositamountspan' style='display:none' class="cValidationErrors">Please Enter the amount</span>
      </label>
      <label>
      <select name="depositmethod" style="">
        <option>Deposit Method</option>
        <option>Master Card</option>
        <option>Wire Transfer</option>
      </select>
      <span id='depositmethodspan' style='display:none' class="cValidationErrors">Please Enter Valid Deposit Method</span>
    </label>
        <label>MT4 Account 
               <input type="text" name="mtaccount" id="mtaccount" onblur='validate_empty(this.value,"mtaccountspan");'>
               <span id='mtaccountspan' style='display:none' class="cValidationErrors">Please Enter MT4 Account</span>
        </label>
    </div>

    <div class="section"><span>3</span>Email &amp; Contact</div>
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
       var country = document.getElementById("country").value;
       var depositamount = document.getElementById("depositamount").value;
       var mtaccount = document.getElementById("mtaccount").value;
       var email = document.getElementById("email").value;
       var phone = document.getElementById("phone").value;
       if((document.getElementById("namespan").style.display=='block')
        ||(document.getElementById("addresspan").style.display=='block')
        ||(document.getElementById("countryspan").style.display=='block')
        ||(document.getElementById("depositamountspan").style.display=='block')
        ||(document.getElementById("mtaccountspan").style.display=='block')
        ||(document.getElementById("emailspan").style.display=='block')
        ||(document.getElementById("phonespan").style.display=='block')
        ||(name=="")
        ||(address=="")
        ||(depositamount=="")
        ||(mtaccount=="")
        ||(email=="")
        ||(phone=="")
        ||(country==""))
        {
          $("#usrname").blur();
          $("#address").blur();
          $("#phone").blur();
          $("#country").blur();
          $("#email").blur();
          $("#depositamount").blur();
          $("#mtaccount").blur();
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