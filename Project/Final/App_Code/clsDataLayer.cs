using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsDataLayer
/// </summary>
public class clsDataLayer
{
    // database connection
    OleDbConnection dbConnection;

    public clsDataLayer(string Path)
    {
        //
        // new database connection
        dbConnection = new OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;Data Source=" + Path);

    }

    /// find user method
    // used to find the user in the database
    public dsProgramaholics FindUser(string LastName)
    { 
        // sql statements to find user in datbase
        /*
        string sqlStmt = "SELECT *" + 
        "FROM tblUserDetails " + 
        "LEFT JOIN tblProgram ON (tblUserDetails.id = tblProgram.id)" +
        "LEFT JOIN tblCompleted ON (tblUserDetails.id = tblCompleted.id)" +
        " WHERE tblUserDetails.LastName like '" + LastName + "';";
*/

        string sqlStmt = "SELECT * FROM tblUserDetails, tblProgram, tblCompleted WHERE tblUseDetails.id = tblProgram.id and tblUseDetails.id = tblCompleted.id and tblUserDetails.LasName like ‘“ + LastName + “‘";
		
        OleDbDataAdapter sqlDataAdapter = new OleDbDataAdapter(sqlStmt, dbConnection);

        // new dataset to store
        dsProgramaholics myStoreData = new dsProgramaholics();
        sqlDataAdapter.Fill(myStoreData.tblUserDetails);
        sqlDataAdapter.Fill(myStoreData.tblPrograms);
        sqlDataAdapter.Fill(myStoreData.tblCompleted);

        // return dataset
        return myStoreData;
    }

    /// UpdateUser methods
    // used to update user information in database
    public void UpdateTblUser(string firstName, string lastName, string email, string pwd, string street,
        string city, string state)
    { 
        // open conenction to database & sql statement to update user
        dbConnection.Open();

        string sqlStmt = "UPDATE tblUserDetails SET FName = @first, " +
            "LName = @last, " +
            "Email = @email, " +
            "Pwd = @pwd, " +
            "Street = @street, " +
            "City = @city, " +
            "State = @state, " +
            
            "WHERE (tblUserDetails.UserID = @id)";

        // new database parameters
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        dbCommand.Parameters.Add(new OleDbParameter("@first", firstName));
        dbCommand.Parameters.Add(new OleDbParameter("@last", lastName));
        dbCommand.Parameters.Add(new OleDbParameter("@email", email));
        dbCommand.Parameters.Add(new OleDbParameter("@pwd", pwd));
        dbCommand.Parameters.Add(new OleDbParameter("@street", street));
        dbCommand.Parameters.Add(new OleDbParameter("@city", city));
        dbCommand.Parameters.Add(new OleDbParameter("@state", state));
         
        // execute query & close connection
        dbCommand.ExecuteNonQuery();

        dbConnection.Close();
    }

    // used to update tblProgram information in database
    public void UpdateTblProgram (string favLang, string least)
    {
        // open conenction to database & sql statement to update user
        dbConnection.Open();

        string sqlStmt = "UPDATE tblPrograms SET FavLang = @fav, " +
            "Least = @least, " +

            "WHERE (tblPrograms.UserID = @id)";

        // new database parameters
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        dbCommand.Parameters.Add(new OleDbParameter("@fav", favLang));
        dbCommand.Parameters.Add(new OleDbParameter("@least", least));

        // execute query & close connection
        dbCommand.ExecuteNonQuery();

        dbConnection.Close();
    }

    // used to update completed programs information in database
    public void UpdateTblCompleted(string programName, string programLang, string date)
    {
        // open conenction to database & sql statement to update user
        dbConnection.Open();

        string sqlStmt = "UPDATE tblCompleted SET ProgramName = @pName, " +
            "ProgramLang = @pLang, " +
            "Date = @date, " +

            "WHERE (tblCompleted.UserID = @id)";

        // new database parameters
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        dbCommand.Parameters.Add(new OleDbParameter("@pName", programLang));
        dbCommand.Parameters.Add(new OleDbParameter("@pLang", programName));
        dbCommand.Parameters.Add(new OleDbParameter("@date", date));

        // execute query & close connection
        dbCommand.ExecuteNonQuery();

        dbConnection.Close();
    }

