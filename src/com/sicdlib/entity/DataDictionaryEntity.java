package com.sicdlib.entity;

import javax.persistence.*;

/**
 * Created by DeMH on 2017/11/2.
 */
@Entity
@Table(name = "data_dictionary", schema = "socialmind", catalog = "")
public class DataDictionaryEntity {
    private String attributeValue;
    private String note;
    private String attributeName;
    private String dataDictionaryId;

    @Basic
    @Column(name = "attributeValue")
    public String getAttributeValue() {
        return attributeValue;
    }

    public void setAttributeValue(String attributeValue) {
        this.attributeValue = attributeValue;
    }

    @Basic
    @Column(name = "note")
    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Basic
    @Column(name = "attributeName")
    public String getAttributeName() {
        return attributeName;
    }

    public void setAttributeName(String attributeName) {
        this.attributeName = attributeName;
    }

    @Id
    @Column(name = "dataDictionaryID")
    public String getDataDictionaryId() {
        return dataDictionaryId;
    }

    public void setDataDictionaryId(String dataDictionaryId) {
        this.dataDictionaryId = dataDictionaryId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DataDictionaryEntity that = (DataDictionaryEntity) o;

        if (attributeValue != null ? !attributeValue.equals(that.attributeValue) : that.attributeValue != null)
            return false;
        if (note != null ? !note.equals(that.note) : that.note != null) return false;
        if (attributeName != null ? !attributeName.equals(that.attributeName) : that.attributeName != null)
            return false;
        if (dataDictionaryId != null ? !dataDictionaryId.equals(that.dataDictionaryId) : that.dataDictionaryId != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = attributeValue != null ? attributeValue.hashCode() : 0;
        result = 31 * result + (note != null ? note.hashCode() : 0);
        result = 31 * result + (attributeName != null ? attributeName.hashCode() : 0);
        result = 31 * result + (dataDictionaryId != null ? dataDictionaryId.hashCode() : 0);
        return result;
    }
}
