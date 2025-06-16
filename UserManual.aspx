<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserManual.aspx.cs" Inherits="UserManual" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>User Guidelines Manual - APPEXs</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            height: 100vh;
        }
        .sidebar {
            width: 200px;
            background-color: white;
            display: flex;
            flex-direction: column;
            padding: 20px;
            border: solid;
            border-color: #041836 white white white;
        }
        .sidebar h2 {
            margin-top: 0;
            color: black;
        }
        .sidebar button {
            background-color: transparent;
            border: none;
            color: black;
            font-size: 18px;
            text-align: left;
            padding: 10px 0;
            cursor: pointer;
        }
        .sidebar button:hover {
            text-decoration: underline;
        }
        .main {
            flex: 1;
            display: flex;
            flex-direction: column;
            background-color: #f4f4f4;
            overflow-y: auto;
        }
        .top-navbar {
            background-color: #041836;
            color: white;
            padding: 35px;
            font-size: 45px;
            font-weight: bold;
            text-align: center;
            position: sticky;
            top: 0;
            z-index: 20;
        }
        #main-content {
            flex: 1;
            padding: 40px 50px;
        }
        .appexs-logo {
            font-size: 54px;
            font-weight: 500;
            font-family: 'Segoe UI', Arial, sans-serif;
            letter-spacing: 1px;
            text-align: center;
            margin-bottom: 40px;
        }
        .search-box {
            width: 100%;
            display: flex;
            justify-content: center;
            padding: 0 40px;
        }
        .search-box input {
            width: 100%;
            max-width: 1000px;
            padding: 16px;
            font-size: 20px;
            border: 1px solid #ccc;
            border-radius: 24px;
            outline: none;
        }
        .search-box input:focus {
            border-color: #1e90ff;
            box-shadow: 0 0 5px #1e90ff;
        }
        .toc-heading {
            font-size: 28px;
            margin-bottom: 10px;
            text-align: center;
        }
        .toc-table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
        }
        .toc-table th, .toc-table td {
            border: 1px solid #ccc;
            padding: 12px;
            text-align: left;
        }
        .toc-table th {
            background-color: #e0e0e0;
        }
        .toc-table tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>Menu</h2>
        <button onclick="showIndex()">Index</button>
        <button onclick="showSearch()">Search</button>
    </div>
    <div class="main">
        <div class="top-navbar">
            Advanced Project Planning and Executions Systems
        </div>
        <div id="main-content">
            <%= GetIndexContent() %>
        </div>
    </div>

    <script>
        function showIndex() {
            $("#main-content").html(`
                <%= GetIndexContent().Replace("`", "\\`") %>
            `);
        }

        function showSearch() {
            $("#main-content").html(`
                <div style="
                    height: calc(100vh - 60px);
                    width: 100%;
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                    justify-content: flex-start;
                    padding-top: 60px;
                    overflow: hidden;">
                    <div class="appexs-logo" style="margin-bottom: 20px;">
                        <span style="color:#4285F4;">A</span>
                        <span style="color:#EA4335;">P</span>
                        <span style="color:#FBBC05;">P</span>
                        <span style="color:#34A853;">E</span>
                        <span style="color:#FF6D00;">X</span>
                        <span style="color:#4285F4;">s</span>
                    </div>
                    <div class="search-box">
                        <input type="text" placeholder="Search user manual...">
                    </div>
                </div>
            `);
        }
    </script>
</body>
</html>
