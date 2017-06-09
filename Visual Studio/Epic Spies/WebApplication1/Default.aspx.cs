using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                previousCalendar.SelectedDate = DateTime.Now.Date;
                newCalendar.SelectedDate = DateTime.Now.Date.AddDays(14);
                endCalendar.SelectedDate = DateTime.Now.Date.AddDays(21);
            }
        }

        protected void assignButton_Click(object sender, EventArgs e)
        {
            // Spies cost $500 per day
            TimeSpan totalDruationOfAssignment = endCalendar.SelectedDate.Subtract(
                newCalendar.SelectedDate);
            double totalCost = totalDruationOfAssignment.TotalDays * 500.0;

            // If greater than 21 Days then Add $1000
            if (totalDruationOfAssignment.TotalDays > 21)
            {
                totalCost += 1000.0;
            }

            resultLabel.Text = String.Format("Assigment of {0} to assigment of {1} is authorized. " +
                "Budget total: {2:C}",
                codeNameTextBox.Text, 
                newAssignmentTextBox.Text, 
                totalCost);

            TimeSpan timeBetweenAssignments = newCalendar.SelectedDate.Subtract(previousCalendar.SelectedDate);

            if (timeBetweenAssignments.TotalDays < 14)
            {
                resultLabel.Text = "Error: Must allow atleast two weeks between previous assignment and new assignment";

                DateTime earliestNewAssignmentDate = previousCalendar.SelectedDate.AddDays(14);

                newCalendar.SelectedDate = earliestNewAssignmentDate;
                newCalendar.VisibleDate = earliestNewAssignmentDate;
            }
        }
    }
}