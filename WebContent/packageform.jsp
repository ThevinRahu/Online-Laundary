<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%

//check whether a session is created (session will be created during login)
//this will stop from acessing the page by typing the url
//it wll redirect to the login

if(session.getAttribute("user")!= "user1"){
	response.sendRedirect("home.jsp");	
}
%>
<script src="https://cdn.jotfor.ms/js/vendor/jquery-1.8.0.min.js?v=3.3.25407" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/js/vendor/maskedinput.min.js?v=3.3.25407" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/js/vendor/jquery.maskedinput.min.js?v=3.3.25407" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/punycode/1.4.1/punycode.min.js"></script>
<script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.25407" type="text/javascript"></script>
<script type="text/javascript">

	JotForm.init(function(){
      JotForm.setPhoneMaskingValidator( 'input_27_full', '(###) ###-####' );
      JotForm.setPhoneMaskingValidator( 'input_26_full', '(###) ###-####' );
      setTimeout(function() {
          $('input_6').hint('ex: myname@example.com');
       }, 20);
      setTimeout(function() {
          $('input_47').hint('ex: 23');
       }, 20);
if (window.JotForm && JotForm.accessible) $('input_14').setAttribute('tabindex',0);
if (window.JotForm && JotForm.accessible) $('input_45').setAttribute('tabindex',0);
	JotForm.newDefaultTheme = true;
	JotForm.extendsNewTheme = false;
	JotForm.newPaymentUIForNewCreatedForms = false;
	JotForm.newPaymentUI = true;
    /*INIT-END*/
	});

   JotForm.prepareCalculationsOnTheFly([null,{"name":"packageBooking","qid":"1","text":"Package Booking Form","type":"control_head"},null,{"name":"gender","qid":"3","text":"Gender","type":"control_dropdown"},{"name":"customerName","qid":"4","text":"Customer Name","type":"control_fullname"},null,{"name":"Email","qid":"6","subLabel":"example@example.com","text":" E-mail","type":"control_email"},null,null,null,null,null,null,null,{"name":"totalPrice","qid":"14","text":"Total Price","type":"control_textbox"},null,null,null,null,{"name":"submit","qid":"19","text":"Clear Fields","type":"control_button"},{"name":"submitAnd","qid":"20","text":"Submit and Pay","type":"control_button"},null,null,{"name":"address","qid":"23","text":"Address","type":"control_address"},null,null,{"name":"homeNumber","qid":"26","text":"Home Number","type":"control_phone"},{"name":"mobileNumber","qid":"27","text":"Mobile Number","type":"control_phone"},null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,{"name":"clickTo45","qid":"45","text":"Additional Comments","type":"control_textarea"},{"name":"package46","qid":"46","text":"Package","type":"control_dropdown"},{"description":"","name":"numberOf","qid":"47","subLabel":"","text":"Number of KGs","type":"control_number"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,{"name":"packageBooking","qid":"1","text":"Package Booking Form","type":"control_head"},null,{"name":"gender","qid":"3","text":"Gender","type":"control_dropdown"},{"name":"customerName","qid":"4","text":"Customer Name","type":"control_fullname"},null,{"name":"Email","qid":"6","subLabel":"example@example.com","text":" E-mail","type":"control_email"},null,null,null,null,null,null,null,{"name":"totalPrice","qid":"14","text":"Total Price","type":"control_textbox"},null,null,null,null,{"name":"submit","qid":"19","text":"Clear Fields","type":"control_button"},{"name":"submitAnd","qid":"20","text":"Submit and Pay","type":"control_button"},null,null,{"name":"address","qid":"23","text":"Address","type":"control_address"},null,null,{"name":"homeNumber","qid":"26","text":"Home Number","type":"control_phone"},{"name":"mobileNumber","qid":"27","text":"Mobile Number","type":"control_phone"},null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,{"name":"clickTo45","qid":"45","text":"Additional Comments","type":"control_textarea"},{"name":"package46","qid":"46","text":"Package","type":"control_dropdown"},{"description":"","name":"numberOf","qid":"47","subLabel":"","text":"Number of KGs","type":"control_number"}]);}, 20); 
