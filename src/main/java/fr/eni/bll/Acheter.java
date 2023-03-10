package fr.eni.bll;

import fr.eni.bo.Enchere;
import fr.eni.bo.Utilisateur;

public class Acheter {

	public void acheter(Utilisateur acheteur, int prix) throws BLLException {
		// TODO : Le code suivant comporte est en cours, celui-ci peut comporter des erreurs

		// Vérification que l'article est en vente
		if (this.etatVente != EtatVente.EN_VENTE) {
			throw new BLLException("Cet article n'est pas en vente.");
		}

		// Vérification que le prix proposé est supérieur au prix de l'enchère actuelle
		if (this.enchereActuelle != null && prix <= this.enchereActuelle.getMontantEnchere()) {
			throw new BLLException("Le prix proposé est inférieur ou égal au prix de l'enchère actuelle.");
		}

		// Création de la nouvelle enchère
		Enchere nouvelleEnchere = new Enchere(acheteur, this, prix);

		// Mise à jour de l'article et de l'enchère associée
		this.setEnchereActuelle(nouvelleEnchere);
		this.setEtatVente(EtatVente.EN_COURS);
	}

}