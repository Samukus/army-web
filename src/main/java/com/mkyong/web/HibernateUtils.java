package com.mkyong.web;

import org.hibernate.*;
import org.hibernate.query.Query;
import org.hibernate.cfg.Configuration;

import javax.persistence.metamodel.EntityType;
import java.util.List;

public class HibernateUtils {
    private static final SessionFactory ourSessionFactory;

    static {
        try {
            Configuration configuration = new Configuration();
            configuration.configure();

            ourSessionFactory = configuration.buildSessionFactory();
        } catch (Throwable ex) {
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static Session getSession() throws HibernateException {
        return ourSessionFactory.openSession();
    }

    public static void main(final String[] args) throws Exception {
        final Session session = getSession();
        try {
            System.out.println("querying all the managed entities...");
            final Metamodel metamodel = session.getSessionFactory().getMetamodel();
            for (EntityType<?> entityType : metamodel.getEntities()) {
                final String entityName = entityType.getName();
                final Query query = session.createQuery("from " + entityName);
                System.out.println("executing: " + query.getQueryString());
                for (Object o : query.list()) {
                    System.out.println("  " + o);
                }
            }
        } finally {
            session.close();
        }

        List<UsersEntity> users = getUsersByRole("ROLE_ADMIN");
        for (UsersEntity user: users)
        {
            System.out.println(String.format("Username: %s", user.getUsername()));
        }
    }

    public static UsersEntity getUserByUsername(String Username) {
        Session session = getSession();
        List<UsersEntity> UserList = session.createQuery(String.format("FROM UsersEntity where username='%s'", Username)).list();
        session.close();

        if ( UserList == null || UserList.isEmpty())
            return null;

        return UserList.get(0);
    }

    public static List<UsersEntity> getUsers(int offset, int count) {
        Session session = getSession();
        List<UsersEntity> UserList = session.createQuery(String.format("FROM UsersEntity", offset, count))
                                            .setMaxResults(count)
                                            .setFirstResult(offset)
                                            .list();
        session.close();

        if ( UserList == null || UserList.isEmpty())
            return null;

        return UserList;
    }

    public static List<UsersEntity> getUsersByRole(String role) {
        Session session = getSession();
        List<UsersEntity> UserList = session.createQuery(String
                .format("select user from UsersEntity user,UserRolesEntity role where role.role='%s' and user.username=role.username", role))
                .list();
        session.close();

        if ( UserList == null || UserList.isEmpty())
            return null;

        return UserList;
    }

    public static void updateUserByEntity(UsersEntity User) {
        Session session = getSession();
        Transaction trans = session.getTransaction();
        trans.begin();
        session.saveOrUpdate(User);
        trans.commit();
        session.close();
    }

    public static List<AwardsEntity> getAwardsByUsername(String Username) {
        Session session = getSession();
        List<AwardsEntity> AwardsList = session.createQuery(String.format("FROM AwardsEntity where username='%s'", Username))
                .list();
        session.close();

        if ( AwardsList == null || AwardsList.isEmpty())
            return null;

        return AwardsList;
    }

    public static List<EventsEntity> getEventsByUsername(String Username) {
        Session session = getSession();
        List<EventsEntity> List = session.createQuery(String.format("FROM EventsEntity where username='%s'", Username))
                .list();
        session.close();

        if ( List == null || List.isEmpty())
            return null;

        return List;
    }

    public static List<DiagnosesEntity> getDiagnosesByUsername(String Username) {
        Session session = getSession();
        List<DiagnosesEntity> List = session.createQuery(String.format("FROM EventsEntity where username='%s'", Username))
                .list();
        session.close();

        if ( List == null || List.isEmpty())
            return null;

        return List;
    }

    public static List<DutiesEntity> getDutiesByUsername(String Username) {
        Session session = getSession();
        List<DutiesEntity> List = session.createQuery(String.format("FROM EventsEntity where username='%s'", Username))
                .list();
        session.close();

        if ( List == null || List.isEmpty())
            return null;

        return List;
    }
}