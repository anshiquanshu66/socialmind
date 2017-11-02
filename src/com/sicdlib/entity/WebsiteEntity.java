package com.sicdlib.entity;

import javax.persistence.*;

/**
 * Created by DeMH on 2017/11/2.
 */
@Entity
@Table(name = "website", schema = "socialmind", catalog = "")
public class WebsiteEntity {
    private String websiteId;
    private String websiteName;
    private String websiteUrl;
    private String containTableId;
    private String websiteTypeId;

    @Id
    @Column(name = "websiteID")
    public String getWebsiteId() {
        return websiteId;
    }

    public void setWebsiteId(String websiteId) {
        this.websiteId = websiteId;
    }

    @Basic
    @Column(name = "websiteName")
    public String getWebsiteName() {
        return websiteName;
    }

    public void setWebsiteName(String websiteName) {
        this.websiteName = websiteName;
    }

    @Basic
    @Column(name = "websiteURL")
    public String getWebsiteUrl() {
        return websiteUrl;
    }

    public void setWebsiteUrl(String websiteUrl) {
        this.websiteUrl = websiteUrl;
    }

    @Basic
    @Column(name = "containTableID")
    public String getContainTableId() {
        return containTableId;
    }

    public void setContainTableId(String containTableId) {
        this.containTableId = containTableId;
    }

    @Basic
    @Column(name = "websiteTypeID")
    public String getWebsiteTypeId() {
        return websiteTypeId;
    }

    public void setWebsiteTypeId(String websiteTypeId) {
        this.websiteTypeId = websiteTypeId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        WebsiteEntity that = (WebsiteEntity) o;

        if (websiteId != null ? !websiteId.equals(that.websiteId) : that.websiteId != null) return false;
        if (websiteName != null ? !websiteName.equals(that.websiteName) : that.websiteName != null) return false;
        if (websiteUrl != null ? !websiteUrl.equals(that.websiteUrl) : that.websiteUrl != null) return false;
        if (containTableId != null ? !containTableId.equals(that.containTableId) : that.containTableId != null)
            return false;
        if (websiteTypeId != null ? !websiteTypeId.equals(that.websiteTypeId) : that.websiteTypeId != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = websiteId != null ? websiteId.hashCode() : 0;
        result = 31 * result + (websiteName != null ? websiteName.hashCode() : 0);
        result = 31 * result + (websiteUrl != null ? websiteUrl.hashCode() : 0);
        result = 31 * result + (containTableId != null ? containTableId.hashCode() : 0);
        result = 31 * result + (websiteTypeId != null ? websiteTypeId.hashCode() : 0);
        return result;
    }
}
