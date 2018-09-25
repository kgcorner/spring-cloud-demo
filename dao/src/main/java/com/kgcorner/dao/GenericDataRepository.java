package com.kgcorner.dao;

import org.apache.log4j.Logger;
import org.hibernate.jpa.criteria.OrderImpl;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.StoredProcedureQuery;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Expression;
import javax.persistence.criteria.ParameterExpression;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by admin on 9/25/2018.
 */
@Transactional
@Repository
public class GenericDataRepository<T extends Serializable> implements DataRepository<T> {
    static {
        System.out.println("Generic data repo");
    }
    private static final Logger LOGGER = Logger.getLogger(GenericDataRepository.class);

    @PersistenceContext
    protected EntityManager entityManager;


    /***
     * @see DataRepository#create(T)
     */
    public T create(T model) {
        this.entityManager.persist(model);
        this.entityManager.flush();
        return model;
    }

    /***
     * @see DataRepository#updateOrCreate(T)
     */
    public T updateOrCreate(T model) {
        model = this.entityManager.merge(model);
        this.entityManager.flush();
        return model;
    }

    /***
     * @see DataRepository#update(T)
     */
    @Override
    public T update(T model) {
        model = this.entityManager.merge(model);
        this.entityManager.flush();
        return model;
    }

    /***
     * @see DataRepository#delete(Class, int)
     */
    public void delete(Class<T> model, int modelId) {

    }

    /***
     * @see DataRepository#delete(Class, int)
     */
    public void delete(Class<T> model) {
        this.entityManager.remove(model);
    }

    /***
     * @see DataRepository#get(Class, int)
     */
    public T get(Class<T> model, int modelId) {
        T entity = null;
        try {
            entity = this.entityManager.find(model, modelId);
        }
        catch(NoResultException x) {
            LOGGER.error("No "+model.getName()+" found with ID:"+modelId);
        }
        return entity;
    }

    /***
     * @see DataRepository#getAll(Class)
     */
    public List<T> getAll(Class<T> model) {
        String className = model.getName();
        String hql = "from "+className+" as entity order by entity.id desc";
        return (List<T>) this.entityManager.createQuery(hql).getResultList();
    }

    /***
     * @see DataRepository#getAll(Class, int, int)
     */
    @SuppressWarnings("unchecked")
    public List<T> getAll(Class<T> model, int page, int itemsPerPage) {
        String className = model.getName();
        String hql = "from "+className+" as entity order by entity.id desc";
        int firstResult = (page-1)*itemsPerPage+1;
        return (List<T>) this.entityManager.createQuery(hql).setFirstResult(firstResult).setMaxResults(itemsPerPage).getResultList();
    }

    /***
     * @see DataRepository#getAll(Class, List)
     */
    public List<T> getAll(Class<T> model, List<Operands> conditions) {
        if(conditions == null) {
            return getAll(model);
        }
        CriteriaBuilder criteriaBuilder = this.entityManager.getCriteriaBuilder();
        CriteriaQuery<T> criteriaQuery = criteriaBuilder.createQuery(model);
        Root<T> entity = criteriaQuery.from(model);
        List<Predicate> predicates = new ArrayList<Predicate>();
        List<T> result = null;
        for(Operands operand : conditions) {
            ParameterExpression param = criteriaBuilder.parameter(operand.getOperandType(),operand.getName());
            switch(operand.getOperator()) {
                case EQ:
                    predicates.add(criteriaBuilder.equal(entity.get(operand.getName()), param));
                    break;
                case GE:
                    predicates.add(criteriaBuilder.greaterThanOrEqualTo(entity.get(operand.getName()), param));
                    break;
                case LE:
                    predicates.add(criteriaBuilder.lessThanOrEqualTo(entity.get(operand.getName()), param));
                    break;
                case LT:
                    predicates.add(criteriaBuilder.lessThan(entity.get(operand.getName()), param));
                    break;
                case GT:
                    predicates.add(criteriaBuilder.greaterThan(entity.get(operand.getName()), param));
                    break;
            }

        }
        criteriaQuery.select(entity).where(criteriaBuilder.and(predicates.toArray(new Predicate[0])));
        TypedQuery<T> typedQuery = this.entityManager.createQuery(criteriaQuery);
        for(Operands operand : conditions) {
            typedQuery.setParameter(operand.getName(), operand.getValue());
        }
        try{
            result = typedQuery.getResultList();
        }
        catch(NoResultException e) {
            LOGGER.error("Did not found "+model.getName());
        }
        return result;
    }

