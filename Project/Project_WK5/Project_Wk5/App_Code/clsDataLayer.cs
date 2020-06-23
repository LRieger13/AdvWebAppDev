using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

/// <summary>
/// Summary description for clsDataLayer
/// 
/// Here lies the database connection, 
/// logic to implement manipulations on the data &
/// dataset to represent database;
/// </summary>
public class clsDataLayer
{
    OleDbConnection dbConnection;

	public clsDataLayer(string Path)
	{
		// new database connection
        dbConnection = new OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;Data Source=" + Path);
	}

    /// FIND USER BY LAST NAME
    // FindUser method that accepts 'LastName' as param, returns instances
    public dsProgramaholics FindUser(string LastName)
    { 
        // new sql statement
        string sqlStmt = "SELECT * FROM tblProgramaholics WHERE LName = '" + LastName + "'";
        OleDbDataAdapter sqlDataAdapter = new OleDbDataAdapter(sqlStmt, dbConnection);

        // fill data set
        dsProgramaholics myDataSet = new dsProgramaholics();
        sqlDataAdapter.Fill(myDataSet.tblProgramaholics);

        return myDataSet;
    }// end find

    /// UPDATE USER INFO
    // UpdateUser method
    public void UpdateUser(string FName, string LName, string street, string city,
        string state, string email, string password, string favLanguage, string leastFavLang, string dateCompleted, int userID)
    { 
        // open connection
        dbConnection.Open();

        // sql statement
        string sqlStmt = "UPDATE tblProgramaholics SET FName = @first, " +
            "LName = @last, " +
            "Street = @street, " +
            "City = @city, " +
            "State = @state, " +
            "Email = @email, " +
            "[Password] = @pass, " +
            "FavLang = @fav, " +
            "LeastFavLang = @least, " +
            "DateComplete = @date " +
            "WHERE (tblProgramaholics.ID = @id)";

        // new command params and connection
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        dbCommand.Parameters.Add(new OleDbParameter("@first", FName));
        dbCommand.Parameters.Add(new OleDbParameter("@last", LName));
        dbCommand.Parameters.Add(new OleDbParameter("@street", street));
        dbCommand.Parameters.Add(new OleDbParameter("@city", city));
        dbCommand.Parameters.Add(new OleDbParameter("@state", state));
        dbCommand.Parameters.Add(new OleDbParameter("@email", email));
        dbCommand.Parameters.Add(new OleDbParameter("@password", password));
        dbCommand.Parameters.Add(new OleDbParameter("@fav", favLanguage));
        dbCommand.Parameters.Add(new OleDbParameter("@least", leastFavLang));
        dbCommand.Parameters.Add(new OleDbParameter("@date", dateCompleted));
        dbCommand.Parameters.Add(new OleDbParameter("@id", userID));

        // execute query & close
        dbCommand.ExecuteNonQuery();

        dbConnection.Close();
    }// end update

    /// ADD NEW USER
    // insertUser method
    public void InsertUser(string firstName, string lastName,
        string street, string city, string state, string username, string password,
        string favLanguage, string leastFavLang, string dateCompleted)
    {
        // open connection
        dbConnection.Open();

        // sql statement to insert
        string sqlStmt = "INSERT INTO tblProgramaholics (FName, LName, Street, City, State, Email, [Password], FavLang, LeastFavLang, DateComplete)";
        sqlStmt += "VALUES (@first, @last, @street, @city, @state, @email, @pass, @fav, @least, @date)";

        // new db command
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        // new db parameters
        // parameters to add
        dbCommand.Parameters.Add(new OleDbParameter("@first", firstName));
        dbCommand.Parameters.Add(new OleDbParameter("@last", lastName));
        dbCommand.Parameters.Add(new OleDbParameter("@street", street));
        dbCommand.Parameters.Add(new OleDbParameter("@city", city));
        dbCommand.Parameters.Add(new OleDbParameter("@state", state));
        dbCommand.Parameters.Add(new OleDbParameter("@email", username));
        dbCommand.Parameters.Add(new OleDbParameter("@pass", password));
        dbCommand.Parameters.Add(new OleDbParameter("@fav", favLanguage));
        dbCommand.Parameters.Add(new OleDbParameter("@least", leastFavLang));
        dbCommand.Parameters.Add(new OleDbParameter("@date", dateCompleted));

        // execute the query
        dbCommand.ExecuteNonQuery();

        // close connection
        dbConnection.Close();
    } // end add

    /// DELETE USER
    // deleteUser method
    public void DeleteUser(int userID)
    {
        // open connection
        dbConnection.Open();

        // sql statement to delete
        string sqlStmt = "DELETE FROM tblProgramaholics WHERE ID = @id";

        // new db command
        OleDbCommand dbCommand = new OleDbCommand(sqlStmt, dbConnection);

        // new db parameters
        // parameters to add
        dbCommand.Parameters.Add(new OleDbParameter("@id", userID));

        // execute the query
        dbCommand.ExecuteNonQuery();

        // close connection
        dbConnection.Close();
    }// end delete

    /// FILL DATASET
    // GetUser method
    public dsProgramaholics GetUser()
    {
        OleDbDataAdapter sqlDataAdapter = new OleDbDataAdapter("SELECT * FROM tblProgramaholics;", dbConnection);

        dsProgramaholics userDataSet = new dsProgramaholics();
        sqlDataAdapter.Fill(userDataSet.tblProgramaholics);

        return userDataSet;
    }// end getUser

    /// get the personal stats
    public dsProgramaholics GetPersonalStats()
    {
        OleDbDataAdapter sqlDataAdapter = new OleDbDataAdapter("SELECT * FROM tblProgramaholics;", dbConnection);

        // fill the data set
        dsProgramaholics myDataSet = new dsProgramaholics();
        sqlDataAdapter.Fill(myDataSet.tblProgramaholics);

        return myDataSet;
    }
}