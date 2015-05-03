USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make
TITLE=setup-resistant
REVERSE_DOMAIN=com.github.setup-resistant
PAYLOAD= \
		prep-var-db-AppleSetupDone \
		prep-Library-SetupRegComplete 

prep-var-db-AppleSetupDone: l_var_db
	@sudo touch ${WORK_D}/private/var/db/.AppleSetupDone
	@sudo chown root:wheel ${WORK_D}/private/var/db/.AppleSetupDone
	@sudo chmod 600 ${WORK_D}/private/var/db/.AppleSetupDone

prep-Library-SetupRegComplete: l_Library_Receipts
	@sudo touch ${WORK_D}/Library/Receipts/.SetupRegComplete
	@sudo chown root:admin ${WORK_D}/Library/Receipts/.SetupRegComplete
	@sudo chmod 400 ${WORK_D}/Library/Receipts/.SetupRegComplete
