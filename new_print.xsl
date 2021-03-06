<?xml version="1.0" encoding="UTF-8"?>
<!--Designed and generated by Altova StyleVision Enterprise Edition 2010 rel. 3 sp1 - see http://www.altova.com/stylevision for more information.-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:clitype="clitype" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:iso4217="http://www.xbrl.org/2003/iso4217" xmlns:ix="http://www.xbrl.org/2008/inlineXBRL" xmlns:java="java" xmlns:link="http://www.xbrl.org/2003/linkbase" xmlns:xbrldi="http://xbrl.org/2006/xbrldi" xmlns:xbrli="http://www.xbrl.org/2003/instance" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:altova="http://www.altova.com" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:svg="http://www.w3.org/2000/svg" exclude-result-prefixes="clitype fn iso4217 ix java link xbrldi xbrli xlink xs xsi altova">
	<xsl:output version="1.0" method="xml" encoding="UTF-8" indent="no"/>		
	<xsl:variable name="fo:layout-master-set">
		<fo:layout-master-set>
			<fo:simple-page-master master-name="new_print" margin-left="0.5cm" margin-right="0.5cm" page-height="13.5in" page-width="8.50in">
				<fo:region-body margin-top="0.1in" margin-bottom="0.1in" margin-left="0cm" margin-right="0cm"/>
				<fo:region-before region-name="pageHead" extent="0.1in" />
				<fo:region-after region-name="pageFoot" extent="0.5in" />
			</fo:simple-page-master>			
		</fo:layout-master-set>
	</xsl:variable>
	<xsl:variable name="border" select="'2pt solid #F1521B'" />
	
	<xsl:template match="/">
		<fo:root>
			<xsl:copy-of select="$fo:layout-master-set"/>
			<fo:page-sequence force-page-count="no-force" master-reference="new_print" initial-page-number="auto" format="1">
				<fo:static-content flow-name="pageFoot">
					<fo:block font-weight="bold" text-align="left">
						Protected Networks Invoice 1292
					</fo:block>
				</fo:static-content>

				<fo:flow flow-name="xsl-region-body">
					<fo:block font-size="20pt" text-align="center" margin-top="10pt" font-weight="bold">
						Date Fees
					</fo:block>
					<fo:table width="100%" table-layout="fixed" text-align="left" border-bottom-width="thin" border-bottom-style="solid" 
						border-bottom-color="#000" font-size="10pt" space-before="20pt" line-height="15pt" margin-bottom="20pt">
						<fo:table-column column-width="10%"/>
						<fo:table-column column-width="20%"/>
						<fo:table-column column-width="40%"/>
						<fo:table-column column-width="15%"/>
						<fo:table-column column-width="15%"/>
						<fo:table-header background-color="#F1521B" font-weight="bold" color="#fff">
							<fo:table-row padding="5mm">
								<fo:table-cell padding="3mm" >
									<fo:block font-weight="bold">Date</fo:block>
								</fo:table-cell>
								<fo:table-cell padding="3mm">
									<fo:block font-weight="bold">Site</fo:block>
								</fo:table-cell>
								<fo:table-cell padding="3mm" >
									<fo:block font-weight="bold">Description</fo:block>
								</fo:table-cell>
								<fo:table-cell padding="3mm">
									<fo:block font-weight="bold">Charge</fo:block>
								</fo:table-cell>
								<fo:table-cell padding="3mm" >
									<fo:block font-weight="bold">Amount</fo:block>
								</fo:table-cell>								
							</fo:table-row>
						</fo:table-header>
						<fo:table-body color="#000" background-color="#fff">
							<xsl:for-each select="catalog/cd">
								<fo:table-row>
									<fo:table-cell padding="2mm">
										<fo:block>
											<xsl:value-of select="Date"/>											
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2mm">
										<fo:block>
											<xsl:value-of select="Site"/>											
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2mm">
										<fo:block>
											<xsl:value-of select="Description"/>											
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2mm">
										<fo:block>
											<xsl:value-of select="Charge"/>											
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2mm">
										<fo:block>
											<xsl:value-of select="Amount"/>											
										</fo:block>
									</fo:table-cell>									
								</fo:table-row>
							</xsl:for-each>
						</fo:table-body>
					</fo:table>
					
					<fo:block text-align="right" margin-right="5%" font-size="14pt" font-weight="bold" margin-bottom="100pt">
						<fo:table width="100%">
							<fo:table-column column-width="50%"/>
							<fo:table-column column-width="35%"/>
							<fo:table-column column-width="15%"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell><fo:block></fo:block></fo:table-cell>
									<fo:table-cell><fo:block text-align="right">TOTAL DATA FEE</fo:block></fo:table-cell>
									<fo:table-cell><fo:block text-align="right">$4,200.00</fo:block></fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block text-align="center" font-size="18pt" font-weight="bold" margin-bottom="20pt">
						Terms and Conditions	
					</fo:block>					
					<fo:block margin-left="1cm" margin-right="1cm" text-align="left" font-size="8pt">
						Please note that it is an express condition of our terms of trade (published at http:/www.protectednetworks.com.au/termsandconditions) that all invoices are to be paid with in seven (7) days of the date of invoice (due date). In the event that payment is not made by the due date Protected Networks shall exercise it???s contractual right to disconnect your internet without notice. A reconnection fee of $500 plus GST applies. Please note that it may take up to five (5) working days to re-connect an internet service. Protected Networks is not liable for any direct,indirect or consequential loss or damage you may suffer during any internet disconnection
					</fo:block>

					<fo:block break-after='page'/>
					
					<fo:block >
						<fo:table width="100%">
							<fo:table-column width="60%"/>
							<fo:table-column width="40%"/>							
							<fo:table-body>
								<fo:table-row>									
									<fo:table-cell font-size="9pt" space-after="14pt" space-before="14pt" space-after.precedence="3" space-before.precedence="3">
										<fo:block><fo:external-graphic content-width="scale-to-fit" content-height="100%" width="100%" scaling="uniform" src="url('logo.png')"  /></fo:block>
										<fo:block margin-bottom="10pt">
											Enquiries: 130 367 205 | accounts@protectednetworks.com.au
										</fo:block>
										<fo:block margin-bottom="10pt" font-weight="bold" margin-left="2cm">
											OCE Australia Ltd
										</fo:block>
										<fo:block font-weight="bold" margin-left="2cm">
											2 International Court
										</fo:block>
										<fo:block font-weight="bold" margin-left="2cm">
											Caribbean Business Park
										</fo:block>
										<fo:block font-weight="bold" margin-left="2cm">
											Scoresby
										</fo:block>
										<fo:block font-weight="bold" margin-left="2cm">
											VIC 3179
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-size="10pt">
										<fo:block margin-top="15pt" margin-bottom="20pt" text-align="center" font-weight="bold">TAX INVOICE</fo:block>
										<fo:table text-align="center" margin-bottom="1mm">
											<fo:table-column width="60%" border="{$border}"/>
											<fo:table-column width="60%" border="{$border}"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell background-color="#F1521B" padding-top="1mm" padding-bottom="1mm">
														<fo:block  color="#fff">ACCOUNT NUMBER</fo:block>
													</fo:table-cell>
													<fo:table-cell  padding-top="1mm" padding-bottom="1mm">
														<fo:block>1234567</fo:block>
													</fo:table-cell>													
												</fo:table-row>												
											</fo:table-body>
										</fo:table>
										<fo:table text-align="center" margin-bottom="1mm">
											<fo:table-column width="60%" border="{$border}"/>
											<fo:table-column width="60%" border="{$border}"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell background-color="#F1521B" padding-top="1mm" padding-bottom="1mm">
														<fo:block  color="#fff">INVOICE ID</fo:block>
													</fo:table-cell>
													<fo:table-cell  padding-top="1mm" padding-bottom="1mm">
														<fo:block>1234567</fo:block>
													</fo:table-cell>													
												</fo:table-row>												
											</fo:table-body>
										</fo:table>
										<fo:table text-align="center" margin-bottom="1cm">
											<fo:table-column width="60%" border="{$border}"/>
											<fo:table-column width="60%" border="{$border}"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell background-color="#F1521B" padding-top="1mm" padding-bottom="1mm">
														<fo:block  color="#fff">INVOICE DATE</fo:block>
													</fo:table-cell>
													<fo:table-cell  padding-top="1mm" padding-bottom="1mm">
														<fo:block>1234567</fo:block>
													</fo:table-cell>													
												</fo:table-row>												
											</fo:table-body>
										</fo:table>
										
										<fo:block font-weight="bold" text-align="center">DUE IMMEDIATELY</fo:block>
										
										<fo:table text-align="center" margin-bottom="1cm">
											<fo:table-column width="60%" border="{$border}"/>
											<fo:table-column width="60%" border="{$border}"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell background-color="#000" padding-top="1mm" padding-bottom="1mm">
														<fo:block  color="#fff">OVER DUE</fo:block>
													</fo:table-cell>
													<fo:table-cell  padding-top="1mm" padding-bottom="1mm">
														<fo:block>$12,345</fo:block>
													</fo:table-cell>													
												</fo:table-row>												
											</fo:table-body>
										</fo:table>
										
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block> 
					
					<fo:block margin-left="5mm" margin-top="50pt" margin-right="5mm">
						<fo:table font-size="9pt">
							<fo:table-column column-width="24%"/>
							<fo:table-column column-width="1%" />
							<fo:table-column column-width="24%" />
							<fo:table-column column-width="1%" />
							<fo:table-column column-width="24%" />
							<fo:table-column column-width="2%" />
							<fo:table-column column-width="24%" />
							<fo:table-body>
								<fo:table-row text-align="center">
									<fo:table-cell>
										<fo:block background-color="#F1521B" border="{$border}" padding-top="1mm" padding-bottom="1mm" color="#fff">Previous Balance</fo:block>
										<fo:block border="{$border}" font-weight="bold" padding-top="1mm" padding-bottom="1mm">$1,000</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" margin-top="10pt" margin-left="-12pt" font-size="20pt">+</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F1521B" border="{$border}" padding-top="1mm" padding-bottom="1mm" color="#fff">This Bill</fo:block>
										<fo:block border="{$border}" font-weight="bold" padding-top="1mm" padding-bottom="1mm">$1,000</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" margin-top="10pt" margin-left="-12pt" font-size="20pt">-</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F1521B" border="{$border}" padding-top="1mm" padding-bottom="1mm" color="#fff">Recent Payment</fo:block>
										<fo:block border="{$border}" font-weight="bold" padding-top="1mm" padding-bottom="1mm">$1,000</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" margin-top="10pt" margin-left="-10pt" font-size="20pt">=</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F1521B" border="{$border}" padding-top="1mm" padding-bottom="1mm" color="#fff">Recent Payment</fo:block>
										<fo:block border="{$border}" font-weight="bold" padding-top="1mm" padding-bottom="1mm">$1,000</fo:block>
									</fo:table-cell>								
								</fo:table-row>								
							</fo:table-body>								
						</fo:table>
					</fo:block>
					
					<fo:block font-size="18pt" font-weight="bold" text-align="center" color="#FE9900" margin-top="50pt">ACCOUNT SUMMARY</fo:block>
					
					<fo:block margin-top="30pt" margin-bottom="20pt" margin-left="13%">
						<fo:table width="60%" font-size="14pt" margin-bottom="15pt">
							<fo:table-column column-width="80%" />
							<fo:table-column column-width="20%" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell color="#F1521B"><fo:block>Fixed Line Voice</fo:block></fo:table-cell>
									<fo:table-cell><fo:block>$0.00</fo:block></fo:table-cell>
								</fo:table-row>								
							</fo:table-body>
						</fo:table>
						<fo:table width="60%" font-size="14pt" margin-bottom="15pt">
							<fo:table-column column-width="80%" />
							<fo:table-column column-width="20%" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell color="#F1521B"><fo:block>Mobile Voice</fo:block></fo:table-cell>
									<fo:table-cell><fo:block>$0.00</fo:block></fo:table-cell>
								</fo:table-row>								
							</fo:table-body>
						</fo:table>
						<fo:table width="60%" font-size="14pt" margin-bottom="15pt">
							<fo:table-column column-width="80%" />
							<fo:table-column column-width="20%" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell color="#F1521B"><fo:block>Data</fo:block></fo:table-cell>
									<fo:table-cell><fo:block>$0.00</fo:block></fo:table-cell>
								</fo:table-row>								
							</fo:table-body>
						</fo:table>
						<fo:table width="60%" font-size="14pt" margin-bottom="15pt">
							<fo:table-column column-width="80%" />
							<fo:table-column column-width="20%" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell color="#F1521B"><fo:block>Services</fo:block></fo:table-cell>
									<fo:table-cell><fo:block>$0.00</fo:block></fo:table-cell>
								</fo:table-row>								
							</fo:table-body>
						</fo:table>
						<fo:table width="60%" font-size="14pt" margin-bottom="15pt">
							<fo:table-column column-width="80%" />
							<fo:table-column column-width="20%" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell color="#F1521B"><fo:block>Account Charges</fo:block></fo:table-cell>
									<fo:table-cell><fo:block>$0.00</fo:block></fo:table-cell>
								</fo:table-row>								
							</fo:table-body>
						</fo:table>
						<fo:table width="60%" font-size="14pt" margin-bottom="15pt">
							<fo:table-column column-width="80%" />
							<fo:table-column column-width="20%" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell color="#F1521B"><fo:block>GST</fo:block></fo:table-cell>
									<fo:table-cell><fo:block>$0.00</fo:block></fo:table-cell>
								</fo:table-row>								
							</fo:table-body>
						</fo:table>
						<fo:table width="60%" font-size="16pt" font-weight="bold" margin-bottom="15pt">
							<fo:table-column column-width="80%" />
							<fo:table-column column-width="20%" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell color="#FE9900"><fo:block>Total for this Invoice</fo:block></fo:table-cell>
									<fo:table-cell><fo:block>$0.00</fo:block></fo:table-cell>
								</fo:table-row>								
							</fo:table-body>
						</fo:table>						
					</fo:block>
					<fo:block width="6in" border-bottom-style="solid" border-bottom-width="0.5mm" text-align="center" margin-bottom="30pt"></fo:block>
					
					<fo:block margin-left="3mm" margin-right="3mm">
						<fo:table>
							<fo:table-column column-width="60%" />
							<fo:table-column column-width="40%" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-weight="bold">Payment Details</fo:block>
										<fo:table>
												<fo:table-column column-width="50%"/>
												<fo:table-column column-width="50%"/>
												<fo:table-body>
													<fo:table-cell font-size="9pt" margin-left="0mm">
														<fo:block margin-top="20pt" margin-bottom="20pt">Direct Debit:</fo:block>
														<fo:block >Protected Networks Pty</fo:block>
														<fo:block >Ltd</fo:block>
														<fo:block >BSB: 03315</fo:block>
														<fo:block >Account: 178854</fo:block>
													</fo:table-cell>
													<fo:table-cell font-size="9pt" margin-left="-3mm">
														<fo:block margin-top="20pt" margin-bottom="20pt">Cheque:</fo:block>
														<fo:block >Protected Networks</fo:block>
														<fo:block >Shop 30, 506-514 Botany Road</fo:block>
														<fo:block >Alexandria NSW 2015</fo:block>				
													</fo:table-cell>
												</fo:table-body>
											</fo:table>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="10pt">
											<fo:table text-align="center" margin-bottom="2mm">
												<fo:table-column width="60%" border="{$border}"/>
												<fo:table-column width="60%" border="{$border}"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell background-color="#F1521B" padding-top="1mm" padding-bottom="1mm">
															<fo:block  color="#fff">INVOICE ID</fo:block>
														</fo:table-cell>
														<fo:table-cell  padding-top="1mm" padding-bottom="1mm">
															<fo:block>1234567</fo:block>
														</fo:table-cell>													
													</fo:table-row>												
												</fo:table-body>
											</fo:table>
											<fo:table text-align="center" margin-bottom="2mm">
												<fo:table-column width="60%" border="{$border}"/>
												<fo:table-column width="60%" border="{$border}"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell background-color="#F1521B" padding-top="1mm" padding-bottom="1mm">
															<fo:block  color="#fff">DATE DUE</fo:block>
														</fo:table-cell>
														<fo:table-cell  padding-top="1mm" padding-bottom="1mm">
															<fo:block>6/7/2019</fo:block>
														</fo:table-cell>													
													</fo:table-row>												
												</fo:table-body>
											</fo:table>
											<fo:table text-align="center">
												<fo:table-column width="60%" border="{$border}"/>
												<fo:table-column width="60%" border="{$border}"/>
												<fo:table-body>
													<fo:table-row>
														<fo:table-cell background-color="#F1521B" padding-top="1mm" padding-bottom="1mm">
															<fo:block  color="#fff">TOTAL</fo:block>
														</fo:table-cell>
														<fo:table-cell  padding-top="1mm" padding-bottom="1mm">
															<fo:block>$1,000</fo:block>
														</fo:table-cell>													
													</fo:table-row>												
												</fo:table-body>
											</fo:table>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						
						<fo:table margin-top="20pt" font-size="10pt">
							<fo:table-column column-width="33%"/>
							<fo:table-column column-width="2%"/>
							<fo:table-column column-width="15%"/>
							<fo:table-column column-width="2%"/>
							<fo:table-column column-width="48%"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block>Credit Card Payment Details:</fo:block>
									</fo:table-cell>
									<fo:table-cell border-width="1pt" border-style="solid" border-color="#F1521B">
										<fo:block></fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>Visa</fo:block>
									</fo:table-cell>
									<fo:table-cell border-width="1pt" border-style="solid" border-color="#F1521B">
										<fo:block></fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>MasterCard</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						
						<fo:table margin-top="20pt">
							<fo:table-column column-width="18%"/>
							
							<fo:table-column column-width="2%"/>
							<fo:table-column column-width="2mm"/>
							<fo:table-column column-width="2%"/>
							<fo:table-column column-width="2mm"/>
							<fo:table-column column-width="2%"/>
							<fo:table-column column-width="2mm"/>
							<fo:table-column column-width="2%"/>
							<fo:table-column column-width="2%"/>
							
							<fo:table-column column-width="2%"/>
							<fo:table-column column-width="2mm"/>
							<fo:table-column column-width="2%"/>
							<fo:table-column column-width="2mm"/>
							<fo:table-column column-width="2%"/>
							<fo:table-column column-width="2mm"/>
							<fo:table-column column-width="2%"/>
							<fo:table-column column-width="2%"/>
							
							<fo:table-column column-width="2%"/>
							<fo:table-column column-width="2mm"/>
							<fo:table-column column-width="2%"/>
							<fo:table-column column-width="2mm"/>
							<fo:table-column column-width="2%"/>
							<fo:table-column column-width="2mm"/>
							<fo:table-column column-width="2%"/>
							<fo:table-column column-width="2%"/>
							
							<fo:table-column column-width="2%"/>
							<fo:table-column column-width="2mm"/>
							<fo:table-column column-width="2%"/>
							<fo:table-column column-width="2mm"/>
							<fo:table-column column-width="2%"/>
							<fo:table-column column-width="2mm"/>
							<fo:table-column column-width="2%"/>
							
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell><fo:block font-size="10pt">Card Number: </fo:block></fo:table-cell>
									
									<fo:table-cell font-size="14pt" border-width="1pt" border-style="solid" border-color="#F1521B"><fo:block> </fo:block></fo:table-cell>
									<fo:table-cell><fo:block></fo:block></fo:table-cell>
									<fo:table-cell font-size="14pt" border-width="1pt" border-style="solid" border-color="#F1521B"><fo:block> </fo:block></fo:table-cell>
									<fo:table-cell><fo:block></fo:block></fo:table-cell>
									<fo:table-cell font-size="14pt" border-width="1pt" border-style="solid" border-color="#F1521B"><fo:block> </fo:block></fo:table-cell>
									<fo:table-cell><fo:block></fo:block></fo:table-cell>
									<fo:table-cell font-size="14pt" border-width="1pt" border-style="solid" border-color="#F1521B"><fo:block> </fo:block></fo:table-cell>
									<fo:table-cell><fo:block></fo:block></fo:table-cell>									
									
									<fo:table-cell font-size="14pt" border-width="1pt" border-style="solid" border-color="#F1521B"><fo:block> </fo:block></fo:table-cell>
									<fo:table-cell><fo:block></fo:block></fo:table-cell>
									<fo:table-cell font-size="14pt" border-width="1pt" border-style="solid" border-color="#F1521B"><fo:block> </fo:block></fo:table-cell>
									<fo:table-cell><fo:block></fo:block></fo:table-cell>
									<fo:table-cell font-size="14pt" border-width="1pt" border-style="solid" border-color="#F1521B"><fo:block> </fo:block></fo:table-cell>
									<fo:table-cell><fo:block></fo:block></fo:table-cell>
									<fo:table-cell font-size="14pt" border-width="1pt" border-style="solid" border-color="#F1521B"><fo:block> </fo:block></fo:table-cell>
									<fo:table-cell><fo:block></fo:block></fo:table-cell>
									
									<fo:table-cell font-size="14pt" border-width="1pt" border-style="solid" border-color="#F1521B"><fo:block> </fo:block></fo:table-cell>
									<fo:table-cell><fo:block></fo:block></fo:table-cell>
									<fo:table-cell font-size="14pt" border-width="1pt" border-style="solid" border-color="#F1521B"><fo:block> </fo:block></fo:table-cell>
									<fo:table-cell><fo:block></fo:block></fo:table-cell>
									<fo:table-cell font-size="14pt" border-width="1pt" border-style="solid" border-color="#F1521B"><fo:block> </fo:block></fo:table-cell>
									<fo:table-cell><fo:block></fo:block></fo:table-cell>
									<fo:table-cell font-size="14pt" border-width="1pt" border-style="solid" border-color="#F1521B"><fo:block> </fo:block></fo:table-cell>
									<fo:table-cell><fo:block></fo:block></fo:table-cell>
									
									<fo:table-cell font-size="14pt" border-width="1pt" border-style="solid" border-color="#F1521B"><fo:block> </fo:block></fo:table-cell>
									<fo:table-cell><fo:block></fo:block></fo:table-cell>
									<fo:table-cell font-size="14pt" border-width="1pt" border-style="solid" border-color="#F1521B"><fo:block> </fo:block></fo:table-cell>
									<fo:table-cell><fo:block></fo:block></fo:table-cell>
									<fo:table-cell font-size="14pt" border-width="1pt" border-style="solid" border-color="#F1521B"><fo:block> </fo:block></fo:table-cell>
									<fo:table-cell><fo:block></fo:block></fo:table-cell>
									<fo:table-cell font-size="14pt" border-width="1pt" border-style="solid" border-color="#F1521B"><fo:block> </fo:block></fo:table-cell>									
																		
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						
						<fo:table margin-top="20pt">
							<fo:table-column column-width="20%"/>
							<fo:table-column column-width="40%"/>
							<fo:table-column column-width="10%"/>
							<fo:table-column column-width="3%"/>
							<fo:table-column column-width="2mm"/>
							<fo:table-column column-width="3%"/>							
							<fo:table-column column-width="3%"/>
							<fo:table-column column-width="3%"/>
							<fo:table-column column-width="2mm"/>
							<fo:table-column column-width="3%"/>
							<fo:table-body>
								<fo:table-cell font-size="10pt"><fo:block>Cardholder's Name:</fo:block></fo:table-cell>
								<fo:table-cell font-size="14pt" border-bottom-style="solid" border-bottom-width="1pt" border-bottom-color="#F1521B"><fo:block> </fo:block></fo:table-cell>
								<fo:table-cell font-size="10pt" text-align="right"><fo:block>Expiry:</fo:block></fo:table-cell>
								<fo:table-cell font-size="14pt" border-style="solid" border-color="#F1521B" border-width="1pt"><fo:block > </fo:block></fo:table-cell>
								<fo:table-cell font-size="14pt"><fo:block> </fo:block></fo:table-cell>
								<fo:table-cell font-size="14pt" border-style="solid" border-color="#F1521B" border-width="1pt"><fo:block> </fo:block></fo:table-cell>								
								<fo:table-cell font-size="14pt" text-align="center"><fo:block>/</fo:block></fo:table-cell>
								<fo:table-cell font-size="14pt" border-style="solid" border-color="#F1521B" border-width="1pt"><fo:block> </fo:block></fo:table-cell>
								<fo:table-cell font-size="14pt"><fo:block> </fo:block></fo:table-cell>
								<fo:table-cell font-size="14pt" border-style="solid" border-color="#F1521B" border-width="1pt"><fo:block> </fo:block></fo:table-cell>								
							</fo:table-body>
						</fo:table>
						
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>	
		
</xsl:stylesheet>
