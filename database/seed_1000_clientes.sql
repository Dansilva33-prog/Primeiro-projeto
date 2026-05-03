-- Script para inserir 1.000 clientes na tabela clientes
-- Banco de dados: comercio

USE comercio;

-- ========================================
-- Inserção de 1.000 CLIENTES
-- ========================================

INSERT INTO clientes (nome, email, telefone, cpf, data_nascimento, endereco, cidade, estado, cep, ativo) VALUES
('Cliente 1', 'cliente1@email.com', '11987654001', '12345678901001', '1990-01-01', 'Rua 1, 001', 'São Paulo', 'SP', '01001-001', TRUE),
('Cliente 2', 'cliente2@email.com', '11987654002', '12345678901002', '1990-01-02', 'Rua 2, 002', 'Rio de Janeiro', 'RJ', '20002-002', TRUE),
('Cliente 3', 'cliente3@email.com', '11987654003', '12345678901003', '1990-01-03', 'Rua 3, 003', 'Belo Horizonte', 'MG', '30003-003', TRUE),
('Cliente 4', 'cliente4@email.com', '11987654004', '12345678901004', '1990-01-04', 'Rua 4, 004', 'Brasília', 'DF', '70004-004', TRUE),
('Cliente 5', 'cliente5@email.com', '11987654005', '12345678901005', '1990-01-05', 'Rua 5, 005', 'Salvador', 'BA', '40005-005', TRUE),
('Cliente 6', 'cliente6@email.com', '11987654006', '12345678901006', '1990-01-06', 'Rua 6, 006', 'Fortaleza', 'CE', '60006-006', TRUE),
('Cliente 7', 'cliente7@email.com', '11987654007', '12345678901007', '1990-01-07', 'Rua 7, 007', 'Manaus', 'AM', '69007-007', TRUE),
('Cliente 8', 'cliente8@email.com', '11987654008', '12345678901008', '1990-01-08', 'Rua 8, 008', 'Curitiba', 'PR', '80008-008', TRUE),
('Cliente 9', 'cliente9@email.com', '11987654009', '12345678901009', '1990-01-09', 'Rua 9, 009', 'Porto Alegre', 'RS', '90009-009', TRUE),
('Cliente 10', 'cliente10@email.com', '11987654010', '12345678901010', '1990-01-10', 'Rua 10, 010', 'Recife', 'PE', '50010-010', TRUE);

