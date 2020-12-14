# Google sheet

## query

=QUERY(employees!A:D,"select A where C = '"&B2&"'")

arrayformula for query is not supported

## vlookup

=ARRAYFORMULA(VLOOKUP(B3:B,{employees!C2:C, employees!D2:D},2,false))
