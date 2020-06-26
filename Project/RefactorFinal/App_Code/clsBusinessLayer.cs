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

    /// select all users
    // calls the get all users
    public dsProgramaholics SelectAllUsers()
    {
        return myDataLayer.GetAllUsers();
    }

   /// UpdateUser information
   // updating users
    public string UpdateUser(string firstName, string lastName, string username, string password,
        string street, string city, string state, string favLang, string least, string programName, string programLanguage, string date)
    { 
        // message of success
        string resultMessage = "User Updated Successfully! ";

        // try to update, catch errors
        try
        {
            myDataLayer.UpdateTblUser(firstName, lastName, username, password, street, city, state);
            myDataLayer.UpdateTblProgram(favLang, least);
            myDataLayer.UpdateTblCompleted(programLanguage, programName, date);

        }
        catch (Exception error)
        {
            resultMessage = "Error updating customer, please check your information! ";
            resultMessage = resultMessage + error.Message;
        }
        return resultMessage;
    }

    /// insertUser method
    // create new user
    public string InsertUser(string firstName, string lastName, string username, string password, string street, string city, string state)
    {
        string resultMessage = "User added successfully! ";

        // try to insert
        try
        {
            myDataLayer.InsertUser(firstName, lastName, username, password, street, city, state);
        }
        catch (Exception error)
        {
            resultMessage = "Error adding new user, please check your information! ";
            resultMessage = resultMessage + error.Message;
        }
        return resultMessage;
    }

    /// findUser method
    // find user in database
    public dsProgramaholics FindUser(string LastName)
    { 
        // find user
        dsProgramaholics dsFoundUser = myDataLayer.FindUser(LastName);

        // go through database fields
        if (dsFoundUser.tblUserDetails.Rows.Count > 0)
        { 
            // go through records
            System.Data.DataRow userRecord = dsFoundUser.tblUserDetails.Rows[0];
            if(userRecord["FirstName"] == DBNull.Value)
                userRecord["FirstName"] = string.Empty;
            if (userRecord["LastName"] == DBNull.Value)
                userRecord["LastName"] = string.Empty;
            if (userRecord["Username"] == DBNull.Value)
                userRecord["Username"] = string.Empty;
            if (userRecord["Password"] == DBNull.Value)
                userRecord["Password"] = string.Empty;
            if (userRecord["Street"] == DBNull.Value)
                userRecord["Street"] = string.Empty;
            if (userRecord["City"] == DBNull.Value)
                userRecord["City"] = string.Empty;
            if (userRecord["State"] == DBNull.Value)
                userRecord["State"] = string.Empty;
        }
        return dsFoundUser;
    }
}