// UserManual.aspx.cs
using System;

public partial class UserManual : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    public string GetIndexContent()
    {
        return @"
            <div class='appexs-logo'>
                <span style='color:#4285F4;'>A</span>
                <span style='color:#EA4335;'>P</span>
                <span style='color:#FBBC05;'>P</span>
                <span style='color:#34A853;'>E</span>
                <span style='color:#FF6D00;'>X</span>
                <span style='color:#4285F4;'>s</span>
            </div>
            <h2 class='toc-heading'>Table of Contents</h2>
            <table class='toc-table'>
                <thead>
                    <tr><th>Sr. No</th><th>Index Name</th><th>Sub-indexes</th></tr>
                </thead>
                <tbody>
                    <tr><td>1</td><td>Introduction</td><td>—</td></tr>
                    <tr><td>2</td><td>Getting Started</td><td>Installation, Setup</td></tr>
                    <tr><td>3</td><td>Features</td><td>Feature 1, Feature 2</td></tr>
                    <tr><td>4</td><td>Troubleshooting</td><td>Common Issues, Fixes</td></tr>
                    <tr><td>5</td><td>FAQ</td><td>General Questions, Advanced</td></tr>
                    <tr><td>6</td><td>Contact Support</td><td>Email, Chat, Phone</td></tr>
                </tbody>
            </table>";
    }
}
