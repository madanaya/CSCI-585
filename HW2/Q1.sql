CREATE TABLE HotelStays  
(roomNum INTEGER NOT NULL,  
arrDate DATE NOT NULL,  
depDate DATE NOT NULL,  
guestName CHAR(30) NOT NULL,  
PRIMARY KEY (roomNum, arrDate));

alter table HotelStays
add constraint detCheck
check (depDate>=arrDate);

alter table hotelstays
drop primary key; 

alter table hotelstays
add primary key(roomNum);

delete from Hotelstays      
where depDate>SYSDATE  ;
/*this query should be run every day before checking in so that                             
any room that is empty will be availbale to be checked in */
 