    /***
     * @see DataRepository#getAll(Class, List)
     */
    public List<T> getAll(Class<T> model, List<Operands> conditions, List<Order> orders) {
        CriteriaBuilder criteriaBuilder = this.entityManager.getCriteriaBuilder();
        CriteriaQuery<T> criteriaQuery = criteriaBuilder.createQuery(model);
        Root<T> entity = criteriaQuery.from(model);
        List<Predicate> predicates = new ArrayList<Predicate>();
        List<T> result = null;
        for(Operands operand : conditions) {
            ParameterExpression param = criteriaBuilder.parameter(operand.getOperandType(),operand.getName());
            switch(operand.getOperator()) {
                case EQ:
                    predicates.add(criteriaBuilder.equal(entity.get(operand.getName()), param));
                    break;
                case GE:
                    predicates.add(criteriaBuilder.greaterThanOrEqualTo(entity.get(operand.getName()), param));
                    break;
                case LE:
                    predicates.add(criteriaBuilder.lessThanOrEqualTo(entity.get(operand.getName()), param));
                    break;
                case LT:
                    predicates.add(criteriaBuilder.lessThan(entity.get(operand.getName()), param));
                    break;
                case GT:
                    predicates.add(criteriaBuilder.greaterThan(entity.get(operand.getName()), param));
                    break;
            }

        }
        List<javax.persistence.criteria.Order> orderList = new ArrayList<>();
        for(Order o : orders) {
            javax.persistence.criteria.Order order = new OrderImpl(entity.get(o.getName()), o.isAsending());
            orderList.add(order);
        }
        if(orderList.size() > 0) {
            criteriaQuery.select(entity).where(criteriaBuilder.and(predicates.toArray(new Predicate[0])))
                    .orderBy(orderList);
        } else {
            criteriaQuery.select(entity).where(criteriaBuilder.and(predicates.toArray(new Predicate[0])));
        }
        TypedQuery<T> typedQuery = this.entityManager.createQuery(criteriaQuery);
        for(Operands operand : conditions) {
            typedQuery.setParameter(operand.getName(), operand.getValue());
        }
        try{
            result = typedQuery.getResultList();
        }
        catch(NoResultException e) {
            LOGGER.error("Did not found "+model.getName());
        }
        return result;
    }



    @Override
    public List<T> getAll(Class<T> model, List<Operands> conditions, int page, int itemPerPage, List<Order> orders) {
        CriteriaBuilder criteriaBuilder = this.entityManager.getCriteriaBuilder();
        CriteriaQuery<T> criteriaQuery = criteriaBuilder.createQuery(model);
        Root<T> entity = criteriaQuery.from(model);
        List<Predicate> predicates = new ArrayList<Predicate>();
        List<T> result = null;
        int start = (page - 1) * itemPerPage;
        for(Operands operand : conditions) {
            ParameterExpression param = criteriaBuilder.parameter(operand.getOperandType(),operand.getName());
            switch(operand.getOperator()) {
                case EQ:
                    predicates.add(criteriaBuilder.equal(entity.get(operand.getName()), param));
                    break;
                case GE:
                    predicates.add(criteriaBuilder.greaterThanOrEqualTo(entity.get(operand.getName()), param));
                    break;
                case LE:
                    predicates.add(criteriaBuilder.lessThanOrEqualTo(entity.get(operand.getName()), param));
                    break;
                case LT:
                    predicates.add(criteriaBuilder.lessThan(entity.get(operand.getName()), param));
                    break;
                case GT:
                    predicates.add(criteriaBuilder.greaterThan(entity.get(operand.getName()), param));
                    break;
            }

        }
        List<javax.persistence.criteria.Order> orderList = new ArrayList<>();
        for(Order o : orders) {
            javax.persistence.criteria.Order order = new OrderImpl(entity.get(o.getName()), o.isAsending());
            orderList.add(order);
        }
        if(orderList.size() > 0) {
            criteriaQuery.select(entity).where(criteriaBuilder.and(predicates.toArray(new Predicate[0])))
                    .orderBy(orderList);
        } else {
            criteriaQuery.select(entity).where(criteriaBuilder.and(predicates.toArray(new Predicate[0])));
        }
        TypedQuery<T> typedQuery = this.entityManager.createQuery(criteriaQuery);
        for(Operands operand : conditions) {
            typedQuery.setParameter(operand.getName(), operand.getValue());
        }
        try{
            result = typedQuery.setFirstResult(start).setMaxResults(itemPerPage).getResultList();
        }
        catch(NoResultException e) {
            LOGGER.error("Did not found "+model.getName());
        }
        return result;
    }


