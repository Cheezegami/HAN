ALTER TABLE Stuk
ADD CONSTRAINT fk_Stuk_Componist
	FOREIGN KEY (componistId) REFERENCES Componist (componistId)

SELECT * FROM information_schema.tables;

ALTER TABLE Componist
ADD CONSTRAINT ck_geslacht CHECK (geslacht IN ('M','V'))