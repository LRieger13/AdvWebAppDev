using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsBusinessLayer
/// </summary>
public class clsBusinessLayer
{
    // data field to store the XML file
    string dataPath;

    // data field to be used as a datalayer instance for interaction
    clsDataLayer myDataLayer;

	public clsBusinessLayer(string serverMappedPath)
	{
		/// initialize data fields
        dataPath = serverMappedPath;
        myDataLayer = new clsDataLayer(dataPath + "Programaholics.mdb");
	}

    // get user file
    public DataSet GetPersonalStats()
    {
        DataSet xmlDataSet = new DataSet();

        try 
        {
            xmlDataSet.ReadXml(dataPath + "personalReports.xml");
        }// end try
        catch (System.IO.FileNotFoundException error)
        {
            dsProgramaholics userListing = myDataLayer.GetPersonalStats();
            userListing.tblProgramaholics.WriteXml(dataPath + "personalReports.xml");
            xmlDataSet.ReadXml(dataPath + "personalReports.xml");
        }//end catch

        return xmlDataSet;
    } // end get stats

    /// write userStats 
    // writes personalReports
    public DataSet WritePersonalStatsXMLFile(System.Web.Caching.Cache appCache)
    {
        DataSet xmlDataSet = (DataSet)appCache["UserDataSet"];

        xmlDataSet.WriteXml(dataPath + "personalRecords.xml");

        return xmlDataSet;
    }

}