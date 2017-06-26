Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim pProcess As New System.Diagnostics.Process() 'Create process
        Dim a As String = My.Resources.String1
        pProcess.StartInfo.FileName = a 'strCommand is path and file name of command to run

        pProcess.StartInfo.Arguments = a 'strCommandParameters are parameters to pass to program

        pProcess.StartInfo.UseShellExecute = False

        pProcess.StartInfo.RedirectStandardOutput = True 'Set output of program to be written to process output stream



        pProcess.Start() 'Start the process

        Dim strOutput As String = pProcess.StandardOutput.ReadToEnd() 'Get program output

        pProcess.WaitForExit() 'Wait for process to finish
    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub
End Class
