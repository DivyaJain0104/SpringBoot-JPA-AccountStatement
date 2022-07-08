CREATE TABLE Account(
Id Number Not null Primary key,
    accountType char(15) NOT NULL,
    accountNumber char(13)
   );
 
create sequence account_id start with 1;
   
INSERT INTO Account (id,accountType,accountNumber) 
VALUES (account_id.nextval,'current','0012250016001');

INSERT INTO Account (id,accountType,accountNumber) 
VALUES (account_id.nextval,'savings','0012250016002') 


INSERT INTO Account (id,accountType,accountNumber) 
VALUES (account_id.nextval,'current','0012250016003')

INSERT INTO Account (id,accountType,accountNumber) 
VALUES (account_id.nextval,'savings','0012250016005')

  
select * from account;
   
------------------------------------------------------

CREATE TABLE statement_detail(
Id Number Not null,
account_id Number,
    date_field char(15) NOT NULL,
    amount char(30)NOT NULL
   );

create sequence statement_detail_id start with 1;



insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'09.08.2020','535.197875027054');

insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'15.11.2020','967.410308637791');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'03.09.2020','623.461804295262');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'03.02.2020','330.455004587924');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'19.05.2020','125.51573044332');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'12.03.2020','256.292396032404');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'15.09.2020','87.8901139771573');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'22.06.2020','386.908121686113');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'14.10.2020','196.801905945903');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'25.03.2020','997.740129408144');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'18.04.2020','292.451273402434');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'06.08.2020','909.756451622344');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'01.07.2020','869.966470373683');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'05.05.2020','578.931756366243');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'30.10.2019','798.090576128434');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'30.12.2019','760.885124474776');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'18.06.2019','841.608978747379');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'18.11.2019','332.660036781236');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'19.10.2020','809.629016115109');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'16.02.2020','724.478364643263');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'22.06.2018','59.0315005915503');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'05.07.2018','501.921910891848');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'16.07.2020','320.113318991709');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'24.01.2021','564.982890505824');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'29.11.2020','350.793682741483');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'25.08.2020','565.393814545184');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'05.11.2020','546.183713080865');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'20.02.2020','203.481930294487');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'26.05.2020','191.608098447429');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'29.04.2019','704.496796898777');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'10.02.2013','45.2525260642709');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'19.01.2017','166.470541608144');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'02.08.2017','590.976648547384');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'05.03.2018','43.6814104471397');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'22.09.2020','506.220599737549');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'15.07.2020','971.65314918067');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'30.09.2020','120.960701706629');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'08.01.2021','75.6675618542309');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'18.10.2016','304.375774283414');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'22.12.2016','369.407670060882');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'30.11.2018','736.64602102871');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'11.06.2019','911.610618888086');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'21.10.2019','113.619329901574');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'16.06.2019','619.245684218856');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'14.05.2019','957.272849951391');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'31.05.2019','376.672352972369');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'13.01.2012','893.061976381444');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'03.03.2012','373.950606558506');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'22.04.2012','361.642549453891');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'19.11.2012','328.871655546637');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'15.10.2012','744.591108244252');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'28.04.2012','521.407601583721');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'20.02.2012','387.671104146657');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'15.08.2012','281.312584353948');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'29.10.2012','132.621052481863');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'21.07.2012','960.196377909906');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'14.03.2012','332.588024293528');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'05.05.2012','803.304917411143');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'25.02.2012','440.673849958905');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'29.06.2012','156.589250855257');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'31.07.2012','828.245746980652');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'27.11.2012','859.511497053173');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'18.12.2012','160.447345398501');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'08.10.2012','396.809586959555');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'30.12.2012','811.442741186215');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'25.03.2012','14.9269187221028');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'02.05.2012','726.839850392565');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'11.07.2012','468.968860536063');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'08.01.2012','161.803506518358');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'31.07.2012','15.5828245024958');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'25.08.2012','692.45797995704');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'12.08.2012','427.37803489619');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'18.11.2012','527.281364849103');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'29.04.2012','885.226013343266');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'13.09.2012','516.50763087435');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'02.01.2012','844.605112285653');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'09.09.2012','637.736853984592');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'29.07.2012','218.083070883813');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'18.08.2012','35.0736664520792');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'02.09.2012','907.370284217804');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'20.06.2012','258.669010375204');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'29.08.2012','537.263739510225');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'13.02.2012','651.993429533135');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'17.01.2012','242.216450096382');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'04.05.2012','289.279082576802');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'09.03.2012','165.97566682834');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'11.04.2012','777.115014568259');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'13.07.2012','585.269254817154');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'19.11.2012','10.4978134308631');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'27.12.2012','779.424809135779');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'18.06.2012','327.266323023121');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'05.09.2012','968.120471616201');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'03.10.2012','951.635118894035');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'04.07.2012','113.405299633134');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'21.12.2012','372.091181039037');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'13.12.2012','630.493064253473');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'26.08.2012','502.831036205905');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'04.03.2012','922.443241015351');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'04.10.2012','821.430832386695');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'18.05.2012','502.09601651826');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'24.12.2012','493.139917298629');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'30.01.2012','498.183815659223');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'26.02.2012','390.098416613321');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'19.07.2012','186.851026901941');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'23.03.2012','557.533882076657');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'19.08.2012','995.499177185868');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'19.12.2012','617.614872539574');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'24.09.2012','612.432943321757');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'29.10.2012','148.824332549236');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'20.08.2012','363.735822363735');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'21.05.2012','667.885035206111');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'15.01.2012','732.785475399635');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'16.12.2012','602.336431872139');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'12.02.2012','542.060238218598');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'22.01.2011','191.176568416334');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'04.10.2012','241.272338479315');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'28.06.2012','35.4587802498303');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'17.08.2012','674.999762046767');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'20.03.2012','998.863437297421');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'24.04.2012','420.077961281235');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'08.04.2012','452.220841246041');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'18.06.2012','791.929774199044');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'23.10.2016','23.724589434944');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,2,'30.08.2012','311.78188587574');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'14.10.2012','473.990913074953');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'06.01.2012','363.342967642128');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'27.03.2012','447.121334862574');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'10.09.2012','808.156948217375');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'13.05.2012','508.089633909463');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'14.11.2012','376.917602681929');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,4,'27.07.2012','497.59290145562');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'11.04.2012','110.387438739913');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'25.06.2012','314.429495198656');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'27.04.2012','899.99827846925');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'08.08.2019','518.420620441823');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'23.11.2019','103.422615473659');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'28.06.2020','248.218183086877');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,1,'24.05.2020','301.475914804549');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'28.10.2020','183.480688227474');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'12.06.2020','626.974633072068');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,3,'05.07.2020','38.6996920187093');
insert into statement_detail (ID, account_id, date_field, amount) values (statement_detail_id.nextval,5,'29.09.2020','684.701528590619');

