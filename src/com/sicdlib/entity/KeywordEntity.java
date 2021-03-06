package com.sicdlib.entity;

/**
 * Created by DeMH on 2017/11/21.
 */
public class KeywordEntity {
    private String keywordId;
    private String keyword;
    private double weight;
    /*表之间关联映射*/
    private ObjectEntity objectEntity;

    public String getKeywordId() {
        return keywordId;
    }

    public void setKeywordId(String keywordId) {
        this.keywordId = keywordId;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public ObjectEntity getObjectEntity() {
        return objectEntity;
    }

    public void setObjectEntity(ObjectEntity objectEntity) {
        this.objectEntity = objectEntity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        KeywordEntity that = (KeywordEntity) o;

        if (Double.compare(that.weight, weight) != 0) return false;
        if (keywordId != null ? !keywordId.equals(that.keywordId) : that.keywordId != null) return false;
        if (keyword != null ? !keyword.equals(that.keyword) : that.keyword != null) return false;
        return objectEntity != null ? objectEntity.equals(that.objectEntity) : that.objectEntity == null;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = keywordId != null ? keywordId.hashCode() : 0;
        result = 31 * result + (keyword != null ? keyword.hashCode() : 0);
        temp = Double.doubleToLongBits(weight);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        result = 31 * result + (objectEntity != null ? objectEntity.hashCode() : 0);
        return result;
    }
}