    @Override
    public T get(Class<T> model, List<Operands> conditions) {
        CriteriaBuilder criteriaBuilder = this.entityManager.getCriteriaBuilder();
        CriteriaQuery<T> criteriaQuery = criteriaBuilder.createQuery(model);
        Root<T> entity = criteriaQuery.from(model);
        List<Predicate> predicates = new ArrayList<Predicate>();
        T result = null;
        for(Operands operand : conditions) {
            ParameterExpression param = criteriaBuilder.parameter(operand.getOperandType(),operand.getName());
            switch(operand.getOperator()) {
                case EQ:
                    predicates.add(criteriaBuilder.equal(entity.get(operand.getName()), param));
                    break;
                case GE:
                    predicates.add(criteriaBuilder.greaterThanOrEqualTo(entity.get(operand.getName()), param));
                    break;
                case LE:
                    predicates.add(criteriaBuilder.lessThanOrEqualTo(entity.get(operand.getName()), param));
                    break;
                case LT:
                    predicates.add(criteriaBuilder.lessThan(entity.get(operand.getName()), param));
                    break;
                case GT:
                    predicates.add(criteriaBuilder.greaterThan(entity.get(operand.getName()), param));
                    break;
            }

        }
        criteriaQuery.select(entity).where(criteriaBuilder.and(predicates.toArray(new Predicate[0])));
        TypedQuery<T> typedQuery = this.entityManager.createQuery(criteriaQuery);
        for(Operands operand : conditions) {
            typedQuery.setParameter(operand.getName(), operand.getValue());
        }
        try{
            result = typedQuery.getSingleResult();
        }
        catch(NoResultException e) {
            LOGGER.error("Did not found "+model.getName());
        }
        return result;
    }

    @Override
    public void delete(T model) {
        if(!entityManager.contains(model))
            model = entityManager.merge(model);
        this.entityManager.remove(model);
    }

    @Override
    public void delete(Object key, String modelName, String keyName) {
        String queryStr = "delete from "+modelName+" where "+keyName+"=?";
        Query query = this.entityManager.createQuery(queryStr);
        query.setParameter(1, key);
        query.executeUpdate();
    }

    /**
     * See {@link DataRepository#getIn(Class, String, String)}
     */
    @Override
    public List<T> getIn(Class<T> model, String args, String argumentUnderCheck) {
        CriteriaBuilder cb = this.entityManager.getCriteriaBuilder();
        CriteriaQuery<T> criteriaQuery = cb.createQuery(model);
        Root<T> entity = criteriaQuery.from(model);
        Expression<String> parentExpression = entity.get(argumentUnderCheck);
        Predicate predicate = parentExpression.in(args);
        criteriaQuery.select(entity).where(cb.and(predicate));
        TypedQuery<T> typedQuery = this.entityManager.createQuery(criteriaQuery);
        return typedQuery.getResultList();
    }

    @Override
    public Object runSelectNativeQuery(String query, Object... params) {
        Query nativeQuery = this.entityManager.createNativeQuery(query);

        for (int i = 1; i <= params.length; i++) {
            nativeQuery.setParameter(i, params[i-1]);
        }

        return  nativeQuery.getResultList();
    }

    @Override
    public int runUpdateNativeQuery(String query, Object... params) {
        Query nativeQuery = this.entityManager.createNativeQuery(query);

        for (int i = 1; i <= params.length; i++) {
            nativeQuery.setParameter(i, params[i-1]);
        }

        return  nativeQuery.executeUpdate();
    }
}


