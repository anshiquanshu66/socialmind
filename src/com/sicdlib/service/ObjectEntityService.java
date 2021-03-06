package com.sicdlib.service;

import com.sicdlib.entity.ObjectEntity;
import edu.xjtsoft.base.service.DefaultEntityManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ObjectEntityService extends DefaultEntityManager<ObjectEntity> {

    /**
     * 获得舆情对象列表
     * @param objectType      舆情对象类型  事件/实体
     * @param addTime         开始时间      2017-11-07 15:11:00
     * @return
     */
    public List<ObjectEntity> getObjectIndicators(String objectType, String place, String addTime){
        String hql = "from ObjectEntity o where o.objectType = '"+ objectType +  "' and place like '%"+ place +"' and o.addTime > '"+ addTime +"'";
        List<ObjectEntity> objects = getEntityDao().find(hql);
        return objects;
    }

    //前台查找对象
    public List<ObjectEntity> findObject(){
        String hql = "from ObjectEntity o";
        List<ObjectEntity> object = getEntityDao().find(hql);
        return object;
    }

    //前台查找对象
    public List<ObjectEntity> findObjectInfo(String objectId){
        String hql = "from ObjectEntity o where o.objectId = '" +objectId+"'";
        List<ObjectEntity> objectInfo = getEntityDao().find(hql);
        return objectInfo;
    }

    //前台根据关键字模糊查找对象
    public List<ObjectEntity> findObject(String object){
        String hql = "from ObjectEntity o where o.name like '%" +object+"%'";
        List<ObjectEntity> objectInfo = getEntityDao().find(hql);
        return objectInfo;
    }

    /**
     * @ wlw
     * 获得相似的舆情对象
     */
    public List<ObjectEntity> getObjectsLikeName(String name){
        String hql = "from ObjectEntity o where o.name like '%" + name + "%'";
        List<ObjectEntity> objects = getEntityDao().find(hql);
        return objects;
    }

}
