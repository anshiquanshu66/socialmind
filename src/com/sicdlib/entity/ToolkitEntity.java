package com.sicdlib.entity;

/**
 * Created by DeMH on 2017/11/2.
 */
public class ToolkitEntity {
    private String toolkitId;
    private String toolkitName;
    private String toolkitDescribe;
    private String userId;

    public String getToolkitId() {
        return toolkitId;
    }

    public void setToolkitId(String toolkitId) {
        this.toolkitId = toolkitId;
    }

    public String getToolkitName() {
        return toolkitName;
    }

    public void setToolkitName(String toolkitName) {
        this.toolkitName = toolkitName;
    }

    public String getToolkitDescribe() {
        return toolkitDescribe;
    }

    public void setToolkitDescribe(String toolkitDescribe) {
        this.toolkitDescribe = toolkitDescribe;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ToolkitEntity that = (ToolkitEntity) o;

        if (toolkitId != null ? !toolkitId.equals(that.toolkitId) : that.toolkitId != null) return false;
        if (toolkitName != null ? !toolkitName.equals(that.toolkitName) : that.toolkitName != null) return false;
        if (toolkitDescribe != null ? !toolkitDescribe.equals(that.toolkitDescribe) : that.toolkitDescribe != null)
            return false;
        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = toolkitId != null ? toolkitId.hashCode() : 0;
        result = 31 * result + (toolkitName != null ? toolkitName.hashCode() : 0);
        result = 31 * result + (toolkitDescribe != null ? toolkitDescribe.hashCode() : 0);
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        return result;
    }
}
