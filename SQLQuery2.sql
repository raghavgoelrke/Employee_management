USE [DemoApplication]
GO
/****** Object:  StoredProcedure [dbo].[UpdateEmployee]    Script Date: 19-02-2025 09:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[UpdateEmployee]  
    @Employee_Name VARCHAR(50),  
    @New_Department VARCHAR(50),  
    @New_Designation VARCHAR(50)  
AS  
BEGIN  
    SET NOCOUNT ON;  

    UPDATE Employee_Data  
    SET Department = @New_Department,  
        Designation = @New_Designation  
    WHERE Employee_Name = @Employee_Name;
END;