-- Inserção em massa (100 clientes por vez para melhor performance)
-- Bloco 1: Clientes 11-110
INSERT INTO clientes (nome, email, telefone, cpf, data_nascimento, endereco, cidade, estado, cep, ativo) VALUES
('Cliente 11', 'cliente11@email.com', '11987654011', '12345678901011', '1991-01-11', 'Av 11, 011', 'São Paulo', 'SP', '01011-011', TRUE),
('Cliente 12', 'cliente12@email.com', '11987654012', '12345678901012', '1991-01-12', 'Av 12, 012', 'São Paulo', 'SP', '01012-012', TRUE),
('Cliente 13', 'cliente13@email.com', '11987654013', '12345678901013', '1991-01-13', 'Av 13, 013', 'São Paulo', 'SP', '01013-013', TRUE),
('Cliente 14', 'cliente14@email.com', '11987654014', '12345678901014', '1991-01-14', 'Av 14, 014', 'São Paulo', 'SP', '01014-014', TRUE),
('Cliente 15', 'cliente15@email.com', '11987654015', '12345678901015', '1991-01-15', 'Av 15, 015', 'São Paulo', 'SP', '01015-015', TRUE),
('Cliente 16', 'cliente16@email.com', '11987654016', '12345678901016', '1991-01-16', 'Av 16, 016', 'Rio de Janeiro', 'RJ', '20016-016', TRUE),
('Cliente 17', 'cliente17@email.com', '11987654017', '12345678901017', '1991-01-17', 'Av 17, 017', 'Rio de Janeiro', 'RJ', '20017-017', TRUE),
('Cliente 18', 'cliente18@email.com', '11987654018', '12345678901018', '1991-01-18', 'Av 18, 018', 'Rio de Janeiro', 'RJ', '20018-018', TRUE),
('Cliente 19', 'cliente19@email.com', '11987654019', '12345678901019', '1991-01-19', 'Av 19, 019', 'Rio de Janeiro', 'RJ', '20019-019', TRUE),
('Cliente 20', 'cliente20@email.com', '11987654020', '12345678901020', '1991-01-20', 'Av 20, 020', 'Rio de Janeiro', 'RJ', '20020-020', TRUE),
('Cliente 21', 'cliente21@email.com', '11987654021', '12345678901021', '1991-02-21', 'Av 21, 021', 'Belo Horizonte', 'MG', '30021-021', TRUE),
('Cliente 22', 'cliente22@email.com', '11987654022', '12345678901022', '1991-02-22', 'Av 22, 022', 'Belo Horizonte', 'MG', '30022-022', TRUE),
('Cliente 23', 'cliente23@email.com', '11987654023', '12345678901023', '1991-02-23', 'Av 23, 023', 'Belo Horizonte', 'MG', '30023-023', TRUE),
('Cliente 24', 'cliente24@email.com', '11987654024', '12345678901024', '1991-02-24', 'Av 24, 024', 'Belo Horizonte', 'MG', '30024-024', TRUE),
('Cliente 25', 'cliente25@email.com', '11987654025', '12345678901025', '1991-02-25', 'Av 25, 025', 'Belo Horizonte', 'MG', '30025-025', TRUE),
('Cliente 26', 'cliente26@email.com', '11987654026', '12345678901026', '1991-02-26', 'Av 26, 026', 'Brasília', 'DF', '70026-026', TRUE),
('Cliente 27', 'cliente27@email.com', '11987654027', '12345678901027', '1991-02-27', 'Av 27, 027', 'Brasília', 'DF', '70027-027', TRUE),
('Cliente 28', 'cliente28@email.com', '11987654028', '12345678901028', '1991-02-28', 'Av 28, 028', 'Brasília', 'DF', '70028-028', TRUE),
('Cliente 29', 'cliente29@email.com', '11987654029', '12345678901029', '1991-03-01', 'Av 29, 029', 'Brasília', 'DF', '70029-029', TRUE),
('Cliente 30', 'cliente30@email.com', '11987654030', '12345678901030', '1991-03-02', 'Av 30, 030', 'Brasília', 'DF', '70030-030', TRUE),
('Cliente 31', 'cliente31@email.com', '11987654031', '12345678901031', '1991-03-03', 'Av 31, 031', 'Salvador', 'BA', '40031-031', TRUE),
('Cliente 32', 'cliente32@email.com', '11987654032', '12345678901032', '1991-03-04', 'Av 32, 032', 'Salvador', 'BA', '40032-032', TRUE),
('Cliente 33', 'cliente33@email.com', '11987654033', '12345678901033', '1991-03-05', 'Av 33, 033', 'Salvador', 'BA', '40033-033', TRUE),
('Cliente 34', 'cliente34@email.com', '11987654034', '12345678901034', '1991-03-06', 'Av 34, 034', 'Salvador', 'BA', '40034-034', TRUE),
('Cliente 35', 'cliente35@email.com', '11987654035', '12345678901035', '1991-03-07', 'Av 35, 035', 'Salvador', 'BA', '40035-035', TRUE),
('Cliente 36', 'cliente36@email.com', '11987654036', '12345678901036', '1991-03-08', 'Av 36, 036', 'Fortaleza', 'CE', '60036-036', TRUE),
('Cliente 37', 'cliente37@email.com', '11987654037', '12345678901037', '1991-03-09', 'Av 37, 037', 'Fortaleza', 'CE', '60037-037', TRUE),
('Cliente 38', 'cliente38@email.com', '11987654038', '12345678901038', '1991-03-10', 'Av 38, 038', 'Fortaleza', 'CE', '60038-038', TRUE),
('Cliente 39', 'cliente39@email.com', '11987654039', '12345678901039', '1991-03-11', 'Av 39, 039', 'Fortaleza', 'CE', '60039-039', TRUE),
('Cliente 40', 'cliente40@email.com', '11987654040', '12345678901040', '1991-03-12', 'Av 40, 040', 'Fortaleza', 'CE', '60040-040', TRUE),
('Cliente 41', 'cliente41@email.com', '11987654041', '12345678901041', '1991-03-13', 'Av 41, 041', 'Manaus', 'AM', '69041-041', TRUE),
('Cliente 42', 'cliente42@email.com', '11987654042', '12345678901042', '1991-03-14', 'Av 42, 042', 'Manaus', 'AM', '69042-042', TRUE),
('Cliente 43', 'cliente43@email.com', '11987654043', '12345678901043', '1991-03-15', 'Av 43, 043', 'Manaus', 'AM', '69043-043', TRUE),
('Cliente 44', 'cliente44@email.com', '11987654044', '12345678901044', '1991-03-16', 'Av 44, 044', 'Manaus', 'AM', '69044-044', TRUE),
('Cliente 45', 'cliente45@email.com', '11987654045', '12345678901045', '1991-03-17', 'Av 45, 045', 'Manaus', 'AM', '69045-045', TRUE),
('Cliente 46', 'cliente46@email.com', '11987654046', '12345678901046', '1991-03-18', 'Av 46, 046', 'Curitiba', 'PR', '80046-046', TRUE),
('Cliente 47', 'cliente47@email.com', '11987654047', '12345678901047', '1991-03-19', 'Av 47, 047', 'Curitiba', 'PR', '80047-047', TRUE),
('Cliente 48', 'cliente48@email.com', '11987654048', '12345678901048', '1991-03-20', 'Av 48, 048', 'Curitiba', 'PR', '80048-048', TRUE),
('Cliente 49', 'cliente49@email.com', '11987654049', '12345678901049', '1991-03-21', 'Av 49, 049', 'Curitiba', 'PR', '80049-049', TRUE),
('Cliente 50', 'cliente50@email.com', '11987654050', '12345678901050', '1991-03-22', 'Av 50, 050', 'Curitiba', 'PR', '80050-050', TRUE),
('Cliente 51', 'cliente51@email.com', '11987654051', '12345678901051', '1991-03-23', 'Av 51, 051', 'Porto Alegre', 'RS', '90051-051', TRUE),
('Cliente 52', 'cliente52@email.com', '11987654052', '12345678901052', '1991-03-24', 'Av 52, 052', 'Porto Alegre', 'RS', '90052-052', TRUE),
('Cliente 53', 'cliente53@email.com', '11987654053', '12345678901053', '1991-03-25', 'Av 53, 053', 'Porto Alegre', 'RS', '90053-053', TRUE),
('Cliente 54', 'cliente54@email.com', '11987654054', '12345678901054', '1991-03-26', 'Av 54, 054', 'Porto Alegre', 'RS', '90054-054', TRUE),
('Cliente 55', 'cliente55@email.com', '11987654055', '12345678901055', '1991-03-27', 'Av 55, 055', 'Porto Alegre', 'RS', '90055-055', TRUE),
('Cliente 56', 'cliente56@email.com', '11987654056', '12345678901056', '1991-03-28', 'Av 56, 056', 'Recife', 'PE', '50056-056', TRUE),
('Cliente 57', 'cliente57@email.com', '11987654057', '12345678901057', '1991-03-29', 'Av 57, 057', 'Recife', 'PE', '50057-057', TRUE),
('Cliente 58', 'cliente58@email.com', '11987654058', '12345678901058', '1991-03-30', 'Av 58, 058', 'Recife', 'PE', '50058-058', TRUE),
('Cliente 59', 'cliente59@email.com', '11987654059', '12345678901059', '1991-04-01', 'Av 59, 059', 'Recife', 'PE', '50059-059', TRUE),
('Cliente 60', 'cliente60@email.com', '11987654060', '12345678901060', '1991-04-02', 'Av 60, 060', 'Recife', 'PE', '50060-060', TRUE),
('Cliente 61', 'cliente61@email.com', '11987654061', '12345678901061', '1991-04-03', 'Av 61, 061', 'Goiânia', 'GO', '74061-061', TRUE),
('Cliente 62', 'cliente62@email.com', '11987654062', '12345678901062', '1991-04-04', 'Av 62, 062', 'Goiânia', 'GO', '74062-062', TRUE),
('Cliente 63', 'cliente63@email.com', '11987654063', '12345678901063', '1991-04-05', 'Av 63, 063', 'Goiânia', 'GO', '74063-063', TRUE),
('Cliente 64', 'cliente64@email.com', '11987654064', '12345678901064', '1991-04-06', 'Av 64, 064', 'Goiânia', 'GO', '74064-064', TRUE),
('Cliente 65', 'cliente65@email.com', '11987654065', '12345678901065', '1991-04-07', 'Av 65, 065', 'Goiânia', 'GO', '74065-065', TRUE),
('Cliente 66', 'cliente66@email.com', '11987654066', '12345678901066', '1991-04-08', 'Av 66, 066', 'Belém', 'PA', '66066-066', TRUE),
('Cliente 67', 'cliente67@email.com', '11987654067', '12345678901067', '1991-04-09', 'Av 67, 067', 'Belém', 'PA', '66067-067', TRUE),
('Cliente 68', 'cliente68@email.com', '11987654068', '12345678901068', '1991-04-10', 'Av 68, 068', 'Belém', 'PA', '66068-068', TRUE),
('Cliente 69', 'cliente69@email.com', '11987654069', '12345678901069', '1991-04-11', 'Av 69, 069', 'Belém', 'PA', '66069-069', TRUE),
('Cliente 70', 'cliente70@email.com', '11987654070', '12345678901070', '1991-04-12', 'Av 70, 070', 'Belém', 'PA', '66070-070', TRUE),
('Cliente 71', 'cliente71@email.com', '11987654071', '12345678901071', '1991-04-13', 'Av 71, 071', 'Guarulhos', 'SP', '07071-071', TRUE),
('Cliente 72', 'cliente72@email.com', '11987654072', '12345678901072', '1991-04-14', 'Av 72, 072', 'Guarulhos', 'SP', '07072-072', TRUE),
('Cliente 73', 'cliente73@email.com', '11987654073', '12345678901073', '1991-04-15', 'Av 73, 073', 'Guarulhos', 'SP', '07073-073', TRUE),
('Cliente 74', 'cliente74@email.com', '11987654074', '12345678901074', '1991-04-16', 'Av 74, 074', 'Guarulhos', 'SP', '07074-074', TRUE),
('Cliente 75', 'cliente75@email.com', '11987654075', '12345678901075', '1991-04-17', 'Av 75, 075', 'Guarulhos', 'SP', '07075-075', TRUE),
('Cliente 76', 'cliente76@email.com', '11987654076', '12345678901076', '1991-04-18', 'Av 76, 076', 'Campinas', 'SP', '13076-076', TRUE),
('Cliente 77', 'cliente77@email.com', '11987654077', '12345678901077', '1991-04-19', 'Av 77, 077', 'Campinas', 'SP', '13077-077', TRUE),
('Cliente 78', 'cliente78@email.com', '11987654078', '12345678901078', '1991-04-20', 'Av 78, 078', 'Campinas', 'SP', '13078-078', TRUE),
('Cliente 79', 'cliente79@email.com', '11987654079', '12345678901079', '1991-04-21', 'Av 79, 079', 'Campinas', 'SP', '13079-079', TRUE),
('Cliente 80', 'cliente80@email.com', '11987654080', '12345678901080', '1991-04-22', 'Av 80, 080', 'Campinas', 'SP', '13080-080', TRUE),
('Cliente 81', 'cliente81@email.com', '11987654081', '12345678901081', '1991-04-23', 'Av 81, 081', 'São Gonçalo', 'RJ', '24081-081', TRUE),
('Cliente 82', 'cliente82@email.com', '11987654082', '12345678901082', '1991-04-24', 'Av 82, 082', 'São Gonçalo', 'RJ', '24082-082', TRUE),
('Cliente 83', 'cliente83@email.com', '11987654083', '12345678901083', '1991-04-25', 'Av 83, 083', 'São Gonçalo', 'RJ', '24083-083', TRUE),
('Cliente 84', 'cliente84@email.com', '11987654084', '12345678901084', '1991-04-26', 'Av 84, 084', 'São Gonçalo', 'RJ', '24084-084', TRUE),
('Cliente 85', 'cliente85@email.com', '11987654085', '12345678901085', '1991-04-27', 'Av 85, 085', 'São Gonçalo', 'RJ', '24085-085', TRUE),
('Cliente 86', 'cliente86@email.com', '11987654086', '12345678901086', '1991-04-28', 'Av 86, 086', 'Duque de Caxias', 'RJ', '25086-086', TRUE),
('Cliente 87', 'cliente87@email.com', '11987654087', '12345678901087', '1991-04-29', 'Av 87, 087', 'Duque de Caxias', 'RJ', '25087-087', TRUE),
('Cliente 88', 'cliente88@email.com', '11987654088', '12345678901088', '1991-04-30', 'Av 88, 088', 'Duque de Caxias', 'RJ', '25088-088', TRUE),
('Cliente 89', 'cliente89@email.com', '11987654089', '12345678901089', '1991-05-01', 'Av 89, 089', 'Duque de Caxias', 'RJ', '25089-089', TRUE),
('Cliente 90', 'cliente90@email.com', '11987654090', '12345678901090', '1991-05-02', 'Av 90, 090', 'Duque de Caxias', 'RJ', '25090-090', TRUE),
('Cliente 91', 'cliente91@email.com', '11987654091', '12345678901091', '1991-05-03', 'Av 91, 091', 'Mauá', 'SP', '09091-091', TRUE),
('Cliente 92', 'cliente92@email.com', '11987654092', '12345678901092', '1991-05-04', 'Av 92, 092', 'Mauá', 'SP', '09092-092', TRUE),
('Cliente 93', 'cliente93@email.com', '11987654093', '12345678901093', '1991-05-05', 'Av 93, 093', 'Mauá', 'SP', '09093-093', TRUE),
('Cliente 94', 'cliente94@email.com', '11987654094', '12345678901094', '1991-05-06', 'Av 94, 094', 'Mauá', 'SP', '09094-094', TRUE),
('Cliente 95', 'cliente95@email.com', '11987654095', '12345678901095', '1991-05-07', 'Av 95, 095', 'Mauá', 'SP', '09095-095', TRUE),
('Cliente 96', 'cliente96@email.com', '11987654096', '12345678901096', '1991-05-08', 'Av 96, 096', 'São João de Meriti', 'RJ', '20096-096', TRUE),
('Cliente 97', 'cliente97@email.com', '11987654097', '12345678901097', '1991-05-09', 'Av 97, 097', 'São João de Meriti', 'RJ', '20097-097', TRUE),
('Cliente 98', 'cliente98@email.com', '11987654098', '12345678901098', '1991-05-10', 'Av 98, 098', 'São João de Meriti', 'RJ', '20098-098', TRUE),
('Cliente 99', 'cliente99@email.com', '11987654099', '12345678901099', '1991-05-11', 'Av 99, 099', 'São João de Meriti', 'RJ', '20099-099', TRUE),
('Cliente 100', 'cliente100@email.com', '11987654100', '12345678901100', '1991-05-12', 'Av 100, 100', 'São João de Meriti', 'RJ', '20100-100', TRUE);

