package com.kgcorner.dao;

import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;

/**
 * Created by admin on 9/25/2018.
 */
@Repository
public interface DataRepository<T extends Serializable>  {
    public static class Order {
        private String name;
        private boolean isAsending;

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public boolean isAsending() {
            return isAsending;
        }

        public void setAsending(boolean asending) {
            isAsending = asending;
        }
    }

    /***
     * Persists given entity into database
     * @param model
     * @return the created entity
     */
    T create(T model);

    /***
     * Creates an entity if it doesn't exist updates otherwise
     * @param model
     * @return the updated entity
     */
    T update(T model);

    /***
     * Updates given entity
     * @param model
     * @return the updated entity
     */
    T updateOrCreate(T model);

    /***
     * Deletes the entity from database
     * @param modelId id (primary key) of the entity to be deleted
     */
    void delete(Class<T> model, int modelId );

    /***
     * Deletes the entity from database
     * @param model Object to delete
     */
    void delete(T model);

    /**
     * Deletes a model by its primary key
     * @param key
     * @param modelName
     * @param keyName
     */
    void delete(Object key, String modelName, String keyName);


    /**
     * Get model which is identified by modelId
     * @param model
     * @param modelId
     * @return
     */
    T get(Class<T> model, int modelId);

    /**
     * Performs IN query
     * @param model entity
     * @param args list of comma separated values
     * @param argumentUnderCheck argument on which in clause will be appllied
     * @return
     */
    List<T> getIn(Class<T> model, String args, String argumentUnderCheck);

    /***
     * returns list of models
     * @return
     */
    List<T> getAll(Class<T> model);

    /***
     * returns list of models
     * @param page page number
     *
     * @param itemsPerPage number of items per page
     *
     * @return
     */
    List<T> getAll(Class<T> model, int page, int itemsPerPage);

    /***
     * Fetches entity using given conditions
     * @param conditions
     * @return return extracted entities
     */
    List<T> getAll(Class<T> model, List<Operands> conditions);

    /***
     * Fetches entity using given conditions
     * @param model
     * @param conditions
     * @param orders order list
     * @return return extracted entities
     */
    List<T> getAll(Class<T> model, List<Operands> conditions, List<Order> orders);

    /***
     * Fetches entity using given conditions
     * @param conditions
     * @return return extracted entities
     */
    T get(Class<T> model, List<Operands> conditions);


    /**
     * Fetches entity using given conditions in given order
     * @param model
     * @param conditions
     * @param page
     * @param itemPerPage
     * @param orders
     * @return
     */
    List<T> getAll(Class<T> model, List<Operands> conditions, int page, int itemPerPage, List<Order> orders);

    /**
     * runs a select native query
     * @param query
     * @param params
     * @return
     */
    Object runSelectNativeQuery(String query, Object ... params );

    /**
     * runs a select native query
     * @param query
     * @param params
     * @return
     */
    int runUpdateNativeQuery(String query, Object ... params );

}
