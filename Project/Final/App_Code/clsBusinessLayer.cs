using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for clsBusinessLayer
/// </summary>
public class clsBusinessLayer
{
    // data path
    string dataPath;
    // data layer
    clsDataLayer myDataLayer;

	public clsBusinessLayer(string serverMappedPath)
	{
		
		// data pathing
        dataPath = serverMappedPath;
        myDataLayer = new clsDataLayer(dataPath + "Programaholics.mdb");

        
	}

    /// get user XML file method
    // gets all info for XML gridview
    public DataSet GetUserXMLFile()
    { 
        // new dataset
        DataSet xmlDataSet = new DataSet();

        try
        {
            // path for XML
            xmlDataSet.ReadXml(dataPath + "user.xml");
        }
        catch (System.IO.FileNotFoundException error)
        { 
            // get users info & write XML
            dsProgramaholics userList = myDataLayer.GetAllUsers();
            userList.tblUserDetails.WriteXml(dataPath + "user.xml");
            xmlDataSet.ReadXml(dataPath + "user.xml");
        }
        // return data
        return xmlDataSet;
    }

    /// write xml file
    // write xml method
    public DataSet WriteUserXMLFile(System.Web.Caching.Cache appCache)
    { 
        // cache dataset
        DataSet xmlData = (DataSet)appCache["UserDataSet"];

        // write data
        xmlData.WriteXml(dataPath + "user.xml");

        return xmlData;
    }

    /// check credentials
    // CheckUserCredentials method
    public bool CheckUserCredentials(System.Web.SessionState.HttpSessionState currentSession,
        string username, string passwd)
    { 
        // set locked to false
        currentSession["LockedSession"] = false;

        // total attempts to unlock
        int totalAttempts = Convert.ToInt32(currentSession["AttemptCount"]) + 1;
        currentSession["AttemptCount"] = totalAttempts;

        // attempts to unlock
        int userAttempts = Convert.ToInt32(currentSession[username]) + 1;
        currentSession[username] = userAttempts;

        // if greater than 3 or total > 6 lock acct
        if ((userAttempts > 3) || (totalAttempts > 6))
        {
            currentSession["LockedSession"] = true;
            myDataLayer.LockUserAccount(username);
        }
        return myDataLayer.ValidateUser(username, passwd);
    }

}