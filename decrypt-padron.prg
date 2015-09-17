SET LIBRARY TO "C:\dev\Padrón ODC\src\Cipher50.fll" ADDITIVE

SET DEFAULT TO "C:\dev\Padrón ODC\src\data"

RENAME padron.pdb TO padron.dbf

USE padron.dbf EXCLUSIVE

SET CONSOLE ON 
ACTIVATE SCREEN

passphrase = "alozzaonb"

UPDATE padron;
	SET matricula = decrypt(matricula, passphrase),;
		apellido = decrypt(apellido, passphrase),;
		nombres = decrypt(nombres, passphrase),;
		profes = decrypt(profes, passphrase),;
		domic = decrypt(domic, passphrase),;
		analf = decrypt(analf, passphrase);