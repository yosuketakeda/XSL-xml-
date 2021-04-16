<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<style>

#secondpage{
margin-top:100px;
height:900px;
}

#number{
display: inline-block;
width:25px;
}
#signs{
margin:15px;
}
#balanceparagraphs{
display:inline-block;
width: 100px;
height: 40px;
background-color:#f2762e;
color:#ffffff;
text-align:center;
padding-top:7px;
}

#2ndp{
position:relative;
margin-left: 5pc;
}
#fields1OverDue{
    background-color:#000000;
    color: #f2762e;
}
#fields1{
    display: inline-block;
    background-color:#f2762e;
    width:350px;
    margin-left:20px;
}

#para{
margin-left: 20px;
}

#centerFields{
    color:#ffffff;
    height: 70px;
    width: 150px;
    padding-left: 40px;
}
#centerHeadings{
    color:#f2762e;
    font-size: 22px;
    margin:30px;
}
h2 {
  text-align: center;  
}
table {
  width: 100%;
  margin-right:15px;
  border: none;
}
hr {
//margin-top:40px;
//width: 88pc;
}
th{
text-align:left
}
div.div{
text-align:center;
}

#firstname{
text-align:center;
font-weight: bold;
margin-top:170px;
}
#heading{
text-align:right;
margin-right:100px;
font-weight: bold;
height:100px;
font-size:25px;
}

#conditions{
margin-top:50px;
font-weight: normal;
height:150px;
}

/***** lili code *****/
tr{
color: #fff;
}
td{
color: #000;
font-size: 22px;
}
th{
font-size: 25px;
}
#total_part{
display: flex;
float: right;
}
#total_price{
font-size: 35px;
font-weight: bold;
margin-right: 100px;
}
h2{
font-size: 50px;
}
#firstname{
font-size: 40px;
}
#conditions{
font-size: 20px;
padding-left: 50px;
padding-right: 50px;
}
#first_part{
display:flex;
}
#comment{
width: 55%;
/** text-align: center; **/
}
#taxi_invoice{
padding: 15px 15px;
width: 45%;
text-align: center;
}
#taxi_invoice p{
font-size: 30px;
font-weight: bold;
}
#tax_line{
display:flex;
margin-bottom: 5px;
font-size: 24px;
}
#tax_title{
width: 60%;
background-color: #F1521B;
color: #fff;
padding: 10px;
}
#tax_value{
width: 40%;
color: #000;
border: 5px solid #F1521B;
padding: 10px;
}
.over_title{
background-color: #000 !important;
color: #f2762e !important;
font-weight: bold;
border: 5px solid #F1521B;
}
.over_value{
font-weight: bold;
}
#second_part{
margin-top: 200px;
padding: 10px 80px;
display: flex;
}
#item{
background-color:#F1521B;
text-align: center;
width: 20%;
color: #fff;
font-size: 30px;
}
#item #content{
padding: 10px 0;
}
#item #value{
background-color: #fff !important;
border: 6px solid #F1521B;
color: #000 !important;
padding: 10px 0;
} 
#operator{
text-align: center;
width: 6%;
font-size: 40px;
font-weight: bold;
}
#result{
text-align: center;
width: 8%;
font-size: 40px;
font-weight: bold;
}
#third_part{
margin-top: 80px;
width: 50%;
margin-left: auto;
margin-right: auto;
}
#third_part #title{
font-size: 45px;
font-weight: bold;
color: #f2762e;
text-align: center;
}
#datas{
	display: flex;
	font-size: 35px;
	font-weight: bold;
	width: 100%;
	margin-bottom: 50px;
}
#name{
	color: #F1521B;
	width: 85%;
}
#fourth_part{
	display: flex;
	padding: 50px 70px;
}
#columns{
	display: flex;
	font-size: 25px;
}
#debit{
	width: 50%;
}
#cheque{
	width: 50%;
}