</script>
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.25407" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?themeRevisionID=5eb3b4ae85bd2e1e2966db96"/>
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/payment/payment_styles.css?3.3.25407" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/payment/payment_feature.css?3.3.25407" />
<style type="text/css" id="form-designer-style">
    /* Injected CSS Code */

      /*PREFERENCES STYLE*/
      /* NEW THEME STYLE */
      .supernova {
        background-color: undefined;
      }
      .form-all {
        margin-top: 72px;
        background-color: undefined;
        box-shadow: undefined
      }
      .form-line-active {
        background-color: undefined;
      }
      .form-line-error {
        background-color: undefined;
      }
      .form-line-error input:not(#coupon-input):not(.form-validation-error) {
        border-color: undefined;
      }
      .form-label {
        color: undefined;
      }
      .form-sub-label {
        color: undefined;
      }
      .form-dropdown,
      .form-textarea,
      .form-textbox,
      .form-checkbox + label:before, .form-radio + label:before,
      .form-radio + span:before, .form-checkbox + span:before {
        border-color: undefined;
        background-color: undefined;
        color: undefined;
      }
      .rating-item label {
        border-color: undefined;
        color: undefined;
        background-color: undefined;
      }
      .rating-item-title.for-to > label:first-child,
      .rating-item-title.for-from > label:first-child {
        background-color: transparent;
        color: undefined;
      }
      .appointmentCalendarContainer .monthYearPicker .pickerItem+.pickerItem {
        border-left-color: undefined;
      }
      .appointmentCalendarContainer {
        background-color: undefined;
        border-color: undefined;
      }
      .appointmentCalendarContainer .currentDate,
      .appointmentCalendarContainer .pickerItem .pickerYear,
      .appointmentCalendarContainer .pickerItem .pickerMonth
      {
        color: undefined;
      }
      .appointmentCalendar .calendarDay {
        color: undefined;
    }
      .appointmentCalendarContainer .monthYearPicker{
        border-color: undefined;
      }
      .rating-item input:focus+label, .rating-item input:hover+label {
        color: undefined;
      }
      .appointmentCalendar .calendarDay.isUnavailable,
      ::placeholder {
        color: undefined;
      }
      .form-spinner-button-container > *,
      .appointmentDayPickerButton,
      .form-matrix-column-headers, .form-matrix-row-headers {
        background-color: undefined;
      }
      .appointmentCalendar .dayOfWeek {
        background-color: undefined;
        color: undefined;
      }
      .form-matrix-values {
        background-color: undefined;
      }
      .rating-item input:focus+label, .rating-item input:hover+label {
        color: undefined;
        background-color: undefined;
        border-color: undefined;
      }
      .rating-item input:checked+label {
        background-color: undefined;
        border-color:undefined;
        color: #fff;
      }
      .form-checkbox + label, .form-radio + label :not(.rating-item){
        color: undefined;
      }
      .form-dropdown:hover, .form-textarea:hover, .form-textbox:hover, .form-checkbox:hover + label:before, .form-radio:hover + label:before {
        border-color: undefined;
        box-shadow: undefined;
      }
      .form-dropdown:focus, .form-textarea:focus, .form-textbox:focus, .form-checkbox:focus + label:before, .form-radio:focus + label:before {
        border-color: undefined;
        box-shadow: undefined;
      }
      .form-matrix-column-headers, .form-matrix-table td, .form-matrix-table td:last-child, .form-matrix-table th, .form-matrix-table th:last-child, .form-matrix-table tr:last-child td, .form-matrix-table tr:last-child th, .form-matrix-table tr:not([role=group])+tr[role=group] th,
      .form-matrix-column-headers, .form-matrix-table td,
      .form-matrix-table td:last-child, .form-matrix-table th,
      .form-matrix-table th:last-child, .form-matrix-table tr:last-child td,
      .form-matrix-table tr:last-child th,
      .form-matrix-table tr:not([role=group])+tr[role=group] th
      {
        border-color: undefined;
        color: undefined;
      }
      .form-matrix-headers.form-matrix-column-headers,
      .isSelected .form-matrix-column-headers:nth-last-of-type(2) {
        border-color: undefined;
      }
      .form-radio:checked + label:after {
        background-color: undefined;
      }
      .form-checkbox:checked + label:before {
        background-color: undefined;
        border-color: undefined;
      }
      .form-radio:checked + label:before {
        border-color: undefined;
      }
      .form-header {
        color: undefined;
      }
      .jSignature, .signature-pad-passive {
        border-color: undefined;
      }
      .form-header-group .form-subHeader {
        color: undefined;
      }
      .form-header-group {
        border-color: undefined;
      }
      .header-large {
        color: undefined;
        border-color: undefined;
      }
      li[data-type="control_text"] .form-html {
        color: undefined;
      }
      li[data-type="control_datetime"] .extended .allowTime-container + .form-sub-label-container {
        background-color: undefined;
      }
      .submit-button {
        background-color: undefined;
        border-color: undefined;
      }
      .form-sacl-button, form-submit-print {
        color: undefined;
      }
      .form-pagebreak-back {
        background-color: undefined;
        border-color: undefined;
      }
      .form-pagebreak-next {
        background-color: undefined;
      }
      .form-pagebreak, .form-pagebreak > div {
        border-color: undefined;
      }
      .form-buttons-wrapper, .form-pagebreak, .form-submit-clear-wrapper {
        border-color: undefined;
      }

      /* NEW THEME STYLE */
      /*PREFERENCES STYLE*//*PREFERENCES STYLE*/
    .form-all {
      font-family: Inter, sans-serif;
    }
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-family: Inter, sans-serif;
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-family: Inter, sans-serif;
    }
    .form-header-group {
      font-family: Inter, sans-serif;
    }
    .form-label {
      font-family: Inter, sans-serif;
    }
  
    .form-label.form-label-auto {
      
    display: block;
    float: none;
    text-align: left;
    width: 100%;
  
    }
  
    .form-line {
      margin-top: 12px 36px 12px 36px px;
      margin-bottom: 12px 36px 12px 36px px;
    }
  
    .form-all {
      max-width: 752px;
      width: 100%;
    }
  
    .form-label.form-label-left,
    .form-label.form-label-right,
    .form-label.form-label-left.form-label-auto,
    .form-label.form-label-right.form-label-auto {
      width: 230px;
    }
  
    .form-all {
      font-size: 16px
    }
    .form-all .qq-upload-button,
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-size: 16px
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-size: 16px
    }
  
    .supernova .form-all, .form-all {
      background-color: #fff;
    }
  
    .form-all {
      color: #2C3345;
    }
    .form-header-group .form-header {
      color: #2C3345;
    }
    .form-header-group .form-subHeader {
      color: #2C3345;
    }
    .form-label-top,
    .form-label-left,
    .form-label-right,
    .form-html,
    .form-checkbox-item label,
    .form-radio-item label {
      color: #2C3345;
    }
    .form-sub-label {
      color: #464d5f;
    }
  
    .supernova {
      background-color: #ecedf3;
    }
    .supernova body {
      background: transparent;
    }
  
    .form-textbox,
    .form-textarea,
    .form-dropdown,
    .form-radio-other-input,
    .form-checkbox-other-input,
    .form-captcha input,
    .form-spinner input {
      background-color: #fff;
    }
  
      .supernova {
        height: 100%;
        background-repeat: repeat;
        background-attachment: scroll;
        background-position: center top;
      }
      .supernova {
        background-image: url("//www.jotform.com/images/brushed.png");
      }
      #stage {
        background-image: url("//www.jotform.com/images/brushed.png");
      }
    
      .form-all {
        background-image: url("//www.jotform.com/images/brushed.png");
        background-repeat: repeat;
        background-attachment: scroll;
        background-position: center top;
      }
    
    .form-all {
      position: relative;
    }
    .form-all:before {
      content: "";
      background-image: url("https://www.jotform.com/uploads/thevinvr/form_files/logo2%20(1).609eb0fc08a764.67084925.png");
      display: inline-block;
      height: 140px;
      position: absolute;
      background-size: 366px 140px;
      background-repeat: no-repeat;
      width: 100%;
    }
    .form-all {
      margin-top: 160px !important;
    }
    .form-all:before {
      top: -150px;
      background-position: top center;
    }
           
  .ie-8 .form-all:before { display: none; }
  .ie-8 {
    margin-top: auto;
    margin-top: initial;
  }
  
  /*PREFERENCES STYLE*//*__INSPECT_SEPERATOR__*/
    /* Injected CSS Code */
