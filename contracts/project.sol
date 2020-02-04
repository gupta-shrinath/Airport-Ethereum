pragma solidity ^0.6.1;
contract Project {
    string projectName;
    string airportName;
    string documentAddress;
    /*
    constructor (string memory _projectName,string memory _airportName,string memory _documentAddress) public {
        projectName = _projectName;
        airportName = _airportName;
        documentAddress = _documentAddress;
    }
    */
    function setProjectName(string memory _projectName) public {
        projectName = _projectName;
    }
    function getProjectName() public view returns (string memory){
        return projectName;
    }
    function setAirportName(string memory _airportName) public{
        airportName = _airportName;
    }
    function getAirportName() public view returns(string memory) {
        return airportName;
    }
    function setDocumentAddress(string memory _documentAddress) public {
        documentAddress = _documentAddress;
    }
    function getDocumentAddress() public view returns(string memory) {
        return documentAddress;
    }
}