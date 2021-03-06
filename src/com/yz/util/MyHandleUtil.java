package com.yz.util;

import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;

import com.yz.model.Judge;
import com.yz.model.Person;
import com.yz.model.UserRole;

public class MyHandleUtil {

	// 设置sql语句 关于权限分配
	public static String setSqlLimit(String queryString, UserRole userRole,
			InfoType infoType) {

		if (userRole.getUserLimit() != 2) {
			if (userRole != null && userRole.getUnit() != null) {
				switch (infoType) {
				case PERSON:
					// 用户所在机构不为空
					String pids = userRole.getUnit().getPids();
					if (pids != null) {
						pids = pids.replace(" ", "");
						queryString = setSqlIds(queryString, pids);
					} else {
						queryString += " and mo.id in (0)";
					}
					break;
				case CASE:
					// 用户所在机构不为空
					String inids = userRole.getUnit().getInids();
					if (inids != null) {
						inids = inids.replace(" ", "");
						queryString = setSqlIds(queryString, inids);
					} else {
						queryString += " and mo.id in (0)";
					}
					break;
				case CLUE:
					// 用户所在机构不为空
					String cids = userRole.getUnit().getCids();
					if (cids != null) {
						cids = cids.replace(" ", "");
						queryString = setSqlIds(queryString, cids);
					} else {
						queryString += " and mo.id in (0)";
					}
					break;
				default:
					break;
				}

			} else {
				queryString += " and mo.id in (0)";
			}
		}
		return queryString;

	}

	// 设置sql语句 关于id
	public static String setSqlIds(String queryString, String ids) {
		// TODO Auto-generated method stub
		// 用户所在机构不为空
		if (!ids.equals("")&& !ids.equals(",")) {

			String lastChar = "";
			do {
				
				lastChar = ids.substring(ids.length() - 1, ids.length());
				if (lastChar.equals(",")) {
					ids = ids.substring(0, ids.length() - 1);
				}
			} while (lastChar.equals(","));

			queryString += " and mo.id in (" + ids + ")";
		} else {
			queryString += " and mo.id in (0)";
		}
		return queryString;
	}

	// 处理ids,operationType 1:增加 -1 删除
	public static String handleIDs(String objIDs, String opIDs,
			int operationType) {

		String newIDs = "";

		Set<String> objIDSet = handleSet(objIDs);

		Set<String> opIDSet = handleSet(opIDs);

		if (operationType == 1) {
			objIDSet.addAll(opIDSet);
		} else if (operationType == -1) {
			objIDSet.removeAll(opIDSet);
		}

		for (String id : objIDSet) {
			if(!id.equals(""))
			{
				newIDs = newIDs + id + ",";
			}
		}
		return newIDs;
	}

	public static Set<String> handleSet(String ids) {
		
		Set<String> idSet = new HashSet<String>();
		
		if(ids==null||ids.equals(""))
		{
			return idSet;
		}

		ids = ids.replace(" ", "");
		
		if (ids.contains(",")) {

			String[] arrayIDs = ids.split(",");
			for (int i = 0; i < arrayIDs.length; i++) {
				if (!arrayIDs[i].equals("")) {
					idSet.add(arrayIDs[i]);
				}
			}

		} else {
			idSet.add(ids);
		}
		return idSet;

	}

}
