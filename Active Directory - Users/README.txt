PowerShell Toolkit for Active Directory Management

This collection of PowerShell scripts helps manage Active Directory environments efficiently. These scripts simplify common administrative tasks and can be customised for regular infrastructure operations.

Contents:

1. Create New AD User (Interactive)
   Prompts for user details including name, username, job title, department, OU, and password. Creates a new Active Directory user.

2. Export All AD Users to CSV
   Exports all users with selected fields such as job title, department, display name, and email address.

3. Bulk User Creation from CSV
   Reads from a structured CSV file to create multiple Active Directory users in one go.

4. Reset User Password
   Securely resets a user's password and enforces a password change at next logon.

5. Disable Inactive Users
   Finds and disables user accounts that have not logged in for over 90 days.

6. List Locked-Out Users
   Outputs a list of currently locked-out user accounts to a CSV file.

7. Enable a Disabled User
   Re-enables a previously disabled Active Directory user account.

8. Move User to a New OU
   Moves a user account to a different Organisational Unit.

9. List Group Memberships for a User
   Shows all Active Directory groups that a specific user is a member of.

10. Export All Group Memberships
    Exports each AD group and their members to separate CSV files.

CSV Format for Bulk User Creation:

FirstName,LastName,Username,Password,JobTitle,Department,OU
John,Smith,jsmith,Pass\@123,Doctor,Cardiology,"OU=Doctors,DC=domain,DC=local"

Notes:

* Run scripts in PowerShell with administrative privileges.
* The Active Directory module must be installed.
* Ensure any necessary output directories (e.g., for CSV files) exist before running the scripts.

These scripts are provided as-is and can be adapted for different environments and use cases.
