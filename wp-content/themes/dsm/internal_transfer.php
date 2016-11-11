<?php
/*
Template Name: Internal Transfer
*/
?>
<style type="text/css">
    .header {
    height: inherit !important;
}
</style>
<?php get_header(); ?>
<div class="form-style-10">
<h1>Internal Transfer</h1>
<form action="<?php echo bloginfo('template_url'); ?>/internal_transfer_submit.php" method="post" enctype="multipart/form-data" onsubmit='return validateForm()'>
    <div class="section"><span>1</span>Personal Data</div>
    <div class="inner-wrap">
        <label>Your Full Name 
                <input type="text" name="usrname" id="usrname" onblur='validate_name(this.value,"namespan");'/>
                <span id='namespan' style='display:none' class="cValidationErrors">Please Enter Valid Name</span>
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

    <div class="section"><span>3</span>Contact</div>
        <div class="inner-wrap">
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

        <div class="section"><span>4</span>From &amp; To &amp; Amount </div>
        <div class="inner-wrap">
        <label>
        <span style="display: block;font: 13px Arial, Helvetica, sans-serif;color: #888;">From</span>
        <input type="text" name="from" id="from" style="" onblur='validate_empty(this.value,"fromspan");'>
        <span id='fromspan' style='display:none' class="cValidationErrors">Please Enter Valid Data</span>
        </label>
        <label>
        <span style="display: block;font: 13px Arial, Helvetica, sans-serif;color: #888;">To</span>
        <input type="text" name="to" id="to" style="" onblur='validate_empty(this.value,"tospan");'>
        <span id='tospan' style='display:none' class="cValidationErrors">Please Enter Valid Data</span>
        </label>
        <label>
        <span style="display: block;font: 13px Arial, Helvetica, sans-serif;color: #888;">Amount</span>
        <input type="text" name="amount" id="amount" style="" onblur='validate_empty(this.value,"amountspan");'>
        <span id='amountspan' style='display:none' class="cValidationErrors">Please Enter Valid Data</span>
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
       var phone = document.getElementById("phone").value;
       var email = document.getElementById("email").value;
       var from = document.getElementById("from").value;
       var to = document.getElementById("to").value;
       var amount = document.getElementById("amount").value;
       if((document.getElementById("namespan").style.display=='block')
        ||(document.getElementById("phonespan").style.display=='block')
        ||(document.getElementById("emailspan").style.display=='block')
        ||(document.getElementById("fromspan").style.display=='block')
        ||(document.getElementById("tospan").style.display=='block')
        ||(document.getElementById("amountspan").style.display=='block')
        ||(name=="")
        ||(phone=="")
        ||(from=="")
        ||(to=="")
        ||(amount=="")
        ||(email==""))
        {
          $("#usrname").blur();
          $("#phone").blur();
          $("#email").blur();
          $("#from").blur();
          $("#to").blur();
          $("#amount").blur();
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