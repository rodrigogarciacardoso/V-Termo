INSERT INTO PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) 
VALUES
('AD3100', 'ADMIN SERVICES', 'D01', '000010', 6.50, '1982-01-01', '1983-02-01', NULL),
('AD3110', 'GENERAL AD SYSTEMS', 'D21', '000070', 6.00, '1982-01-01', '1983-02-01', 'AD3100'),
('AD3111', 'PAYROLL PROGRAMMING', 'D21', '000230', 2.00, '1982-01-01', '1983-02-01', 'AD3110'),
('AD3112', 'PERSONNEL PROGRAMMG', 'D21', '000250', 1.00, '1982-01-01', '1983-02-01', 'AD3110'),
('AD3113', 'ACCOUNT PROGRAMMING', 'D21', '000270', 2.00, '1982-01-01', '1983-02-01', 'AD3110'),
('IF1000', 'QUERY  SERVICES', 'C01', '000030', 2.00, '1982-01-01', '1983-02-01', NULL),
('IF2000', 'USER EDUCATION', 'C01', '000030', 1.00, '1982-01-01', '1983-02-01', NULL),
('MA2100', 'WELD LINE AUTOMATION', 'D01', '000010', '12.00', '1982-01-01', '1983-02-01', NULL),
('MA2110', 'W L PROGRAMMING', 'D11', '000060', 9.00, '1982-01-01', '1983-02-01', 'MA2100'),
('MA2111', 'W L PROGRAM DESIGN', 'D11', '000220', 2.00, '1982-01-01', '1982-12-01', 'MA2110'),
('MA2112', 'W L ROBOT DESIGN', 'D11', '000150', 3.00, '1982-01-01', '1982-12-01', 'MA2110'),
('MA2113', 'W L PROD CONT PROGS', 'D11', '000160', 3.00, '1982-02-15', '1982-12-01', 'MA2110'),
('OP1000', 'OPERATION SUPPORT', 'E01', '000050', 6.00, '1982-01-01', '1983-02-01', NULL),
('OP1010', 'OPERATION', 'E11', '000090', '5.00', '1982-01-01', '1983-02-01', 'OP1000'),
('OP2000', 'GEN SYSTEMS SERVICES', 'E01', '000050', 5.00, '1982-01-01', '1983-02-01', NULL),
('OP2010', 'SYSTEMS SUPPORT', 'E21', '000100', 4.00, '1982-01-01', '1983-02-01', 'OP2000'),
('OP2011', 'SCP SYSTEMS SUPPORT', 'E21', '000320', 1.00, '1982-01-01', '1983-02-01', 'OP2010'),
('OP2012', 'APPLICATIONS SUPPORT', 'E21', '000330', 1.00, '1982-01-01', '1983-02-01', 'OP2010'),
('OP2013', 'DB/DC SUPPORT', 'E21', '000340', 1.00, '1982-01-01', '1983-02-01', 'OP2010'),
('PL2100', 'WELD LINE PLANNING', 'B01', '000020', 1.00, '1982-01-01', '1982-09-15', 'MA2100');
