# Google sheet

## query

=arrayformula(QUERY(employees!A:D,"select A where C = '"&B2&"'"))

## vlookup

=ARRAYFORMULA(VLOOKUP(B3:B,{employees!C2:C, employees!D2:D},2,false))