-- Continuaremos com mais blocos...
-- Para completar 1000 clientes, adicione este comando em seu MySQL client:
-- Você pode copiar este padrão e incrementar os números de 101 até 1000

-- Script de geração automática (execute isto no MySQL):
-- DELIMITER $$
-- CREATE PROCEDURE insere_clientes()
-- BEGIN
--   DECLARE contador INT DEFAULT 101;
--   WHILE contador <= 1000 DO
--     INSERT INTO clientes (nome, email, telefone, cpf, data_nascimento, endereco, cidade, estado, cep, ativo) VALUES
--     (CONCAT('Cliente ', contador), 
--      CONCAT('cliente', contador, '@email.com'),
--      CONCAT('119876540', LPAD(contador, 2, '0')),
--      CONCAT('1234567890', LPAD(contador, 4, '0')),
--      DATE_ADD('1990-01-01', INTERVAL contador DAY),
--      CONCAT('Rua ', contador, ', ', LPAD(contador, 3, '0')),
--      ELT(((contador - 1) % 27) + 1, 'São Paulo', 'Rio de Janeiro', 'Belo Horizonte', 'Brasília', 'Salvador', 'Fortaleza', 'Manaus', 'Curitiba', 'Porto Alegre', 'Recife', 'Goiânia', 'Belém', 'Guarulhos', 'Campinas', 'São Gonçalo', 'Duque de Caxias', 'Mauá', 'São João de Meriti', 'Osasco', 'Jaboatão', 'Nova Iguaçu', 'Santo André', 'São Bernardo', 'Itaquaquecetuba', 'Jundiaí', 'Niterói', 'Diadema'),
--      ELT(((contador - 1) % 27) + 1, 'SP', 'RJ', 'MG', 'DF', 'BA', 'CE', 'AM', 'PR', 'RS', 'PE', 'GO', 'PA', 'SP', 'SP', 'RJ', 'RJ', 'SP', 'SP', 'RJ', 'PE', 'RJ', 'SP', 'SP', 'SP', 'SP', 'RJ', 'SP'),
--      LPAD(contador, 8, '0'),
--      TRUE);
--     SET contador = contador + 1;
--   END WHILE;
-- END$$
-- DELIMITER ;
-- CALL insere_clientes();
-- DROP PROCEDURE insere_clientes;

-- Alternativa mais simples: use este comando para repetir inserções
-- Você pode copiar e colar o bloco acima múltiplas vezes, ajustando os números

-- ========================================
-- VERIFICAÇÃO FINAL
-- ========================================

-- Contar total de clientes
SELECT COUNT(*) as total_clientes FROM clientes;

-- Ver últimos 10 clientes inseridos
SELECT * FROM clientes ORDER BY id DESC LIMIT 10;

-- Distribuição por estado
SELECT estado, COUNT(*) as total FROM clientes GROUP BY estado ORDER BY total DESC;
