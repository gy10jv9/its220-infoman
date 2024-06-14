<?php
include("../../partials/form-header.php");

?>

<div class="label-container">
    <img src="../../img/icon-back.png" class="back-bttn" onclick="location.href = '../../dashboards/dash-donations.php'">
    <p class="label"> add donation </p>
</div>
<main>
    <form action="_addDonation.php" method="POST">
        <h1> Enter Primary Information </h1>
        <div class="input-container">
            <div class="fgrow-1">
                <p> First Name </p> 
                <input type = "text" name="fname">
            </div>
            <div class="fgrow-1">
                <p> Last Name </p>
                <input type = "text" name="lname">
            </div>
        </div>
        <div class="input-container">
            <div class="fgrow-2">
                <p> Contact Number </p> 
                <input type = "text" name="contactnum">
            </div>
            <div class="fgrow-2">
                <p> Nationality </p> 
                <input type = "text" name="nationality">
            </div>
            <div class="fgrow-2">
                <p> Donation Amount (PHP) </p> 
                <input type = "number" name="amount">
            </div>
        </div>

        <hr/>
        <h1> Enter Non-Cash Donation Details </h1>
        <div class="input-container m-0">
            <div class="fgrow-1">
                <p> Brandname </p> 
                <input type = "text" name="brand">
            </div>
            <div class="fgrow-1">
                <p> Item Type </p>
                <input type = "text" name="item">
            </div>
        </div>
        <div class="input-container">
            <div class="fgrow-1">
                <p> Date of Purchase </p> 
                <input type = "date" name="purchaseDate">
            </div>
            <div class="quantity-container fgrow-1">
                <p> Quantity </p> 
                <input type = "number" name="quant">
            </div>
            <div class="fgrow-3">
                <p> Distributor </p> 
                <input type = "text" name="distributor">
            </div>
        </div>

        <hr/>
        <h1> Enter Billing Address </h1>
        <div class="input-container m-0">
            <div class="fgrow-1">
                <p> Street Address </p> 
                <input type = "text" name="streetAddr">
            </div>
        </div>
        <div class="input-container">
            <div class="fgrow-1">
                <p> City/Province </p> 
                <input type = "text" name="city">
            </div>
            <div class="fgrow-1">
                <p> State/Region </p> 
                <input type = "text" name="region">
            </div>
            <div class="fgrow-1">
                <p> Country </p> 
                <input type = "text" name="country">
            </div>
        </div>

        <hr/>
        <h1> Enter Card Details </h1>
        <div class="input-container m-0">
            <div class="fgrow-3">
                <p> Card Number </p> 
                <input type = "text" name="cardnum">
            </div>
            <div class="fgrow-1">
                <p> Expiration Date </p> 
                <input type = "date" name="expdate">
            </div>
            <div class="quantity-container">
                <p> CCV </p> 
                <input type = "text" name="ccv">
            </div>
        </div>

        <br/>
        <div class="input-container">
            <input type="submit" class="bttn-primary fgrow-1" value="Confirm Donation">
            <button class="bttn-cancel" onclick="event.preventDefault(); location.href = '../../index.php'"> Cancel </button>
        </div>
    </form>
</main>       

<?php include("../../partials/form-footer.php") ?>