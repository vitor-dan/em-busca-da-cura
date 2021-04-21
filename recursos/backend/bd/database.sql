DROP DATABASE IF EXISTS proj_sis_int;

CREATE DATABASE proj_sis_int;

USE proj_sis_int;

CREATE TABLE usuario (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_usuario VARCHAR(24),
    senha VARCHAR(64),
    data_registro TIMESTAMP,
    genero CHAR(1)
);

INSERT INTO usuario (nome_usuario,senha) VALUES ("Ciaran D. Guzman","FHR19PGW3CC"),("James M. Coffey","WQZ07XML1ID"),("Hanae X. Ferrell","MKT87LHH5FX"),("Dante L. Reid","BWM51OXB8MW"),("Herrod W. Neal","BBZ92QRS6SE"),("Shay H. Ortiz","RWI40LLY9FZ"),("Brooke T. Crosby","PXD91FIN3HJ"),("Kermit I. Langley","DMP36GXU7CB"),("Lunea Q. Pugh","RZM97UUY3UW"),("Amos H. Serrano","DOM51IKX4TB"),("Amir N. Hill","DTL35AQS2VN"),("Walter H. Stafford","IRP01JHK4FM"),("Mollie K. Vargas","MHU04EMS2VZ"),("Harper U. Williams","DQR74RKS9KS"),("Amal G. Blanchard","BIP94CPR0EV"),("Jonah U. Singleton","ZZO21SAD2LH"),("Prescott K. Todd","GNQ18BAW6WO"),("Kimberly M. Newman","MLJ75YXG9FV"),("Dane F. Nunez","LAI99VMX3SW"),("Larissa E. Frost","SEE87RBT3QC"),("Kim W. Fowler","CEK34YBP2AV"),("Pearl C. Diaz","FOT42FZY9RN"),("Nadine R. Cochran","GJJ05VUH6TR"),("Vera P. Franklin","YDM80OCL7WQ"),("Ruby L. Frye","OQI20LNG7MB"),("Jolie M. Farmer","KMM49WLR9HZ"),("Gage X. Gregory","MEQ38XNZ9II"),("Sara U. Ayala","BUH69NXM5CK"),("Alma R. Brown","XQM64YBL6ZL"),("Dylan A. Le","SHL77NAP0TM"),("Malachi G. Ochoa","APE42SIL1FF"),("Adrian A. Crosby","VLX72PWD3RZ"),("Leslie S. Carroll","GVE18DSP9YM"),("Quemby L. Powell","JZR37OBO8OE"),("Reagan H. Mendoza","QBV92FAD5OY"),("Craig B. Dominguez","VBK78TNT3FZ"),("Thomas Q. Mcconnell","ITE48SNC9AX"),("Dana G. Webster","EEK11RSI5NZ"),("Reuben R. Nash","GCB46FFK9CR"),("Martena M. Blankenship","ZPH07AJQ2DL"),("Kellie N. Singleton","LYB58YKB4KC"),("Alfreda X. Alvarez","MMH73TNX9WI"),("Otto G. Powell","LPD38SEH7VF"),("Rose I. Clemons","EUA94AJU7DV"),("Griffin V. Emerson","IBX66RFM6HJ"),("Mariko D. Rutledge","IDI70BKC5ON"),("Blaine Z. Merrill","IGL90OIG5TT"),("Leonard P. Sanchez","IUE84GDQ6QN"),("Kimberly H. Warren","QEM55BWC6QR"),("Fritz X. Jacobs","EMF96BVL9OL"),("Ursa H. Gallagher","BLR13JTQ4EF"),("Dylan S. Rich","VLU10CEL6KS"),("Rhoda T. Guzman","VPA01TQE3GT"),("Lysandra R. Curry","KLW78DYQ3DY"),("Imani R. Camacho","GMC64RRS9VE"),("Julie K. Nguyen","CEC57RZR8BB"),("Alexis A. Reyes","WJE29DRD5HT"),("Mannix G. Ewing","YSL70ZRU0PH"),("Stella M. Stein","SXH58YEA6ZY"),("Brenna W. Olson","LCA85GBI1MW"),("Caldwell N. Mcgee","ZQW70OFH7VF"),("Keegan S. Macdonald","WLV41YYT6IC"),("Kylan J. Rodgers","POV59TZF0MQ"),("Cade D. Rivers","ETP52NAK8DQ"),("Amela Y. Lyons","PMO32ZTN9JZ"),("Cody D. Garner","VYF28HEI8IL"),("Clark D. Dalton","UYP45IWX9YK"),("Alan L. Austin","UTW30LKV9ON"),("Rowan Z. Yates","UPQ85YQR0FP"),("Roary V. Serrano","ZGM84YIM3ZX"),("Quail C. Ruiz","YWP81AQC2AM"),("Walter L. Kidd","JNM45CVG9HP"),("Melinda U. Cross","LHF13NSZ8AY"),("Ivory Q. Lewis","ZWW41DGQ3RY"),("Kermit W. Kirk","XAQ04LPQ0TV"),("Luke B. Petersen","SKX50JQG0DJ"),("Liberty U. Stewart","SKJ92LLY2EX"),("Bethany I. Rush","ZMV80SXT4BE"),("Marshall S. Huber","VWP33YGD5KE"),("Guy X. Hopper","UCR41JCH1ZD"),("Evangeline V. Hopper","AIG79OLT4LF"),("Mason P. Holloway","TYT60WHO4MJ"),("Evangeline T. Combs","TJZ85GNG5PE"),("Tarik H. Rowe","QZK46SBT2EB"),("Leah I. Faulkner","XOA95BMW5AZ"),("Bo N. Mcguire","KKL37BDM9CH"),("Hilel S. Rose","GFK44ASZ7TW"),("Cairo N. Herrera","THM12TRK9VB"),("Rhoda C. Hood","CDD73OVO9FM"),("Ira K. Cox","NYG00DWJ7MK"),("Myra C. Olsen","WIH94IXP6DW"),("Savannah R. Blair","IPI34YVR5HQ"),("Rudyard F. Rutledge","JTE65VQT2LR"),("Sandra P. Reid","GLI96TUT3HE"),("Ruby F. Farley","LQK43VXB0DT"),("Madison C. Stuart","JLI30PYI1FP"),("Colorado X. Bowers","RGM62XBI8LC"),("Chandler U. Christensen","VXS54CAV3JM"),("Alden B. Patterson","SCO72UBZ5QL"),("Mallory S. Harris","DTZ94QIU5NX");

