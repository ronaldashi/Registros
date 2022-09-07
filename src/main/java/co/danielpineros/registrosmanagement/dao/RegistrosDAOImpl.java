package co.danielpineros.registrosmanagement.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.danielpineros.registrosmanagement.model.Registros;



@Repository
public class RegistrosDAOImpl implements RegistrosDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void save(Registros registros) {
		sessionFactory.getCurrentSession().saveOrUpdate(registros);
	}

	@Override
	public Registros get(int id) {
		Registros registros = (Registros)sessionFactory.getCurrentSession().get(Registros.class, id);
		return registros;
	}
        
        

	@Override
	public void delete(int id) {
		Session session = sessionFactory.getCurrentSession();
		Registros registros = session.get(Registros.class, id);
		session.delete(registros);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Registros> get() {
		return sessionFactory.getCurrentSession().createQuery("from Registros").list();
	}

   

}