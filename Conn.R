library(DBI)
con <- dbConnect(odbc::odbc(), .connection_string = 
                     "Driver={SQL Server};
server={10.10.11.17}; 
database={SAM_DW}; 
uid={adm.sam}; 
pwd={w4otvGR6N32M4uR9};    ")

datacon <- dbReadTable(con, SQL("dbo.SpeedSAMBMO204"))
datacon <- data.frame(datacon[1:240,3])
data 	<- data.frame ("1" = datacon[1:24,],
						"2" = datacon[25:48,],
						"3" = datacon[49:72,],
						"4" = datacon[73:96,],
						"5" = datacon[97:120,],
						"6" = datacon[121:144,],
						"7" = datacon[145:168,],
						"8" = datacon[169:192,],
						"9" = datacon[193:216,],
						"10" = datacon[217:240,]);
