SELECT CONCAT('ALTER TABLE ', table_name, 
              ' MODIFY ', column_name, 
              ' ', column_type, ' AUTO_INCREMENT;') 
FROM information_schema.columns
WHERE table_schema = 'pizzeria3' 
  AND column_key = 'PRI' 
  AND data_type = 'int';

ALTER TABLE COMANDES
    MODIFY estat ENUM('en preparació', 'lliurada', 'cancel·lada') NOT NULL;

ALTER TABLE PIZZES_INGREDIENTS
    ADD CONSTRAINT chk_grams_per_ingredient CHECK (grams_per_ingredient BETWEEN 10 AND 30);



/*ALTER TABLE AL·LERGÒGENS MODIFY id int AUTO_INCREMENT;
ALTER TABLE COMANDES MODIFY num_comanda int AUTO_INCREMENT;
ALTER TABLE COMANDES_PIZZES MODIFY id_pizza int AUTO_INCREMENT;
ALTER TABLE COMANDES_PIZZES MODIFY id_comanda int AUTO_INCREMENT;
ALTER TABLE INGREDIENTS MODIFY id int AUTO_INCREMENT;
ALTER TABLE INGREDIENTS_AL·LERGÒGENS MODIFY id_ingredient int AUTO_INCREMENT;
ALTER TABLE INGREDIENTS_AL·LERGÒGENS MODIFY id_alergogen int AUTO_INCREMENT;
ALTER TABLE MASSES MODIFY id int AUTO_INCREMENT;
ALTER TABLE PIZZES MODIFY id int AUTO_INCREMENT;
ALTER TABLE PIZZES_INGREDIENTS MODIFY id_pizza int AUTO_INCREMENT;
ALTER TABLE PIZZES_INGREDIENTS MODIFY id_ingredient int AUTO_INCREMENT;
ALTER TABLE PIZZES_MASSES MODIFY id_pizza int AUTO_INCREMENT;
ALTER TABLE PIZZES_MASSES MODIFY id_massa int AUTO_INCREMENT;
ALTER TABLE TIPUS_INGREDIENTS MODIFY id int AUTO_INCREMENT;*/
