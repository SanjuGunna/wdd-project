<%@ Page Language="C#" AutoEventWireup="true" CodeFile="workout.aspx.cs" Inherits="workout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
        <img src="photos2/Cover1.jpg" style="width: 100%; height: 447px; margin-bottom: 0px;" />
        </br>
    <form id="form1" runat="server">
<table>
            <tr>
                <td style="width : 320px">
                    <a href="faq.aspx">FAQ </a>
                </td>
            
                <td style ="width : 320px">
                    <a href="Contact us.aspx">Contact US</a>
                </td>
                <td style="width : 320px">
                  
                    <asp:HyperLink 
             ID="acc"
             runat="server"
              NavigateUrl="account.aspx"
             > Your Account
        </asp:HyperLink>
                </td>
               
                <td style="width : 320px">
                     <asp:PlaceHolder runat="server" ID="change">
                    <a href="login.aspx">Log in </a>
                         
                          </asp:PlaceHolder>
                </td>
                <td style="width : 320px">
                      <asp:PlaceHolder runat="server" ID="chbage1">
                    <a href="login.aspx">Register</a>
                    </asp:PlaceHolder>
                </td><td style ="width : 320px">
                    <a href="supliments.aspx">Supliments</a>
                </td>
                               
                                 <td style ="width : 320px">
                    <a href="workout.aspx">Workout Tips</a>
                </td>
                </tr>
        </table>

    <div>
        <td>
                    <span style="color:green">
                        &nbsp;<B>Benifits of Cardio</B>
                    </span>
                    <span>
                        </br>
<b>5 Great Benefits Of Cardiovascular Exercise! </br>

    1) Cardio. </br>
    2) Cardiovascular. Circuit Training.</br>
    3) Energy Enhancement.</br>
    4) Heart Rate.</br>
    5) High Intensity Cardio.</br>
    6) High Intensity Interval Training (HIIT)</br>
    7) Interval Training.</br>
    8) Making Cardio Fun.</br> </b>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="photos2/index8.jpg" style="height: 232px; width: 583px; margin-right: 0px; margin-left: 0px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<img src="photos2/index4.jpg" style="height: 232px; width: 583px; margin-right: 0px; margin-left: 0px;" />
                    </span>
                </td>
                              </br></br></br>  
                <td>
                    <span style="color:green">
                        &nbsp;<B>The Benefits of Weight Training</B>
                    </span>
                    <span>
                        </br>
<b>
There is actually a long list of why you should include strength training in your program. </br>

    Not only does strength training increase your physical work capacity, it also improves your ability to perform activities of daily living (ADL's).  </br>You will be able to work harder and longer with the proper weight training activities.</br>
    It improves bone density.  One of the best ways you can control bone loss as you age is to add strength training into your workout plan.</br>
    It promotes fat-free body mass with decreasing sarcopenia.  The lean muscle mass that we all work so hard for decreases with age.  If we don't add strength training to our routine then it will turn into fat. </br>
    It Increases the strength of connective tissue, muscles, and tendons. This leads to improved motor performance and decreased injury risk.</br>
    It improves your quality of life as you gaining body confidence.  Strength training will not only make you strong, but will also help with managing your weight.   
        <br />
        </br> </b>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="photos2/index5.jpg" style="height: 232px; width: 583px; margin-right: 0px; margin-left: 0px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<img src="photos2/index6.jpg" style="height: 232px; width: 583px; margin-right: 0px; margin-left: 0px;" />
                    </span>
                </td>
                              </br></br></br>  
    </div>
    </form>
</body>
</html>