</style>

<form class="jotform-form" method="post" action="PackageServlet" name="form_211334754263452" id="211334754263452" accept-charset="utf-8" autocomplete="on">
  <input type="hidden" name="formID" value="211334754263452" />
  <input type="hidden" id="JWTContainer" value="" />
  <input type="hidden" id="cardinalOrderNumber" value="" />
  <a class="formFooter-button" href="home.jsp" target="_blank">Home</a>
  
  <div role="main" class="form-all">
    <div class="formLogoWrapper Center">
      <img class="formLogoImg" src="https://www.jotform.com/uploads/thevinvr/form_files/logo2%20(1).609eb0fc08a764.67084925.png" height="140" width="366">
    </div>
    <style>
      .formLogoWrapper { display:inline-block; position: absolute; width: 100%;} .form-all:before { background: none !important;} .formLogoWrapper.Center { top: -150px; text-align: center;}
    </style>
    <ul class="form-section page-section">
      <li id="cid_1" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-large">
          <div class="header-text httal htvam">
            <h1 id="header_1" class="form-header" data-component="header">
              Package Booking Form
            </h1>
            <div id="subHeader_1" class="form-subHeader">
              Fill out the form carefully for booking
            </div>
          </div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_fullname" id="id_4">
        <label class="form-label form-label-top form-label-extended form-label-auto" id="label_4" for="first_4">
          Customer Name
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_4" class="form-input-wide jf-required" data-layout="full">
          <div data-wrapper-react="true" class="extended">
            <span class="form-sub-label-container" style="vertical-align:top" data-input-type="first">
              <input type="text" id="first_4" name="q4_customerName[first]" class="form-textbox validate[required]" size="10" value="" data-component="first" aria-labelledby="label_4 sublabel_4_first" required="" />
              <label class="form-sub-label" for="first_4" id="sublabel_4_first" style="min-height:13px" aria-hidden="false"> First Name </label>
            </span>
            <span class="form-sub-label-container" style="vertical-align:top" data-input-type="middle">
              <input type="text" id="middle_4" name="q4_customerName[middle]" class="form-textbox" size="10" value="" data-component="middle" aria-labelledby="label_4 sublabel_4_middle" required="" />
              <label class="form-sub-label" for="middle_4" id="sublabel_4_middle" style="min-height:13px" aria-hidden="false"> Middle Name </label>
            </span>
            <span class="form-sub-label-container" style="vertical-align:top" data-input-type="last">
              <input type="text" id="last_4" name="q4_customerName[last]" class="form-textbox validate[required]" size="15" value="" data-component="last" aria-labelledby="label_4 sublabel_4_last" required="" />
              <label class="form-sub-label" for="last_4" id="sublabel_4_last" style="min-height:13px" aria-hidden="false"> Last Name </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line form-line-column form-col-1 jf-required" data-type="control_dropdown" id="id_3">
        <label class="form-label form-label-top" id="label_3" for="input_3">
          Gender
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_3" class="form-input-wide jf-required" data-layout="half">
          <select class="form-dropdown validate[required]" id="input_3" name="q3_gender" style="width:310px" data-component="dropdown" required="" aria-labelledby="label_3">
            <option value=""> Please Select </option>
            <option value="Male"> Male </option>
            <option value="Female"> Female </option>
            <option value="N/A"> N/A </option>
          </select>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_address" id="id_23">
        <label class="form-label form-label-top form-label-auto" id="label_23" for="input_23_addr_line1">
          Addresses
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_23" class="form-input-wide jf-required" data-layout="full">
          <div summary="" class="form-address-table jsTest-addressField">
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
              <span class="form-address-line form-address-street-line jsTest-address-lineField">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_23_addr_line1" name="q23_address[addr_line1]" class="form-textbox validate[required] form-address-line" value="" data-component="address_line_1" aria-labelledby="label_23 sublabel_23_addr_line1" required="" />
                  <label class="form-sub-label" for="input_23_addr_line1" id="sublabel_23_addr_line1" style="min-height:13px" aria-hidden="false"> Street Address </label>
                </span>
              </span>
            </div>
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
              <span class="form-address-line form-address-street-line jsTest-address-lineField">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_23_addr_line2" name="q23_address[addr_line2]" class="form-textbox form-address-line" value="" data-component="address_line_2" aria-labelledby="label_23 sublabel_23_addr_line2" />
                  <label class="form-sub-label" for="input_23_addr_line2" id="sublabel_23_addr_line2" style="min-height:13px" aria-hidden="false"> Street Address 2 </label>
                </span>
              </span>
            </div>
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
              <span class="form-address-line form-address-city-line jsTest-address-lineField ">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_23_city" name="q23_address[city]" class="form-textbox validate[required] form-address-city" value="" data-component="city" aria-labelledby="label_23 sublabel_23_city" required="" />
                  <label class="form-sub-label" for="input_23_city" id="sublabel_23_city" style="min-height:13px" aria-hidden="false"> City </label>
                </span>
              </span>
              <span class="form-address-line form-address-state-line jsTest-address-lineField ">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_23_state" name="q23_address[state]" class="form-textbox validate[required] form-address-state" value="" data-component="state" aria-labelledby="label_23 sublabel_23_state" required="" />
                  <label class="form-sub-label" for="input_23_state" id="sublabel_23_state" style="min-height:13px" aria-hidden="false"> State / Province </label>
                </span>
              </span>
            </div>
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
              <span class="form-address-line form-address-zip-line jsTest-address-lineField ">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_23_postal" name="q23_address[postal]" class="form-textbox validate[required] form-address-postal" value="" data-component="zip" aria-labelledby="label_23 sublabel_23_postal" required="" />
                  <label class="form-sub-label" for="input_23_postal" id="sublabel_23_postal" style="min-height:13px" aria-hidden="false"> ID </label>
                </span>
              </span>
            </div>
          </div>
        </div>
      </li>
      <li class="form-line form-line-column form-col-1 jf-required" data-type="control_phone" id="id_27">
        <label class="form-label form-label-top" id="label_27" for="input_27_full">
          Mobile Number
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_27" class="form-input-wide jf-required" data-layout="half">
          <span class="form-sub-label-container" style="vertical-align:top">
            <input type="tel" id="input_27_full" name="q27_mobileNumber[full]" data-type="mask-number" class="mask-phone-number form-textbox validate[required, Fill Mask]" style="width:310px" data-masked="true" value="" placeholder="(000) 000-0000" data-component="phone" aria-labelledby="label_27" required="" />
            <label class="form-sub-label is-empty" for="input_27_full" id="sublabel_27_masked" style="min-height:13px" aria-hidden="false">  </label>
          </span>
        </div>
      </li>
      <li class="form-line form-line-column form-col-2 jf-required" data-type="control_phone" id="id_26">
        <label class="form-label form-label-top" id="label_26" for="input_26_full">
          Home Number
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_26" class="form-input-wide jf-required" data-layout="half">
          <span class="form-sub-label-container" style="vertical-align:top">
            <input type="tel" id="input_26_full" name="q26_homeNumber[full]" data-type="mask-number" class="mask-phone-number form-textbox validate[required, Fill Mask]" style="width:310px" data-masked="true" value="" placeholder="(000) 000-0000" data-component="phone" aria-labelledby="label_26" required="" />
            <label class="form-sub-label is-empty" for="input_26_full" id="sublabel_26_masked" style="min-height:13px" aria-hidden="false">  </label>
          </span>
        </div>
      </li>
      <li class="form-line form-line-column form-col-3 jf-required" data-type="control_email" id="id_6">
        <label class="form-label form-label-top" id="label_6" for="input_6">
          E-mail
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_6" class="form-input-wide jf-required" data-layout="half">
          <span class="form-sub-label-container" style="vertical-align:top">
            <input type="email" id="input_6" name="q6_Email" class="form-textbox validate[required, Email]" style="width:310px" size="310" value="" placeholder="ex: myname@example.com" data-component="email" aria-labelledby="label_6 sublabel_input_6" required="" />
            <label class="form-sub-label" for="input_6" id="sublabel_input_6" style="min-height:13px" aria-hidden="false"> example@example.com </label>
          </span>
        </div>
      </li>
      <%
 		double value1 = (Double)request.getAttribute("value1");
      int value2 = (int)request.getAttribute("value2");
      String value3 = (String)request.getAttribute("value3");
 %>
      <li class="form-line" data-type="control_dropdown" id="id_46">
        <label class="form-label form-label-top form-label-auto" id="label_46" for="input_46"> Package </label>
        <div id="cid_46" class="form-input-wide" data-layout="half">
          <select class="form-dropdown" id="input_46"  name="q46_package46" style="width:310px" data-component="dropdown" aria-labelledby="label_46">
            <option value="<%=value3 %>"> <%=value3 %> </option>
         
          </select>
        </div>
      </li>
      <li class="form-line" data-type="control_number" id="id_47">
        <label class="form-label form-label-top form-label-auto" id="label_47" for="input_47"> Number of KGs </label>
        <div id="cid_47" class="form-input-wide" data-layout="half">
          <input type="number" id="input_47" name="q47_numberOf" data-type="input-number" class=" form-number-input form-textbox" style="width:310px" size="310" value="<%=value2 %>" placeholder="ex: 23" data-component="number" aria-labelledby="label_47" step="any" />
        </div>
      </li>
      <li class="form-line form-line-column form-col-1" data-type="control_textbox" id="id_14">
        <label class="form-label form-label-top" id="label_14" for="input_14"> Total Price </label>
        <div id="cid_14" class="form-input-wide" data-layout="half">
          <input type="text" id="input_14" name="q14_totalPrice" data-type="input-textbox" class="form-textbox" style="width:310px" size="310" value="<%=value1 %>0" placeholder=" " data-component="textbox" aria-labelledby="label_14" />
        </div>
      </li>
      <li class="form-line" data-type="control_textarea" id="id_45">
        <label class="form-label form-label-top form-label-auto" id="label_45" for="input_45"> Additional Comments </label>
        <div id="cid_45" class="form-input-wide" data-layout="full">
          <textarea id="input_45" class="form-textarea" name="q45_clickTo45" style="width:648px;height:163px" data-component="textarea" aria-labelledby="label_45"></textarea>
        </div>
      </li>
      <li class="form-line form-line-column form-col-1" data-type="control_button" id="id_20">
        <div id="cid_20" class="form-input-wide" data-layout="full">
          <div data-align="left" class="form-buttons-wrapper form-buttons-left   jsTest-button-wrapperField">
            <button id="input_20" type="submit" class="form-submit-button submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">
              Submit and Pay
            </button>
          </div>
        </div>
      </li>
      <li class="form-line form-line-column form-col-2" data-type="control_button" id="id_19">
        <div id="cid_19" class="form-input-wide" data-layout="full">
          <div data-align="right" class="form-buttons-wrapper form-buttons-right   jsTest-button-wrapperField">
            <button id="input_19" type="submit" class="form-submit-button submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">
              Clear Fields
            </button>
          </div>
        </div>
      </li>
      <li style="display:none">
        Should be Empty:
        <input type="text" name="website" value="" />
      </li>
    </ul>
  </div>
  <script>
  JotForm.showJotFormPowered = "new_footer";
  </script>
  <script>
  JotForm.poweredByText = "Powered by JotForm";
  </script>
  <input type="hidden" class="simple_spc" id="simple_spc" name="simple_spc" value="211334754263452" />
  <script type="text/javascript">
  var all_spc = document.querySelectorAll("form[id='211334754263452'] .si" + "mple" + "_spc");
for (var i = 0; i < all_spc.length; i++)
{
  all_spc[i].value = "211334754263452-211334754263452";
}
  </script>
  

      
</form>
<script src="https://cdn.jotfor.ms//js/vendor/smoothscroll.min.js?v=3.3.25407"></script>
<script src="https://cdn.jotfor.ms//js/errorNavigation.js?v=3.3.25407"></script>