    ///AddUser method
    // add a new user account to the database
    public void InsertUser(string firstName, string lastName, string email, string pwd, string street,
        string city, string state)
    { 
        // open connection / sql statement
        dbConnection.Open();

        string sqlStmt = "INSERT INTO tblUserDetails (FirstName, LastName, Email, Pwd, Street, City, State)";
        sqlStmt += "VALUES (@first, @last, @email, @pwd, @street, @city, @state";

        // connection for statement & params
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        dbCommand.Parameters.Add(new OleDbParameter("@first", firstName));
        dbCommand.Parameters.Add(new OleDbParameter("@last", lastName));
        dbCommand.Parameters.Add(new OleDbParameter("@email", email));
        dbCommand.Parameters.Add(new OleDbParameter("@pwd", pwd));
        dbCommand.Parameters.Add(new OleDbParameter("@street", street));
        dbCommand.Parameters.Add(new OleDbParameter("@city", city));
        dbCommand.Parameters.Add(new OleDbParameter("@state", state));

        // execute & close
        dbCommand.ExecuteNonQuery();

        dbConnection.Close();
    }

    // add a new user program to the database
    public void InsertUserProgram(string favLang, string least)
    {
        // open connection / sql statement
        dbConnection.Open();

        string sqlStmt = "INSERT INTO tblPrograms (FavLang, Least)";
        sqlStmt += "VALUES (@fav, @least";

        // connection for statement & params
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        dbCommand.Parameters.Add(new OleDbParameter("@first", favLang));
        dbCommand.Parameters.Add(new OleDbParameter("@last", least));

        // execute & close
        dbCommand.ExecuteNonQuery();

        dbConnection.Close();
    }

    // add a new user completed program to the database
    public void InsertUserCompleted(string programName, string programLang, string date)
    {
        // open connection / sql statement
        dbConnection.Open();

        string sqlStmt = "INSERT INTO tblCompleted (ProgramName, ProgramLang, Date)";
        sqlStmt += "VALUES (@pName, @pLang, @date";

        // connection for statement & params
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        dbCommand.Parameters.Add(new OleDbParameter("@pName", programName));
        dbCommand.Parameters.Add(new OleDbParameter("@pLang", programLang));
        dbCommand.Parameters.Add(new OleDbParameter("@date", date));

        // execute & close
        dbCommand.ExecuteNonQuery();

        dbConnection.Close();
    }

    /// gridview
    // get all users & fill 
    public dsProgramaholics GetAllUsers()
    { 
        // new adapter
        OleDbDataAdapter sqlDataAdapter = new OleDbDataAdapter("SELECT * FROM tblUserDetails;", dbConnection);

        // store data & fill
        dsProgramaholics myStoreData = new dsProgramaholics();
        sqlDataAdapter.Fill(myStoreData.tblUserDetails);

        // return
        return myStoreData;
    }

    /// validate method
    // validates user with login
    public bool ValidateUser(string username, string password)
    { 
        // open connection & sql statement
        dbConnection.Open();

        string sqlStmt = "SELECT * FROM tblUserDetails WHERE UserID = @id AND Pwd = @passwd AND Locked = FALSE";

        // connection & params
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        dbCommand.Parameters.Add(new OleDbParameter("@id", username));
        dbCommand.Parameters.Add(new OleDbParameter("@passwd", password));

        // execute reader & validate
        OleDbDataReader dr = dbCommand.ExecuteReader();

        Boolean isValidAccount = dr.Read();

        // close connection & return 
        dbConnection.Close();

        return isValidAccount;
    }

    // lock account
    public void LockUserAccount(string username)
    { 
        // open conn & sql statement
        dbConnection.Open();
        string sqlStmt = "UPDATE tblUserDetails SET Locked = True WHERE UserID = @id";

        // new command & params
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        dbCommand.Parameters.Add(new OleDbParameter("@id", username));

        // execute & close
        dbCommand.ExecuteNonQuery();
        dbConnection.Close();
    }
}