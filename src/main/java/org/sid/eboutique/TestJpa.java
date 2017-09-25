package org.sid.eboutique;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.sid.eboutique.entities.Categorie;
import org.sid.eboutique.entities.Produit;
import org.sid.eboutique.metier.IAdminCategoriesMetier;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestJpa {

	ClassPathXmlApplicationContext context;

	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext(new String[] { "applicationContext.xml" });

	}

	// pour les categories
	@Test
	public void test1() {
		try {

			IAdminCategoriesMetier metier = (IAdminCategoriesMetier) context.getBean("metier");
			List<Categorie> cts1 = metier.listCategories();
			metier.ajouterCategorie(new Categorie("Ordinateurs", "les pcs", null, "photoPc"));
			metier.ajouterCategorie(new Categorie("Imprimantes", "les imprs", null, "photoImpr"));
			List<Categorie> cts2 = metier.listCategories();
			assertTrue(cts1.size() + 2 == cts2.size());
		} catch (Exception e) {
			assertTrue(e.getMessage(), false);
		}
	}

	@Test
	public void test2() {
		try {

			IAdminCategoriesMetier metier = (IAdminCategoriesMetier) context.getBean("metier");
			List<Produit> prds1 = metier.listproduits();
			metier.ajouterProduit(new Produit("HP456543", "hewlett packard", 5000, 15, true, null), 1L);
			metier.ajouterProduit(new Produit("ASUSK53SD", "Gaming republic", 9000, 20, true, null), new Long(1));
			List<Produit> prds2 = metier.listproduits();
			assertTrue(prds1.size() + 2 == prds2.size());
		} catch (Exception e) {
			assertTrue(e.getMessage(), false);
		}
	}
}