#fifth_part{
	padding: 10px 70px;
}
#payment_detail, #card_number, #card_name{
	font-size: 25px;
	margin: 40px 0;
}
#card_number input{
	display: inline-block;
	width:40px;
	height: 40px;
	border: 1px solid #F1521B;
}
#card_name input{
	display: inline-block;
	width:50px;
	height: 50px;
	font-size: 30px;
	border: none;
	border-bottom:1px solid #F1521B;
}
#card_name{
	margin-bottom: 100px;
}
/*********************/
</style>
</head>

  <body>
  <h2>Date Fees</h2>  
    <table style="height:500px;">
      <tr bgcolor="#f2762e">
        <th>Date</th>
        <th>Site</th>
        <th>Description</th>
        <th>Charge</th>
        <th>Amount</th>
      </tr>
      <xsl:for-each select="catalog/cd">
      <tr>
        <td><xsl:value-of select="Date"/></td>
        <td><xsl:value-of select="Site"/></td>
        <td><xsl:value-of select="Description"/></td>
        <td><xsl:value-of select="Charge"/></td>
        <td><xsl:value-of select="Amount"/></td>
      </tr>
      </xsl:for-each>       
    </table>
    <hr/>
	<div id="total_part">
    <div id="heading">TOTAL DATA FEES</div>
	<div id="total_price">$4,200.00</div>
    </div>
    <div id="firstname">Terms and Conditions</div>
    <div id="conditions">Please note that it is an express condition of our terms of  trade (published at http:/www.protectednetworks.com.au/termsandconditions) that all invoices are to be paid with in seven (7) days of the date of invoice (due date). In the event that payment is not made by the due date Protected Networks shall exercise it’s contractual right to disconnect your internet without notice. A reconnection fee of $500 plus GST applies. Please note that it may take up to five (5) working days to re-connect an internet service. Protected Networks is not liable for any direct,indirect or consequential loss or damage you may suffer during any internet disconnection</div>

    <p style="page-break-before: always"></p>

	<div id="secondpage">
		<div id="first_part">
			<div id="comment">
				<div id="logo"><img style="width:600px;height:144px; margin-left: 80px" src="logo.png" alt="Logo"></img></div>
				<p style="padding-left: 50px; font-size: 23px">Enquiries: 130 367 205 | accounts@protectednetworks.com.au</p>
				<p style="font-size: 24px; font-weight: bold;margin-left:28%;">OCE Australia Ltd</p>
				<span style="font-size: 24px; font-weight: bold;margin-left:28%;">2 International Court</span><br/>
				<span style="font-size: 24px; font-weight: bold;margin-left:28%;">Caribbean Business Park</span><br/>
				<span style="font-size: 24px; font-weight: bold;margin-left:28%;">Scoresby</span><br/>
				<span style="font-size: 24px; font-weight: bold;margin-left:28%;">VIC 3179</span>
			</div>
			<div id="taxi_invoice">
				<p>TAX INVOICE</p>
				<div id="tax_line">
					<div id="tax_title">ACCOUNT NUMBER</div>
					<div id="tax_value">1234567</div>
				</div>
				<div id="tax_line">
					<div id="tax_title">INVOICE ID</div>
					<div id="tax_value">1234567</div>
				</div>
				<div id="tax_line">
					<div id="tax_title">INVOICE DATE</div>
					<div id="tax_value">1234567</div>
				</div>
				<p>DUE IMMEDIATELY</p>
				<div id="tax_line" style="margin-top: -20px">
					<div id="tax_title" class="over_title">OVERDUE</div>
					<div id="tax_value" class="over_value">$12,345</div>
				</div>
			</div>
		</div>
		<div id="second_part">
			<div id="item">
				<div id="content">Previous Balance</div>
				<div id="value">$1,000</div>				
			</div>
			<div id="operator"><p>+</p></div>
			<div id="item">
				<div id="content">This Bill</div>
				<div id="value">$1,000</div>				
			</div>
			<div id="operator"><p>-</p></div>
			<div id="item">
				<div id="content">Recent Payment</div>
				<div id="value">$1,000</div>				
			</div>
			<div id="result"><p>=</p></div>
			<div id="item">
				<div id="content">Recent Payment</div>
				<div id="value">$1,000</div>				
			</div>
		</div>
		<div id="third_part">
			<p id="title">ACCOUNT SUMMARY</p>
			<div id="datas">
				<div id="name">Fixed Line Voice</div>
				<div id="datas_value">$0.00</div>
			</div>
			<div id="datas">
				<div id="name">Mobile Voice</div>
				<div id="datas_value">$0.00</div>
			</div>
			<div id="datas">
				<div id="name">Data</div>
				<div id="datas_value">$0.00</div>
			</div>
			<div id="datas">
				<div id="name">Services</div>
				<div id="datas_value">$0.00</div>
			</div>
			<div id="datas">
				<div id="name">Account Charges</div>
				<div id="datas_value">$0.00</div>
			</div>
			<div id="datas">
				<div id="name">GST</div>
				<div id="datas_value">$0.00</div>
			</div>
			<div id="datas">
				<div style="font-size: 50px; width: 82%; font-weight:bold; color: #FE9900">Total for this Invoice</div>
				<div style="font-size: 50px;">$0.00</div>
			</div>
		</div>
		<hr style="width: 80%; "/>
		<div id="fourth_part">
			<div id="comment">
				<div style="font-size: 36px; font-weight: bold;"><p>Payment Details</p></div>
				<div id="columns">
					<div id="debit">
						<p>Direct Debit:</p>
						<span>Protected Networks Pty</span><br/>
						<span>Ltd</span><br/>
						<span>BSB: 03315</span><br/>
						<span>Account: 178854</span>
					</div>
					<div id="cheque">
						<p>Cheque:</p>
						<span>Protected Networks</span><br/>
						<span>Shop 30, 506-514 Botany Road</span><br/>
						<span>Alexandria NSW 2015</span>						
					</div>
				</div>
			</div>
			<div id="taxi_invoice">				
				<div id="tax_line">
					<div id="tax_title">INVOICE ID</div>
					<div id="tax_value">1234567</div>
				</div>
				<div id="tax_line">
					<div id="tax_title">DATE DUE</div>
					<div id="tax_value">6/7/2019</div>
				</div>
				<div id="tax_line">
					<div id="tax_title">TOTAL</div>
					<div id="tax_value">$1,000</div>
				</div>				
			</div>
		</div>
		
		<div id="fifth_part">
			<div id="payment_detail">
				<span style="margin-right: 100px">Credit Card Payment Details:</span> 
				<input type="checkbox" style="width: 25px; height: 25px; margin-right: 30px" name="visa" value=""></input><span style="margin-right: 100px">Visa</span>	
				<input type="checkbox" style="width: 25px; height: 25px; margin-right: 30px" name="mastercard" value=""></input><span>MasterCard</span>	
			</div>
			<div id="card_number">
				<span style="margin-right: 50px">Card Number:</span> 
				<input type="text" style="margin-right: 5px" name="number" value=""></input>
				<input type="text" style="margin-right: 5px" name="number" value=""></input>
				<input type="text" style="margin-right: 5px" name="number" value=""></input>
				<input type="text" style="margin-right: 25px" name="number" value=""></input>

				<input type="text" style="margin-right: 5px" name="number" value=""></input>
				<input type="text" style="margin-right: 5px" name="number" value=""></input>
				<input type="text" style="margin-right: 5px" name="number" value=""></input>
				<input type="text" style="margin-right: 25px" name="number" value=""></input>

				<input type="text" style="margin-right: 5px" name="number" value=""></input>
				<input type="text" style="margin-right: 5px" name="number" value=""></input>
				<input type="text" style="margin-right: 5px" name="number" value=""></input>
				<input type="text" style="margin-right: 25px" name="number" value=""></input>

				<input type="text" style="margin-right: 5px" name="number" value=""></input>
				<input type="text" style="margin-right: 5px" name="number" value=""></input>
				<input type="text" style="margin-right: 5px" name="number" value=""></input>
				<input type="text" style="margin-right: 25px" name="number" value=""></input>
				
			</div>
			<div id="card_name">
				<span style="margin-right: 50px">Cardholder's Name:</span> 
				<input type="text" style="margin-right: 50px; width: 50%;"></input><span style="margin-right: 30px">Expiry</span>
				<input type="text" style="margin-right: 5px"></input>
				<input type="text" style="margin-right: 5px"></input> <span style="font-size: 40px; font-weight: bold">/</span> 
				<input type="text" style="margin-right: 5px"></input>
				<input type="text" style="margin-right: 5px"></input>		
			</div>
		</div>
		
		
	</div>
	

  </body>
  </html>
</xsl:template>
</xsl:stylesheet>