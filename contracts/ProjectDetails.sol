pragma solidity ^0.6.1;
contract ProjectDetails { 
    struct project{
        uint projectId;
        string projectName;
        string airportName;
        string status;
        string documentAddress;
    }
    // Map the struct project with project id //
    mapping(uint => project) mProjects;
    //Collection of project ids //
    uint[] public mProjectsCollection;
    //set the project details //
    function setProject(uint _projectId,string memory _projectName,string memory _airportName,string memory _status,string memory _documentAddress) public{
        //assign value to the project struct //
        project storage mProject = mProjects[_projectId];
        mProject.projectId = _projectId;
        mProject.projectName = _projectName;
        mProject.airportName = _airportName;
        mProject.status = _status;
        mProject.documentAddress = _documentAddress;
        // Add it to the collection of project ids //
        mProjectsCollection.push(_projectId);
    }
    function getProject(uint _projectId) public view  returns (uint, string memory, string memory,string memory, string memory) {
        // Get the details of project by it's id //
        return (mProjects[_projectId].projectId,mProjects[_projectId].projectName, mProjects[_projectId].airportName,mProjects[_projectId].status,mProjects[_projectId].documentAddress);
    }
    // Set the project name by it's id//
     function setProjectName(uint _projectId,string memory _projectName) public {
        mProjects[_projectId].projectName = _projectName;
    }
   // Get the project name by it's id//
    function getProjectName(uint _projectId) public view returns (string memory){
        return mProjects[_projectId].projectName;
    }
    // Set the airport name by it's id//
    function setAirportName(uint _projectId,string memory _airportName) public{
        mProjects[_projectId].airportName = _airportName;
    }
     // Get the airport name by it's id//
    function getAirportName(uint _projectId) public view returns(string memory) {
        return mProjects[_projectId].airportName;
    }
     // Set the document address by it's id//
    function setDocumentAddress(uint _projectId,string memory _documentAddress) public {
        mProjects[_projectId].documentAddress = _documentAddress;
    }
     // Get the document address by it's id//
    function getDocumentAddress(uint _projectId) public view returns(string memory) {
        return mProjects[_projectId].documentAddress;
    }
    // Set the status of project by it's id //
    function setStatus(uint _projectId,string memory _status) public{
        mProjects[_projectId].status = _status;
    }
    // Get the status of project by it's id //
    function getStatus(uint _projectId) public view returns(string memory) {
        return mProjects[_projectId].status;
    }
    // Get the total projects //
    function getTotalProjectsCount() public view returns(uint) {
        return mProjectsCollection.length;
    }
    // Get all project ids //
    function getProjectsId() public view returns(uint[] memory) {
        return mProjectsCollection;
    }
    
}