namespace TestApp.Tests;

public class BasicTestFail
{
    [SetUp]
    public void Setup()
    {
    }

    [Test]
    public void Test_Pass()
    {
        Assert.Pass();
    }

    [Test]
    public void Test_Fail()
    {
        // Fixed to allow pipelines to run
        Assert.Fail();
    }
}