SELECT * FROM usuario;

CREATE TABLE classificacao (
    classificacao_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    pontos INT
);

INSERT INTO classificacao (usuario_id,pontos) VALUES (44,930),(90,602),(98,916),(39,905),(54,870),(53,592),(87,362),(11,366),(7,924),(59,446),(68,702),(3,790),(57,577),(9,569),(4,457),(97,478),(82,764),(36,377),(67,636),(30,853),(91,994),(65,399),(13,515),(65,406),(66,261),(39,784),(34,991),(31,675),(46,545),(16,559),(46,422),(43,177),(33,988),(77,762),(94,882),(22,579),(97,631),(60,118),(95,560),(5,164),(28,102),(15,807),(37,307),(42,854),(54,258),(36,992),(47,346),(6,466),(80,656),(39,633),(95,742),(38,622),(17,204),(10,240),(13,737),(18,612),(60,217),(40,197),(6,376),(68,465),(86,451),(28,615),(43,660),(29,474),(11,840),(23,867),(3,822),(17,392),(78,471),(79,707),(45,966),(85,523),(78,431),(48,829),(47,712),(82,618),(22,575),(4,626),(66,505),(79,662),(72,594),(46,300),(97,785),(37,684),(74,260),(25,242),(53,350),(57,587),(29,108),(95,618),(81,935),(43,978),(84,538),(60,633),(76,639),(77,451),(63,312),(13,659),(60,528),(83,519);

SELECT 
    usuario.usuario_id as id_usuario,
    usuario.nome_usuario as nome,
    MAX(classificacao.pontos) AS pontos
FROM
    classificacao AS classificacao
        INNER JOIN
    usuario AS usuario
WHERE
    usuario.usuario_id = classificacao.usuario_id
GROUP BY usuario_id
ORDER BY classificacao.pontos DESC;