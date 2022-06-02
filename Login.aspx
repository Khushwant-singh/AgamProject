<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" 
    Inherits="AgamProject.Login" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    
   <asp:Login runat="server" ID="Login1"  OnAuthenticate="Login1_Authenticate" OnLoggedIn="Login1_LoggedIn" OnLoggingIn="Login1_LoggingIn">
    
    <LayoutTemplate>
    <!-- Email input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="UserName">User name</label>
      
      <asp:TextBox ID="UserName" runat="server" class="form-control" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                            
  </div>

  <!-- Password input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="Password">Password</label>

                                <asp:TextBox ID="Password" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
  </div>

  <!-- 2 column grid layout for inline styling -->
  <div class="row mb-4">
    <div class="col d-flex justify-content-center">
      <!-- Checkbox -->
      <div class="form-check">
                          <asp:CheckBox ID="RememberMe" runat="server" />
        <label class="form-check-label" for="RememberMe"> Remember me </label>

            </div>
    </div>

    </div>
    
        <asp:Button ID="LoginButton" runat="server" 
                  class="btn btn-primary btn-block mb-4" ValidationGroup="Login1" Text="Login" OnClick="LoginButton_Click" />
                              <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                           
  <!-- Submit button -->

  <!-- Register buttons -->
  <div class="text-center">
    <p>Not a member? <a href="#!">Register</a></p>
    <p>or sign up with:</p>
  </div>
 </LayoutTemplate>
   </asp:Login>

    
</asp:Content>
