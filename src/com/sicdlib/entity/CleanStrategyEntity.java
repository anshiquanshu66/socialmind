package com.sicdlib.entity;

import javax.persistence.*;

/**
 * Created by DeMH on 2017/11/2.
 */
@Entity
@Table(name = "clean_strategy", schema = "socialmind", catalog = "")
public class CleanStrategyEntity {
    private String name;
    private String cleanStategyId;
    private String type;

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Id
    @Column(name = "cleanStategyID")
    public String getCleanStategyId() {
        return cleanStategyId;
    }

    public void setCleanStategyId(String cleanStategyId) {
        this.cleanStategyId = cleanStategyId;
    }

    @Basic
    @Column(name = "type")
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CleanStrategyEntity that = (CleanStrategyEntity) o;

        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (cleanStategyId != null ? !cleanStategyId.equals(that.cleanStategyId) : that.cleanStategyId != null)
            return false;
        if (type != null ? !type.equals(that.type) : that.type != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = name != null ? name.hashCode() : 0;
        result = 31 * result + (cleanStategyId != null ? cleanStategyId.hashCode() : 0);
        result = 31 * result + (type != null ? type.hashCode() : 0);
        return result;
    }
}