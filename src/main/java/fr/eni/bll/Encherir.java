package fr.eni.bll;
package fr.eni.bll;
import fr.eni.bll.BLLException;

public class Encherir {
	// TODO : Le code suivant comporte est en cours, celui-ci peut comporter des erreurs
	public void Encherir(ArticleVendu article, Utilisateur acheteur, int montant) throws BLLException {
		// Vérification que l'article est en cours d'enchères
		if (article.getEtatVente() != EtatVente.EN_COURS) {
			throw new BLLException("Cet article n'est pas en cours d'enchères.");
		}

		// Vérification que l'enchère est supérieure au prix actuel
		if (montant <= article.getPrixVente()) {
			throw new BLLException("Le montant de l'enchère doit être supérieur au prix actuel.");
		}

		// Vérification que l'acheteur n'est pas le vendeur
		if (acheteur.equals(article.getVendeur())) {
			throw new BLLException("Vous ne pouvez pas enchérir sur votre propre article.");
		}

		// Vérification que l'acheteur a suffisamment de crédits
		if (acheteur.getCredit() < montant) {
			throw new BLLException("Vous n'avez pas assez de crédits pour faire cette enchère.");
		}

		// Création de l'enchère
		Enchere enchere = new Enchere(LocalDateTime.now(), montant, acheteur, article);

		// Mise à jour de l'article
		article.setPrixVente(montant);
		article.setAcheteur(acheteur);

		// Mise à jour de l'acheteur
		acheteur.setCredit(acheteur.getCredit() - montant);

		// Enregistrement en base de données
		try {
			DAOFactory.getEnchereDAO().insert(enchere);
			DAOFactory.getArticleDAO().update(article);
			DAOFactory.getUtilisateurDAO().update(acheteur);
		} catch (DALException e) {
			throw new BLLException("Erreur lors de l'enregistrement de l'enchère.", e);
		}
	}
}
}
