CREATE TABLE `Student:in`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Vorname` VARCHAR(255) NOT NULL,
    `Nachname` VARCHAR(255) NOT NULL,
    `Matrikelnummer` VARCHAR(11) NOT NULL,
    `Hochul_Email` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Student:in` ADD UNIQUE `student:in_matrikelnummer_unique`(`Matrikelnummer`);
ALTER TABLE
    `Student:in` ADD UNIQUE `student:in_hochul_email_unique`(`Hochul_Email`);
CREATE TABLE `Antrag`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Semester` VARCHAR(255) NOT NULL,
    `Antragsgrund` VARCHAR(255) NOT NULL,
    `Antragsdatum` DATE NOT NULL,
    `Straße` VARCHAR(255) NOT NULL,
    `Hausnummer` VARCHAR(255) NOT NULL,
    `Postleitzahl` VARCHAR(255) NOT NULL,
    `Ort` VARCHAR(255) NOT NULL,
    `IBAN` VARCHAR(255) NOT NULL,
    `BIC` VARCHAR(255) NOT NULL,
    `Bankname` VARCHAR(255) NOT NULL,
    `Konotinhaber_abweichend` BOOLEAN NOT NULL,
    `studierende_id` BIGINT NOT NULL
);
CREATE TABLE `Dokumente`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Ablageort` BIGINT NOT NULL,
    `antrag_id` BIGINT NOT NULL
);
CREATE TABLE `Beabreitungshistorie`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Status` VARCHAR(255) NOT NULL,
    `Änderungsdatum` DATE NOT NULL,
    `mitarbeitenden_id` BIGINT NOT NULL,
    `antrag_id` BIGINT NOT NULL
);
CREATE TABLE `Mitarbeiter:in`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(255) NOT NULL
);
CREATE TABLE `Bescheid`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Ablageort` BIGINT NOT NULL
);
ALTER TABLE
    `Dokumente` ADD CONSTRAINT `dokumente_antrag_id_foreign` FOREIGN KEY(`antrag_id`) REFERENCES `Antrag`(`id`);
ALTER TABLE
    `Bescheid` ADD CONSTRAINT `bescheid_id_foreign` FOREIGN KEY(`id`) REFERENCES `Antrag`(`id`);
ALTER TABLE
    `Beabreitungshistorie` ADD CONSTRAINT `beabreitungshistorie_antrag_id_foreign` FOREIGN KEY(`antrag_id`) REFERENCES `Antrag`(`id`);
ALTER TABLE
    `Antrag` ADD CONSTRAINT `antrag_studierende_id_foreign` FOREIGN KEY(`studierende_id`) REFERENCES `Student:in`(`id`);
ALTER TABLE
    `Beabreitungshistorie` ADD CONSTRAINT `beabreitungshistorie_mitarbeitenden_id_foreign` FOREIGN KEY(`mitarbeitenden_id`) REFERENCES `Mitarbeiter:in`(`id`);