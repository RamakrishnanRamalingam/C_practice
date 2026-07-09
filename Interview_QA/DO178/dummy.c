EOP 
ENGINEERING OPERATING PROCEDURE 
REVISED: 2025-07-15 
No.:084 
Responsible Organization:  
Externals, Controls & Nacelles 
Page 1 of 50 
REQUIREMENTS FOR DEVELOPMENT OF ENGINE CONTROL 
SYSTEMS 
P&WC Controlled as per MMP 60 and MMP 85 
WARNING - PROPRIETARY RIGHTS NOTICE: This document is the property of Pratt & Whitney Canada Corp. ("P&WC"). You may not possess, 
use, copy or disclose this document or any information in it, for any purpose, including without limitation to design, manufacture, or repair parts, 
or obtain TCCA, FAA or other government approval to do so, without P&WC's express written permission. Neither receipt nor possession of this 
document alone, from any source, constitutes such permission. Possession, use, copying or disclosure by anyone without P&WC's express written 
permission is not authorized and may result in criminal or civil liability. 
NOTICE - DISCLOSURE OF INFORMATION: This document contains trade secrets or other confidential information, the further disclosure of 
which may be harmful to Pratt & Whitney Canada Corp. If the head of a Government agency or department intends to disclose any of this 
information, written notice should be given to: the Vice President - Legal Services, Pratt & Whitney Canada Corp., 1000 Marie-Victorin (01BE5), 
Longueuil, Quebec J4G 1A1.  
Custodian: 
Michael Krynski 
Agreed For TCCA: 
Nature of Change for this Issue 
Joanne Diamant 
(93-Q-01)  
Agreed For EASA 
DOA: 
Marek Babkiewicz 
(EASA.21J.570) 
This procedure has been revised with an updated ETOI reference and added guidance 
for system testing of new or modified functions driven by engineering departments 
outside ECN. This procedure is also updated to revise System Concept Review Team 
Members table to include Subject Matter Experts. 
1 
Scope 
This procedure covers the policies and process requirements for the design, development, 
certification and post certification changes of engine control systems, including systems with 
embedded software for civil and military applications. Other systems will normally employ a subset 
of these procedures appropriate to the declared RTCA/DO-178 category or customer requirements 
and which is declared in the equivalent documents to the Compliance Plan and Installation Manual, 
and PSAC where relevant. 
This procedure applies to the main engine and APU businesses at Pratt & Whitney Canada 
(P&WC) and Pratt & Whitney Rzeszow. The term Engineering is used inclusively for Engineering 
at both companies. The term Company refers to both organizations. The processes defined apply 
to products certifying with Country/State of design under Transport Canada or EASA. 
For non civil certified applications, the Control system development process will be as defined in 
this procedure, but without TC or EASA approval. 
This procedure provides instructions relative to the minimum content of a control system design 
job, (previously covered under WIM 336). 
In addition, this procedure provides an overview of the product security management of engine 
control systems in Section 9 and reference to the applicable EOP. 
The Flow-down Matrix showing compliance of this procedure with the Quality Procedures can be 
retrieved from the QMSP matrix contained in Documentum. 
Note that the Appendices to this document provide supplementary information. They are not part 
of the procedure. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 2 
1.1 
1.2 
1.3 
2 
2.1 
Purpose 
The process defined in this EOP, is the one adopted for Company engine control system 
development and conforms with the recommendations of RTCA document DO178, B or C*, which 
is accepted by both Transport Canada and EASA as the methodology for substantiating embedded 
software in digital Electronic Engine Controls. 
*Note: Revision level of RTCA DO-178 as defined in General Compliance Plan (EOP 175) and 
PSAC of the specific engine program. 
Exceptions to this Procedure 
This procedure and the referenced WIMs set out the minimum acceptable standards for the work 
described. If for some reason exceptions are made to this procedure, they shall be documented in 
a report signed by the Controls Manager, the Program Manager or their designated delegates, and 
the cognizant DAAs or CVEs (engine and software). 
The provisions of this procedure may be changed by documenting the sections of this procedure 
affected, the alternative process, and the reasons for the change. This documentation may be in 
any report identified by the Compliance Plan (or equivalent for Military programs) for the engine. 
Export Control 
When Receiving, Creating, Handling or Transferring data, the export control requirements outlined 
in Engineering Operating Procedure 159 must be adhered to along with its associated applicable 
documents. 
Applicable Documents 
The following publications form a part of this document to the extent specified herein; unless 
otherwise specified the latest issue shall apply. 
Pratt & Whitney Canada Corp. Publications 
DAPM 
QPRM 
QMSP 7-3 
QMSP 8-3 
QMSP 09-01 
ASQR-01 
MMP 85 
MMP 202 
MMP 203 
DM 1 
Design Approval Procedures Manual. 
Quality Policies & Requirements Manual. 
Retirement of Engines 
Control of Nonconforming Product 
Software Quality Requirements for Airborne/Non-Airborne Critical Software 
Aerospace Supplier Quality Requirements. 
Records Retention. 
Product Definition. 
Engineering Changes. 
Design Process and Job Package. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 3 
EOP 41 
EOP 57 
EOP 60 
EOP 63 
EOP 75 
EOP 102 
EOP 103 
EOP 104 
EOP 106 
EOP 107 
EOP 116 
EOP 135 
EOP 157 
EOP 158 
EOP 159 
EOP 175 
EOP 183 
EOP 186 
EOP 315 
DRM 185 
ETOI 07-03-02 
ETOI 09-00-01 
CMM 
GOI 4511-02 
Equipment Specifications, Purchase Performance Specifications & 
Coordination Control of Supplier Data. 
Product Design Verification. 
Management of Product Development Programs 
Engineering Computer Program/System Controller. 
Airworthiness, Performance & Operating Data Requirements, 
Experimental Customer Engines. 
Interface Control - Engine Program Partnerships. 
Design Process and Design Reviews. 
Installation Interface Documents. 
Control Of Development Activities on 'Fit For Flight' Engines. 
Use of Engineering Reports and Technical Notes. 
Engineering Best Practices. 
Request for Test. 
Conducting Type Certification Programs 
Engine Development / Production Discrepancy System. 
Export Control & Other Restrictions Governing The Export Of Controlled 
Article & Technical Data To Foreign Entities 
Resource Planning. 
Requirements For Development Of Engine Control System Software 
Requirements for Development of Airborne Electronic Hardware 
System Safety Assessment Process in PWC Designs 
System Components Identification Drawing. 
Experimental Test Operating Instruction: Configuration Identification for 
Experimental Requirements (CIFER) plus Experimental Engineering 
Modification (EEM). 
Software Changes to Development EEC  
Configuration Management Manual. 
Equipment Configuration Control. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 4 
WIM 151 
WIM 314 
WIM 327 
WIM 328 
WIM 329 
WIM 330 
WIM 333 
WIM 334 
WIM 335 
WIM 337 
EOP 3471 
WIM 359 
WIM 413 
WIM 438 
WIM 449 
WIM 473 
WIM 474 
WIM 478 
WIM 523 
WIM 533 
WIM 565 
WIM 566 
WIM 636 
Procedure for Internal Handling of Supplier Furnished Information. 
Processing of Request For Change. 
Preparation and Use of the Control System Requirements Document. 
Preparation and Use of the Interface Control Document. 
Preparation and Use of the Control System Change Request. 
Preparation and Use of the System Verification Test Plan. 
Preparation and Use of the Control System Verification Summary Report. 
Control System Certification Documentation. 
Controls Group Review of Supplier Furnished Information Related to 
Software. 
Preparation and Use of the Traceability Matrix. 
Product Security Process for Engine Control Systems 
Configuration Management and Control for Propulsion System Simulations. 
Preparation and Submission of Software Requirement Change Notice 
(RCN). 
Preparation and Approval of Engineering Reports 
Preparation and Use of the Software Build Request. 
Standard Software Naming Convention 
Airworthiness Support Systems. 
Creation of EEC Power Setting Data 
Preparation and Use of the Lessons Learned (LL) 
Instructions For Completing Export Review Form 
Stages of Involvement (SOI) in the Software Review Process 
Release of Control Systems and Software to Customers outside P&WC 
(CSRB Procedure) 
System Component Identification Drawing (SCID) Definition 
1 EOP 347 defines confidential process details and is restricted to the product security core team - access is only granted by the PS DAA, who is the 
custodian of the procedure. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 5 
WIM 640 
WIM 647 
WIM 654 
WIM 689 
WIM 750 
WIM 756 
WIM 795 
WIM 811 
WIM 891 
WIM 952 
WIM 963 
WIM 975 
WIM 1026 
2.2 
Template for Statement of Work (SOW) 
Preparation and Format of the Verification Test Procedure (VTP) 
Preparation and Use of the System Verification Test Report (VTR) 
Domain of Change (DOC) Analysis Process 
Software Design Review Process 
Software Change Impact Analysis (CIA) 
Control System Architecture Design Standard 
Control System Software Discrepancy Report (DR) Classifications 
ARP 4754 Control System Requirements Traceability, Validation and 
Verification Compliance 
Product Security Standards 
Software Programming Utility (SPU) USB Loader Process 
ECN System Integration Process and Procedures 
CLB Configuration Management 
External Reference Documents 
The reference documents identified as "guidance material" provide information used to form this 
EOP and are not to be interpreted as requirements. 
RTCA/DO-254 
RTCA/DO-178B 
RTCA/DO-178C 
SAE ARP 4754 
SAE ARP 4874 
SAE ARP 4761 
AWM 533.11 
AWM 533.28 
CS-APU 
EASA AMC20-2 
Design Assurance Guidance for Airborne Electronic Hardware. 
Software Considerations in Airborne Systems & Equipment Certification. 
Software Considerations in Airborne Systems & Equipment Certification. 
Certification Considerations for Highly-Integrated or Complex Aircraft Systems. 
Electrical Propulsion Control/Aircraft Interface Control Documents 
Safety Assessment Process on Civil Airborne Systems and Equipment 
Canadian Airworthiness Manual amended 29th Jan 2010 
AWM – Electrical and Electronic Engine Controls Systems 
Certification Specifications and Acceptable Means of Compliance for Auxiliary 
Power Units 
Certification of Essential Auxiliary Power Units (APUs) Equipped with 
Electronic Controls 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 6 
2.3 
3 
4 
Pratt & Whitney Rzeszow Publications 
DOH 
WIM 885A 
Application 
Design Organization Handbook (P&WR) 
EASA Certification of Engine Control System 
This procedure applies to supplier furnished engine control systems and covers the Company 
activities in pre and post-certification phases, as appropriate. This procedure shall affect the 
activities of Project Engineering, Controls Group, ECN, Electrical and Fluid Systems Design, 
Operability/Powerplant Simulation, Development Engineering and System Safety and Reliability. 
Controls Group is responsible for ensuring that these procedures are applied, within the scope of 
their authority. Otherwise Projects Engineering is responsible. 
All activities relative to airborne software development are listed to provide the reader with a global 
image of the process. The requirements are applicable to the Company and whatever supplier or 
sub tier supplier is performing the task described. Specifically, whoever is responsible for software 
development shall show compliance to RTCA/ DO178 to the satisfaction of the Company DAA or 
CVE and/or OAP, as applicable. The flow down of this specification is covered by ASQR-01, 
(Aerospace Supplier Quality Requirements), and the QMSP (Quality Management System 
Procedures). 
Where the control system includes complex electronic hardware, this hardware shall be developed 
in compliance with DO-254 and EOP 186 in order to comply with the requirements of AWM 533.28 
(m)/CS APU 90. 
This procedure does not apply to non-airborne systems, even if such systems support continued 
airworthiness. Such ground systems are outside the scope of the Controls Department and are 
covered by MMP 510 and WIM 474. 
Acronyms 
This section provides a list of acronyms used in this procedure, with their associated meanings. 
Acronyms 
A/C 
AMC 
APS 
APU 
ARP 
AS 
ASCR 
ASI 
Meanings 
Aircraft 
Acceptable Means of Compliance for Airworthiness of Products, Parts and 
Appliances 
Auxiliary Power System 
Auxiliary Power Unit 
Aerospace Recommended Practice 
Application Software 
Application Software Change Request 
Application Software Interface 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 7 
ASQR 
ATF 
ATP 
Acronyms 
AWM 
CCB 
CDR 
CI 
CIFER 
CM 
CMM 
COTS 
CRD 
CSCR 
CSICD 
CSRB 
CSRD 
CSVSR 
CVE 
DAA 
DAPM 
DM 
DR 
DRM 
DVPM 
EASA 
EC 
ECN 
EEC 
Aerospace Supplier Quality Requirements 
Altitude Test Facility 
Acceptance Test Procedure 
Meanings 
Airworthiness Manual 
Change Control Board 
Critical Design Review 
Configuration Index 
Configuration Identification For Experimental Requirements 
Configuration Management 
Configuration Management Manual 
Commercial Off The Shelf 
Controls Requirements Document 
Control System Change Request 
Control Systems Interface Control Document 
Control System Review Board 
Control System Requirements Document 
Control System Verification Summary Report 
Compliance Verification Engineer / Evaluator 
Design Approval Appointee 
Design Approval Procedures Manual 
Design Manual 
Discrepancy Report (a.k.a. Problem Report) 
Drafting Room Manual 
Design Verification Plan Memo 
European Union Aviation Safety Agency 
Engineering Change 
Externals, Controls and Nacelles 
Electronic Engine Controller 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 8 
EEM 
EEROM 
EHS or EH&S 
Acronyms 
EMI/HIRF 
EMO 
EOP 
ERF 
ES 
ETOI 
FAA 
FMEA 
FMED 
FTB 
GOI 
HDW or HW 
HLR 
HSIT 
HSI 
HSP 
I/O 
IM 
IP 
IPT 
IRS 
ISO 
KCG 
LDRA 
LLR 
Experimental Engineering Modification 
Electrically Erasable Read Only Memory 
Environment, Health and Safety 
Meanings 
Electromagnetic Interference/High Intensity Radiated Fields 
Engineering Material Order 
Engineering Operating Procedure 
Error Report Form 
Equipment Specification 
Engineering Test Operating Instruction 
Federal Aviation Administration 
Failure Modes on Effects Analysis 
Failure Mode and Effects Demonstration 
Flying Test Bed 
General Operating Instruction 
Hardware 
High Level Requirement 
Hardware Software Integration Testing 
Hot Section Inspection 
Hamilton Sundstrand Poland 
Input/Output 
Installation Manual 
Issue Paper 
Integrated Product Team 
Integrated Product Team 
Interface Requirements Specification 
International Standard Organization 
Structural coverage tool for DO-178 Level A software verification 
developed by Liverpool Data Research Associates 
Low Level Requirement 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 9 
LOI 
LRU 
Acronyms 
MED or MED(L) 
MFA 
MMP 
MRF 
NRT 
OAP 
ORD 
OS 
P&WC 
P&WR 
PDD 
PDR 
PDRS 
PDS 
PHA 
PHAC 
PPS 
PR 
PS DAA 
PSAC 
PSSA 
P&WAP 
QMSP 
QPRM 
QTR 
Level of Involvement 
Line Replaceable Unit 
Meanings 
Manual of External Design 
Market Feedback Analysis 
Management Manual Procedure 
Modification Report Form 
Non-Real Time 
Office of Airworthiness Personnel 
Operability Requirements Document 
Operating System 
Pratt & Whitney Canada Corporation 
Pratt & Whitney Rzeszow DOA EASA.21J.570 
Process Description Diagram 
Preliminary Design Review 
Product Design Requirements Specification 
Product Definition Service 
Preliminary Hazard Analysis 
Plan for Hardware Aspects of Certification 
Purchase Performance Specification 
Problem Report 
Product Security Design Approval Appointee 
Plan for Software Aspects of Certification 
Preliminary System Safety Analysis 
Pratt & Whitney Aero Power - Hamilton Sundstrand Power System (San 
Diego) 
Quality Management System Procedures 
Quality Policies and Requirements Manual 
Qualification Test Report 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 10 
RAM 
RCN 
Acronyms 
RT 
RT 
RTCA/DO 
SAE 
SAS 
SBR 
SCA 
SCADE 
SCID 
SCMP 
SCR 
SDD 
SDP 
SFI 
SIMCR 
SINCR 
SIT 
SOF 
SOI 
SOW 
SPR 
SQA 
SQAP 
SRD 
SRS 
SSA 
Random Access Memory 
Requirement Change Notice 
Meanings 
Real Time 
Request for Test 
Radio Technical Commission for Aeronautics/Document Order 
Society of Automotive Engineers 
Software Accomplishment Summary 
Software Build Request 
Special Condition Airworthiness 
Safety Critical Application Development Environment 
System Components Identification Drawing 
Software Configuration Management Plan 
Software Change Request 
Software Design Document 
Software Development Plan 
Supplier Furnished Information 
Simulation Change Request 
(Should be SIMCR – typo in flow chart of Appendix A) 
Software Integration Testing 
Safety of Flight 
Stage of Involvement 
Statement of Work 
Software Planning Review 
Software Quality Assurance 
Software Quality Assurance Plan 
Software Requirements Document 
Software Requirements Specification 
System Safety Analysis 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 11 
STP 
STR 
Acronyms 
SVCP 
SVP 
SVR 
SVSR 
SW or S/W 
SYRR 
TC 
(TCCA 
TQP 
T/R 
TSBR 
UT/SI/HSI 
CSVS 
VTP 
VTR 
WIM 
Simulation Test Procedure 
Simulation Test Report 
Meanings 
Software Verification Cases and Procedures 
Software Verification Plan 
Software Verification Results 
Software Verification Summary Report 
Software 
Software Systems Requirements Review 
Transport Canada 
Transport Canada Civil Aviation) 
Tool Qualification Plan 
Thrust Reverser 
Temporary Software Build Request 
Unit Testing / Software Integration Testing / Hardware Software Integration 
Testing 
Control System Verification Summary Report 
System Verification Test Procedures 
System Verification Test Report 
Work Instruction Manual 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 12 
4.1 
5 
Specific Acronyms for Legacy APU 
For some of the programs, especially legacy APU programs from P&W AeroPower, refer to the 
following list for the equivalent terms being used in P&WC: 
Acronyms 
Meanings 
Equivalent to 
SWRD 
Software Requirement Document 
asSRS (Software Requirement Specification) 
SWDD 
Software Design Document 
SDD (Software Design Document) 
PCR 
Problem in PCR - Problem and Change 
Report 
DR (Discrepancy Report) 
PCR 
Solution Implemented in PCR – Problem 
and Change Report 
RCN (Requirement Change Notice) 
FADEC 
Full Authority Digital Electronic Controller 
EEC (Electronic Engine Controller) 
FVTP 
Functional Verification Test Procedure 
CLB VTP (System Verification Test Procedure) 
FVTR 
Functional Verification Test Report 
CLB VTR (System Verification Test Report) 
CIA 
Change Impact Analysis 
DOC (Domain of Change) 
Definitions 
The term “substantiation” is used in this procedure to include the combination of test, analysis, and 
documentation put forward to justify approving a control system for a defined standard of use. As 
the program progresses, the control system will be required to support a range of differing engine 
or aircraft activities. Generally the control will have to be checked, documented etc to differing 
degrees depending on the subsequent usage. Since these aspects are defined in this procedure, 
it is important to identify the various development stages clearly. To this end a standardized naming 
convention is used for each stage, and these are defined below. This naming convention is used 
throughout this procedure and will be adopted for all re-issues of the WIMs called out in this 
procedure that occur after the issue of this procedure. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  PAGE 13 
 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
 
Development Stage Definition 
Equipment Acceptance Item has performed testing sufficient to allow release to the 
Company, as defined by the relevant ES. This is primarily a 
hardware issue. 
Temporary Build Software build for experimental use only. Formal software builds 
may not be derived from these builds. 
Engine Test Suitable to run on an engine or rig in a ground facility (including 
ATF). 
Baseline Baseline builds have a full set of certification documentation. 
Subsequent software builds may be derived from these builds. 
Certification Test Test for which credit may be taken per the Engine Compliance 
Plan. 
Certification Test Baseline The build is to be substantiated as complying with the 
requirements of all prior engine certification tests. 
Flying Test Bed or FTB Aircraft Ground Test or Flight Test (not main propulsion) at 
P&WC Flight Test. 
Customer Ground use Customer Aircraft Ground use & other equal or less critical 
engine use, where un-commanded power changes are not 
hazardous or catastrophic. 
Non Propulsion Customer Flight Experimental customer flight test where the aircraft can maintain 
safe flight and landing without the subject engine(s) (typically 
used to evaluate operability related changes on a single engine 
on a customer aircraft). 
Propulsion Customer Flight Experimental customer flight test where the aircraft cannot 
maintain safe flight and landing without the subject engine(s). 
Certification / Production Engine & aircraft certification standards & all Production 
standards. 
6 Responsibilities/Requirements 
Roles and responsibilities are summarized in the following hierarchy: Responsible / Approve / 
Confirm / Inform (RACI) table below. This RACI covers those QN’s that must come to Engineering. 
Additional role and responsibilities detail is found in the following sections. 
 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  PAGE 14 
 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
 
 Role 
Requirement Control 
System 
Control 
Software 
Project 
Engineering Development Safety & 
Reliability 
DAA (TCCA 
programs) or 
CVE (EASA 
programs)2 
OAP 
(EASA) 
Create planning 
documents R I C I I A I 
Write System 
Requirements 
(1) 
A C A I C I I 
Write test 
procedures (2) R I I C I I I 
Perform System 
Testing 
(verification) 
R I I I I I I 
Create Summary 
Test Reports (3) R I I I I I I 
Report and 
Manage 
discrepancies (4) 
R C C C I I I 
Prepare 
certification 
package (5) 
R C C I I A I 
R - Responsible - Person(s) doing the work.  
A - Approve – “The approving signatory”.  
C - Consulted - Person(s) consulted prior to a final decision or action. Typically Subject Matter 
Experts. 
 
I - Informed - Person(s) to be kept informed after a decision or action is taken.  
For more details: 
(1) Refer to WIM 329 
(2) Refer to WIM 330 
(3) Refer to WIM 333 
(4) Refer to WIM 811 
(5) Refer to WIM 334 
 
2 Refer to Section 9 of this EOP if Airworthiness Security is applicable (based on the Certification Basis). 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 15 
7 
7.1 
7.2 
Policies 
Reference Document Compliance 
This procedure defines a design and development methodology which satisfies the requirements 
of the Company Quality Program Manual, RTCA/DO-178 and the principles of ARP 4754. In 
principle, it is a single process which is applied at each of the design levels and for system, 
hardware and software elements providing an integrated total system approach. 
The same procedures shall be used in defining and substantiating software tools used in the design 
and development of embedded software to the extent required by RTCA/DO-178 and the relevant 
PSAC. 
Care must be taken in using the appropriate version of RTCA/DO-178 as changes to a production 
system should, in general, be made using the same version that was declared in the initial Engine 
Compliance Plan. Alternatively, a later version may be called up at the discretion of the Program 
Manager and as agreed with the certification authority. 
The Control Systems Interface Control Document (CSICD) shall be produced in a manner that is 
in accordance with WIM 328. Note that traceability of the CSICD to the CSRD and thus to System 
Verification Testing is required as per WIM 328. 
The “Control System Verification Summary Report” is the top level Controls document relating to 
any given control system standard intended for Certification / Production. It is produced in 
accordance with WIM 333. 
Review and Approval 
In the case of a system with embedded software: 
a. The Company Controls Group shall produce a Plan for Software Aspects of Certification 
(PSAC) in conjunction with the software supplier. The content of the PSAC shall conform to the 
guidelines in RTCA/ DO-178B (or C) Section 11.1 and will contain the program schedule. The 
PSAC shall be supported by the PSSA analysis. Subsequent revisions to the program schedule 
are defined by EOP 60 and communicated to the certification authority following EOP 157. 
PSAC should be formally approved by Controls Manager, Program Manager, the Company 
Software DAA or CVE & OAP, and SQA. In the event that product security functionality is to be 
incorporated in the software or electronic hardware, the associated PSAC and/or PHAC shall 
also be approved by the Product Security DAA (PS DAA). 
PWC Software Manager to be added to PSAC signatures list (in case of internal software 
design) - SW Development team to be involved in PSAC validation for programs with SW 
Development in-house. 
b. The Company Controls Group shall comply with the requirements of the PSAC and deliver a 
certifiable engine control system configuration to meet the program schedule as defined in the 
Engine Development Plan, or a renegotiated schedule as appropriate. 
c. The software DAA or CVE shall review the scope of the program and plan the certification SOI 
(Stage of Involvement) reviews with the certification authority, with FAA order 8110.49/CS 
APU/AMC 20. as a guide. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 16 
d. Software Plans and Standards including SDP, SVP, SCMP and SQAP, that conform to the 
guidelines in RTCA/DO-178B/C and coordinated with the control software design activities in 
EOP 183. These plans and standards shall be formally approved by the Company Software 
DAA/CVE and SQA. This requirement shall be specified in the PSAC to ensure that no changes 
are introduced to Software Plans and Standards without approval by the responsible Software 
DAA/CVE and SQA. 
7.3 
Top Down Design and Development 
The design and development process shall be top-down as per Figure 1. Documentation shall be 
prepared at each stage as indicated. 
To begin the process of new or derivative program, an ECN architecture description document shall 
be drafted as per WIM 975 in order to document the control system architecture. Afterwards, the 
process is requirements driven and starts with the overall control system requirements. These 
requirements are, in turn, broken up and flowed down into several subsets of functionally related 
hardware or software requirements in lower level component specifications. 
Each step in the requirements development is preceded by design activity as each subset 
requirement is further decomposed into the next lower level. This process is repeated until the 
requirements at the lowest level can be satisfied by simple testable elements. The result of the 
design activity is a hierarchy of requirements with the control system requirements at the top and 
the component definitions at the bottom. All software requirements which impact safety shall trace 
to a corresponding system level requirement. 
At any level in the process, derived requirements may be introduced. All derived requirements shall 
be treated in the same manner as flowed down requirements and be identified and justified, and 
assessed for safety, as defined in EOP 183 (DO-178) for software and EOP 186 (DO-254) for 
hardware. All derived requirements shall also be assessed for impact to the system security risk 
assessment and security requirements by the Product Security Team. 
The process of verification then goes back up the hierarchy and checks each level of the hierarchy 
against its specification. The process continues until at the highest level the control system is 
verified against its requirements and all requirements are shown to be met. 
Whenever a change occurs, an impact analysis is prepared to assess the level of testing required 
to fully substantiate the change. The top down process is then followed from the point of the change 
down the development path and back up the verification path. 
The product at each design step shall be subject to review. 
All tools used to support design and development shall be at a formally released standard at the 
start of the activity as defined in the supplier’s Tool Qualification Plan. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 17 
Figure 1. Top-Down Control System Design Process 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 18 
7.4 
7.5 
Interaction with Supplier and Partners 
While all the work under section 7.3 is the Company’s responsibility, and under the Company’s 
control, implementation is split between the Company and supplier(s)/partner(s). The actual 
division of responsibilities varies between engine control programs. Those sections of this EOP 
which are a part of the supplier(s)/partner(s) scope of work shall be passed to the 
supplier(s)/partner(s) via the PSAC/PHAC documents, which should be included in the Company 
contractual agreements with suppliers. They shall be defined in the Equipment Specification and/or 
Purchase Performance Specification for suppliers by reference to the applicable SOW, and EOP 
102 for partners. 
The following work splits are most likely: 
TYPE A - 
TYPE B - 
TYPE A - The Company is responsible for the system level requirements and the 
supplier/partner for all design and development at the component or sub-system level. 
The Company is responsible for the system level requirements, and to design and implement 
control system design level requirements for those areas of the system directly impacting 
powerplant operability. The supplier/partner is responsible for the design and development of 
the components and for interfacing of the Company designed elements with the component. 
If 
more than one component is specified the supplier/partner shall be responsible for 
development to the sub-system level. 
Software Content 
Engine control system embedded software for the Company's aircraft engines is developed to 
RTCA/DO-178. The procedures defined in this EOP are applicable to civil certified engines only. 
Military programs are to work to the latest version of RTCA/DO-178 and this procedure issued at 
the time of program commencement, to the greatest extent the contract allows. Deviations are dealt 
with per section 1.2. This procedure reflects the guidelines of RTCA/DO-178 Level A. 
This is not to prohibit the use of software qualified to less critical levels within Engine Control 
systems. However, if this is done: 
a. the functions performed by this software must have their proposed levels (as defined in the 
PSSA) declared in the PSAC (or equivalent document if the program is not for a civil propulsion 
engine). All software functionality defined in the CSICD or Installation Manual must have its 
level declared. 
b. there must be partitioning to ensure that lower level software cannot interfere with higher level 
software operation. 
c. the partitioning must meet SAE ARP 4754 requirements for a system of the level defined by 
the compliance plan. 
When the "control system software" (or similar phrase) is used in the rest of this procedure, it is to 
be taken as referring to the higher level portion as identified above, unless otherwise stated. Lower 
lever software is dealt with per the applicable sections of RTCA/DO-178, and the deviations to this 
procedure for the lower level software are to be dealt with per section 1.2. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 19 
7.6 
7.7 
7.8 
System Checking 
The extensive formal checking required during control system development is defined in this EOP. 
This procedure complements the Product Design Verification defined in EOP 57, the design review 
procedures of EOP 103 and Engineering Best Practices defined in EOP 116. 
Certification 
All control development programs are required to satisfy engine certification (ref EOP 157) per the 
agreed Compliance Plan. The extent, to which certification credit can be taken from previous control 
system certification activities, shall be reviewed and agreed with the certification authorities at the 
Stage of Involvement SOI reviews, in accordance with FAA Order 8110.49, and described in the 
appropriate control system certification reports. The control system shall be developed to comply 
with aircraft powerplant and aircraft integration requirements. Subsequent changes shall be 
approved as defined by the DAPM. 
The cognizant engine DAA or CVE and OAP, in conjunction with the certification authority, is 
responsible for establishing the Basis for Certification for the initial and subsequent certification 
programs. Unless declared otherwise in the Compliance Plan that defines the Basis of Certification, 
the control system versions for the engine and aircraft certification shall be "Fully Verified" as 
defined in the means of compliance for AWM 533.28/ CS and AMC APU 90. 
Implementation 
The implementation of parts of this EOP is defined in detail in individual Work Instructions. These 
include but are not limited to: 
WIM 151 Procedure for Internal Handling of Supplier Furnished Information. 
WIM 327 Preparation and Use of a Control System Requirements Document. 
WIM 328 Preparation and Use of an Interface Control Document. 
WIM 329 Preparation and Use of a Control System Change Request. 
WIM 330 Preparation and Use of the System Verification Test Plan. 
WIM 333 Preparation and Use of the Control System Verification Summary Report. 
WIM 334 Control System Certification Documentation. 
WIM 335 Controls Group Review of Supplier Furnished Information Related to Software. 
WIM 337 Preparation and Use of a Traceability Matrix. 
WIM 359 Configuration Management and Control for Propulsion System Simulations. 
WIM 413 Preparation and Submission of a Software Requirement Change Notice (RCN). 
WIM 449 Preparation and Use of Software Build Request. 
WIM 473 Standard Software Naming Convention. 
WIM 566 Control System Review Board (CSRB) Process. 
WIM 647 Preparation and Format of the Verification Test Procedure (VTP) 
WIM 654 Preparation and Use of the System Verification Test Report (VTR) 
WIM 800 Preparation and Use of the Control System and Software Architecture Development 
Plan 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 20 
8 
8.1 
Process Requirements 
Control System Definition 
The overall engine control system whose requirements are defined by certification rules, the 
Company internal design requirements, agreed customer requirements and best practices shall 
have its functional and operational requirements defined by the Controls Group in a Control System 
Requirements Document (CSRD) (reference WIM 327). In some cases, the customer may be 
required to sign the CSRD. In the case of new control systems, which are not based on existing 
hardware and software the first release of the CSRD referred to as “rev 0”, shall be produced 
primarily to define the Control System Architecture, and as such will include the hardware block 
diagram, and environmental requirements, as well as defining features of the control system 
required to comply with the PSSA, but may not necessarily define the detailed system functionality. 
All requirements in the CSRD shall show upward traceability to a requirement in a higher level 
document, where referenced as a requirement in the Engine Compliance Plan (or) specify source 
reference in the CSCR. Where no direct higher level requirement exists, the requirements shall be 
specified as “derived” with the rationale provided in the CSCR. The CSRD requirements shall be 
linked to the CSICD as specified in WIM 328. 
As a minimum, the CSRD shall be updated for all software releases identified in the PSAC and for 
all builds requiring a CSRD per section 8.2.1. 
Between CSRD updates, control system requirements are defined by the definition indicated in 
SBR A, and the CSCRs approved for incorporation. Each software definition is controlled by a 
Software Build Request document (as per WIM 449), that indicates the source for all high level 
requirements the software has to meet. 
NOTE: Prior to certification, preliminary documents can be sent to the customer, for review, without 
a complete signature cycle. As a minimum, preliminary documents shall be signed and 
dated by the author and cognizant control system team leader. 
The functional and/or design requirements for each system component identified in the system 
configuration shall be defined and issued as an Equipment Specification (ES) or Purchase 
Performance Specification (PPS), per EOP 41. 
For TYPE B operation where systems contain embedded software for which the Company provides 
design requirements, those software requirements shall be prepared by the Controls Software 
Group for incorporation in a Software Requirements Document (SRD) or Software Requirements 
Specification (SRS), which shall show traceability of each software requirement to the higher level 
system requirement in the CSRD. 
For TYPE A operation, the SRD/SRS shall be generated by the supplier/partner and the Company 
can participate in and approve software design requirement changes through the Requirements 
Change Notice (RCN) process, per WIM 413, or equivalent, that are transmitted to the 
supplier/partner for incorporation in the SRD/SRS. The supplier / partner shall not formally pass 
the RCN or equivalent software change request (SCR) into the coding process without the 
Company approval. 
The Controls Group Technical Leaders shall be responsible for the production of the system 
requirements, and design definition documents, as appropriate. 
All Control System documents supporting software certification, are to be reviewed and shall be 
approved by a Chief - Controls Group, the appropriate Lead Controls Engineer and Project 
Engineer. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 21 
The appropriate Controls Chief is responsible for advising Product Integrity of the initiation of 
development, procurement or maintenance work on software in classes 1A, 1B, and 2A per Quality 
Assurance Procedures. 
8.1.1 
8.1.2 
Analysis - Best Practices 
The design and analysis of all new control systems and functional changes to all existing systems 
shall utilize the process and design criteria defined by the Company Engineering Best Practices, 
per EOP 116. 
All CSRD level requirements shall be subject to analytical substantiation. These analyses shall 
show compliance with the design criteria of Best Practices. All analytical work, results and 
conclusions shall be retained in a Job File. If the CSRD level requirement is derived from an ORD 
or PDRS requirement, or there is no ORD or PDRS, then the analysis is Control Group's 
responsibility and the origin of the requirement shall be documented in the CSCR “Analysis” 
section. 
The control systems group shall request a model of the engine/powerplant from 
Operability/Powerplant simulation, to facilitate system and software design, and this model shall be 
used in the closed loop bench, to verify the correct performance of the system. 
Control System Interface Control Document 
Each control system shall have a Control System Interface Control Document (CSICD) which shall 
describe the interfaces and the general operation of the system. The CSICD is an extension of the 
engine Installation Manual (as defined in EOP 104 (INSTALLATION INTERFACE DOCUMENTS)) 
and may only be released by Project Engineering. The responsible Program Manager (Engine 
DAA) or CVE shall be responsible for assuring the appropriate revision of the CSICD is available 
with the matching Installation Manual revision for any given engine standard. 
The CSICD shall be prepared jointly by the Controls Systems Group (Part A) and Electronic 
Sensing and Power Systems (Part B) and is covered by WIM 328. 
The aircraft interface maximum acceptable failure probabilities, required to meet system safety 
requirements shall be included in the CSICD and supported by the PSSA. Alternatively, this 
information can be included in IM instead of the CSICD if specifically requested by the program. 
The System Safety and Reliability Group is responsible for conducting the PSSA and the final SSA 
reports. 
As defined here the CSICD is a certification document applicable to a specific control system 
standard which must be identified within the CSICD’s Scope section. 
Since the CSICD is a certification document, it relates to the engine or APU, and AWM 533, CAN
TSO, CS-APU. If the Company is selling a power plant or tail cone kit, then there must be no 
confusion over any description or specification which relates to airframe certified components and 
the engine/APU information. This may be done by having a separate document for the ‘not part 33’ 
or 'not CS-APU' information, or by identifying such content in the CSICD, and by making it clear 
that any engine DAA, CVE, OAP, EASA or Transport Canada signature applies to the part 33, 
CAN-TSO or CS-APU section only. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 22 
8.1.3 
8.2 
8.2.1 
Integration of Simulation Tools in the Definition Process 
System/component simulation tools may be utilized at any point in the design/definition cycle but 
generally are employed as shown in APPENDIX A for non-real time models. Simulations and other 
software tools that are integrated into the control design cycle shall be generated and controlled by 
the Operability Group as defined in WIM 359. 
System Identification 
Each part of an engine control system that is to be run in a development facility must be uniquely 
identified and documented in the test documentation. An engine control system may be identified 
as a collection of parts each having a 3 or 4 million part number and the collection of parts will be 
documented on a System Components Identification Drawing (SCID) which in turn calls up the 
individual items. 
The individual part numbers shall be defined by the drawing that is released by Design to the 
appropriate release level. Any deviations from the drawing standard shall be documented by 
CIFER. 
Any version of a control system to be used for formal development and production where credit 
shall be taken in an engine or aircraft certification, or for those systems to be used as the baseline 
for subsequent changes, shall be: 
a. under Configuration Management. 
b. verified at the system and part levels, to the extent necessary for the intended use. 
c. verified to assure safety for the intended use. 
Any versions of a control system that are not covered above are to be configuration managed, 
documented, verified to the extent required for the proposed usage of that version. The classes of 
usage and documentation are defined in section 8.12. 
If 
a control system part contains software, each uniquely derived set of digital information 
programmed into the item must be distinguished by a unique identifier or identifiers, agreed with 
the Company and contained within the digital information, and accessible externally by means 
agreed with the Company. Each identifier will be defined by the SBR and will conform to WIM 473. 
Development Control Systems 
Throughout the development phase the procedures defined by ETOI 07-03-02 shall apply to both 
hardware and software changes. 
Temporary software changes, (used for example to evaluate functions in a test cell before formally 
building the chosen implementation in the next software release), shall be controlled by a 
Temporary Software Build Request (TSBR), per WIM 449. These include the so-called “tunable” 
builds, which allow EEROM constants and maps to be loaded into RAM and modified during 
development to optimize various tables and constants. 
Development software (temporary changes or not) shall be incorporated in-house at the Company, 
into development hardware as per ETOI 09-00-01. When a change created under a TSBR becomes 
permanent, a SBR has to be created, since temporary SBRs will not change the formal software 
documentation. Permanent changes involving the incorporation of a number of optimization 
changes or additional control functions and defined by an SBR will lead to an up-issue of the CSRD, 
per 8.3.2. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 23 
A change introduced under an SBR shall be incorporated into a software version by the supplier / 
partner. In special cases, limited strictly to test cell development work, the change defined by the 
SBR can be incorporated into a software version in-house, through an EEM, then into an EEC 
through a CIFER, per ETOI 07-03-02 and ETOI 09-00-01. The changes developed and accepted, 
based on an in-house version may be introduced into supplier / partner delivered software version 
at the next software build to be verified. The definition and approval of the intended software shall 
be as per WIM 449 (Preparation and Use of Software Build Request). When the change has been 
incorporated and tested by the supplier/partner the requested software is transmitted to the 
Company for subsequent testing/use along with a definition of the actual change implementation, 
embodiment and test results. Based on agreement with the Controls Engineer, it is acceptable that 
supplier/partner delivers a statement of successful bench testing of the system. In any situation, 
the supplier/partner shall be able to present the test results, upon Controls Department request. 
The required level of testing is specified in the SBR part A as a function of intended software use. 
The received code is incorporated in the EEC through a CIFER per ETOI 07-03-02. 
8.2.2 
8.2.3 
Production Gauge Functions 
Certified software may contain special functions that are only to be exercised during production 
acceptance testing or during repair or overhaul of the Company engines and APUs (also referred 
to as "Production Gauge" functions). These functions cannot be exercised with the engine installed 
in the aircraft since the enabling inputs do not exist in the aircraft environment. Effective lockout of 
these functions in the field is achieved through design of robust enabling criteria. Typically, no less 
than 3 unreachable input conditions should be included to prevent inadvertent activation on the 
aircraft. Examples of unreachable input conditions are; a discrete input that is not wired on the 
aircraft; or a digital communication content that does not exist on the aircraft. 
All production gauge functions must be defined by system level requirements which flow down to 
high level requirements (HLRs) in the control law software requirements data. Certification of the 
software, including production gauge content, is achieved by High Level Requirement Testing. 
Verification is carried out in both the enabled and disabled state of the production gauge functions 
to demonstrate full coverage per the DO-178 guidelines. These functions must have sufficient 
lockout protection to ensure that they are not enabled inadvertently. 
Note, for information only. The list of typical Production Gauge functions is contained in MED Letter 
290. 
Production Control Systems 
Production systems shall be identified by unique 3 or 4 million part numbers. Configuration 
Management assigns the unique identification for production systems in accordance with the 
requirements of the Configuration Management Manual (CMM). Control of configuration 
identification is achieved through the Engineering Change process (reference MMP 203). 
The software supplier(s) shall show traceability within their Configuration Management system, 
between the Company SBR which defines the software changes, and the Company 3 or 4 million 
part number which is referenced on the Company Purchase Order. 
Each Engineering Change relating to a control system change shall be substantiated by the 
documents called out in section 5.11, and by the First Article Inspection (reference 8.8). 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 24 
8.3 
8.3.1 
Corrective Action and Change Control 
A change control and corrective action system shall be used for all versions of a control system 
subject to CSRB release until the end item is obsolete, as per MMP 202. The processes are to 
conform to the Company Quality Procedures QMSP 7-3 and QMSP 8-3. 
Corrective Action System 
Overview: 
The management of the Company corrective action process is the responsibility of Test 
Engineering through the Discrepancy Report (DR) system as per EOP 158. 
All discrepancies raised and identified as relating to embedded software (as distinct from 
discrepancies found outside the software verification, system verification or validation process) of 
the control system shall be tracked in a unique database at the supplier / partner as defined in the 
PSAC. The supplier shall provide the Company direct access to their DR system, and the Company 
Controls Systems are to ensure that all discrepancies are logged in at least one system, that the 
two sets of discrepancies are merged for reporting, and that where discrepancies are duplicated 
by the systems that these DRs are suitably cross referenced or linked. 
Control System DR (as listed in the Company discrepancy system) close-out signatures are 
required from Project Engineering, Test Engineering and Controls Group as per EOP 158. 
For DRs raised against the software at the supplier/partner, agreement from the Company is 
required for closure as per the applicable DO-178 process. 
Classification Process: 
i. 
ii. 
iii. 
iv. 
Problem reports raised during verification are classified A, B, C, D and E (as per WIM 811) 
and listed in the SVSR and SAS by the software suppliers 
The Company Control Systems group then reviews the DRs and approves the 
classification, adds the Company corrective action reports (if any), expands the list to add 
the EOP 158 category. The Control Systems group also assesses the engine/system 
impact and pilot action for all functional discrepancies and stores the resulting list to be 
used in certification reports and CSRB minutes. Note that the Engine DAA or CVE needs to 
review and approve the system impact and pilot action of all functional DRs, following 
evaluation by the Control Systems Group. 
This list and only categories C1, D1 and E, which have a system level functional impact, 
are included in the CSVSR. This implies only customer commitment or product 
improvement DRs as it is assumed that no “EH&S” or “Hazardous Engine Condition” are 
allowed to remain at certification. 
Following a formal DR review, this CSVSR DR list, which has all of the functional 
discrepancies, is sent to the certification authority for review as part of the SOI process. 
This review must take place after all data review is completed to minimize the risk that the 
list reviewed by the certification authority will be changed before the final certification 
review. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 25 
The following table summarizes the disposition of the discrepancies in the CSRB minutes and 
certification reports: 
DR Description 
CSRB Minutes 
SVSR 
VTR 
SAS 
All DRs found 
during software 
verification 
testing (DO-178) 
CSVSR 
Include if classified 
as EHS, Hazardous 
Engine Condition 
and “Customer 
Commitment” 
All in 
Out 
Refer to SVSR, and 
include B1, C1, D1 
and E1 in SAS and 
total of non functional 
DRs per category. 
All DRs found 
during system 
verification 
testing 
Include if classified 
as EHS, Hazardous 
Engine Condition 
and “Customer 
Commitment” 
Out 
All in 
Out 
Functional software 
verification DRs 
(C1, D1, E) only. 
For complete list 
refer to the SAS. 
Functional 
verification DRs 
only. For complete 
list, refer to the 
VTR. * 
* As the VTR is not typically submitted to the certification authority, all of the functional system 
verification DRs as well as the functional software verification DRs are included in the CSVSR 
report for completeness. The SAS is sent to the certification authority (for information only) so the 
non functional verification DRs do not have to be included in the CSVSR report – a reference to 
the SAS is sufficient. 
8.3.2 
Control System Definition Change Control 
Changes to the definition of a control system shall be under change control. Changes to the 
requirements in the CSRD can only be made through a Control System Change Request (CSCR). 
CSCRs may be raised to address defects in definition, new requirements or changes to 
requirements. 
The change control process used shall have the following features: 
a. a system to control the logging, implementation, closure and archiving for all change 
requests. 
b. a configuration control system for change requests. 
c. a method to incorporate changes to the base CSRD. 
d. a method to ensure closure occurs only when the change is implemented or dismissed. 
The Controls Group is responsible for the coordination and closure of all change requests. The 
appropriate Lead Controls Engineer is responsible for implementing change control on each engine 
program. 
The CSCR process is described in WIM 329. 
The CSICD shall also be managed under change control, (ref WIM 328) and it is Control Systems 
group’s responsibility to ensure content is consistent with the CSRD or approved Supplier 
Furnished information (SFI) using a traceability matrix to provide evidence that the CSICD content 
has been fully verified. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 26 
8.3.3 
8.4 
System Safety Impact Analysis 
During the CSCR creation and review process, the control systems engineers writing and reviewing 
the CSCR shall identify and acknowledge, via the CSCR review form (as per WIM 329), any 
change, addition or removal of requirement(s) that will have impact on system safety with respect 
to AWM 533/CS APU 210. The review form identifies when the System Safety & Reliability 
organization shall be consulted and when approval of the CSCR by the System Safety organization 
is required, as defined in EOP315. 
For each Customer Flight Release or Certification, the System Safety & Reliability organization 
shall provide all of the following: 
• For a Customer Propulsion Flight Release, the System Safety and Reliability organization will 
issue a memo, that will be referenced in the CSRB minutes, with an assessment of the 
impact on the SSA (or PSSA in case of pre certification release). 
• For Initial Engine Certification, the System Safety and Reliability organization will assess and 
document the impact in the SSA report. 
• For Post-Engine Certification, the System Safety and Reliability organization will assess and 
document the impact in a revision of the SSA report or in a memo. 
Configuration Control 
’Baseline’ control system versions must conform to MMP 85 and RTCA/DO-178 as appropriate. 
All development hardware is uniquely identified in accordance with established Configuration 
Management practices and procedures per the CMM. Experimentally modified parts are identified 
with a CIFERed part number in accordance with ETOI 07-03-0. Changes to the parts list contained 
in a SCID, but not (yet) resulting in a SCID re-issue are identified by CIFER’ing the SCID. Hence 
there must be an issued SCID before the first engine certification test. 
During Test Cell and flight testing, control systems having embedded software may have the 
software temporarily modified by a TSBR (as per section 8.2.1). This modification does not 
necessarily require CIFER identification but does require configuration control in accordance with 
ETOI 09-00-01. 
All software changes introduced into a production control system release shall be Class 1 
Engineering Changes, identified by a new 3 or 4 million part number. The changes are to be 
handled according to MMP 203. 
Engineering Changes related to parts that are on a System Configurations Identification Drawing 
(SCID) per DRM 185, must be assessed for part compatibility, as follows: 
a. prior release configurations 
b. part inter-compatibility 
c. SCID coverage. 
Where a SCID exists: 
a. The term ’Control System’, is deemed to refer to those components on the SCID. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 27 
b. References to "Control System", where the precise content of the control is significant, e.g., 
for certification test release, in CSICDs, etc. shall be by reference to the SCID number, 
CIFER’ed if necessary. If a SCID does not exist, then such references shall be to an 
equivalent list of parts. 
Controls System and software documentation, in the form of specifications, change requests and 
other related information, shall be kept in a secure configuration managed system (such as 
Documentum, or Clearcase) which is compliant with the Company Export Control guidelines as 
defined in EOP 159 and WIM 533. 
8.5 
8.5.1 
System Substantiation 
Substantiation of hardware components and sub-assemblies is covered by EOP 57. This EOP 
provides specific procedures for the substantiation of engine control systems. Embedded software 
content of the system will use the guidelines recommended by RTCA/DO-178. 
Reviews 
Reviews are to be conducted for all aspects of the top-down process defined in 7.3. No 
requirements or documents are to be released unless the requirement or document has been 
reviewed as complete and satisfactory against released documents at the next higher level. 
At least one design review shall be conducted for each major version (at a minimum, for the First 
Flight release and the Certification software versions), or any major new or novel feature in the 
control system. A list of review items suggested for the system and software design reviews is in 
Appendix C. 
It is critical that Control Systems review the Software Requirements for all software components of 
the control system to ensure that the intent of the CSRD requirements has been understood and 
met. These reviews are to be completed in accordance with WIM 335/WIM 413, and the review 
evidence is to be documented in the Design Job file. 
NOTE: For engine control software design review the invitation list may be reduced to the following 
minimum participation: Controls group (system and design), supplier / partner control 
system engineer (participation based on agreement between controls manager and 
supplier/partner), Project Engineering, and other groups as deemed to be affected by the 
Controls manager. 
The review of Supplier Furnished Information (SFI) is necessary to assure that the supplier has 
correctly understood the system and/or component requirements and is planning to incorporate 
them in an acceptable manner. Equally the status of hardware and software to be released by the 
supplier/partner must be audited to assure that the delivered item meets the requirements or that 
any deviations are acceptable for the purpose to which the items will be used. The review of SFI 
relating to functional requirements of control system hardware is a Controls group responsibility 
and is covered in WIM 151. The review of the software SFI is a Controls group responsibility and 
is described in WIM 335. 
Substantiation activities either at the Company or at a supplier/partner must be reviewed to ensure 
satisfactory coverage and completeness against the approved Test Plans and Procedures as per 
WIM 330. Also any limitations relevant to the engine/aircraft shall be identified and reported. These 
aspects are covered in section 8.12. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 28 
8.5.1.1 System Concept Review 
The intent of system concept review is: 
1. to ensure control system engineer’s understanding of assigned control system function (to 
write CSCR) is in line with customer (internal/external) requirements, especially when the 
function is new, novel or complex. 
2. to review the impact of intended change on Core (common) requirements, 
3. to impart knowledge on system under change to all of the program’s control system 
engineers, 
4. and to authorize the initiation of the CSCR development process by the System Concept 
Review team. 
This review shall occur prior to writing a CSCR that includes new and novel functions at the 
discretion of the group lead to ensure correct and common understanding of functional 
requirements, to eliminate latent escapes, and to ensure commonality is maintained within the 
diversity engine families and types (fan, shaft or prop), where feasible. It is also recommended that 
a system concept review be held for any post certification change as the potential impact of 
introducing a discrepancy into a fleet can be significant. This includes any discrepancy fixes as well 
as customer requests. Refer to WIM 750 for software design review scheduling guidance. The 
System Concept Review tasks may be captured in a Level-3 project schedule plan. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 29 
The following table details the System Concept Review Process Inputs, Outputs, and Activities that 
are performed during the process: 
System Concept Review Process Activities 
Review Inputs 
Review Outputs 
Author: 
1. System Concept Review 
Presentation 
1. The SBR defines the intent and scope of 
change for the CSCR 
2. The SBR defines the intent and scope of 
change for the CSCR 
3. Proposes required changes to meet the 
change intent (and rationale if deviation 
proposed from Core Common requirements) 
4. Highlights concerns/unknowns related to 
Core Commonality, Complexity, Safety, 
Operability, and Customer support (as 
applicable) 
5. Appends a slide to record action items that 
are raised in the review meeting, and include 
the members attendance list 
6. Note: Goal of the presentation is to cover the 
listed items, and no specific format for 
presentation is prescribed in order to foster 
creativity within the control systems group, 
however, past presentation formats are 
useful for new team members as reference. 
Review Team:   
1. Review to ensure that the proposed control 
system function change meets the intent of 
customer requirements and Core 
Commonality, and provide necessary 
feedback as applicable. 
2. Review rationale if proposed change 
deviates from Core Commonality, and 
approve/disapprove as applicable. 
3. Review impact to safety, operability and 
customer support, and provide necessary 
direction/data as applicable. 
2 Data ( if any) that 
supports analysis and 
rationale 
Presentation artifacts must be 
configured at least two days 
in advance at the engine 
program specific location in 
Documentum. 
1. Updated 
presentation with 
action items and 
members 
attendance lists. (by 
Author) 
2. Review Outcomes: 
a. GO: 
Review Team 
authorizes 
author to go 
ahead in writing 
CSCR 
b. NO-GO: 
CSCR author 
needs to fix 
identified issues 
and schedule 
another Concept 
review to get 
authorization for 
CSCR 
development 
System Concept Review Team Members 
The members from Control Systems Engineering, Software Engineering, Project Engineering, 
Reliability Engineering, Operability, and Customer Support, Common Core are required to perform 
the System Concept Reviews as per the nature of change to the control system functions. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 30 
The following table represents the members involved in the System Concept Reviews activities: 
System Concept Review members 
Control Systems Manager 
Obligatory Participation 
Control Systems Fellow 
✓ 
Control Systems Subject Matter Expert 
✓* 
Control Systems Lead 
✓* 
Software Engineering – Design Lead 
✓ 
Project Engineer 
✓* 
Control System/Software Developers (as 
✓ 
Common Core team representative 
✓ 
Software DAA, CVE 
✓* 
Engine DAA, CVE 
✓* 
Other departments’ representative (Operability, Performance, 
✓* 
Reliability, Customer Support, Development Engineering, etc.) 
Legend: ✓ Obligatory, ✓* Required on need basis𝐼 
✓* 
Control Systems Manager or designated delegate in agreement with Software Design Manager (or 
designated Lead) shall take a decision to: 
i. 
ii. 
waive system concept review if the scope of change is simple in nature ( e.g. change in 
sensor range) 
increase number of system concept reviews if the scope of change is complex ( e.g. T/R 
system function development is distributed to multiple system engineers over incremental 
builds) 
Concept review artifacts shall be stored in the relevant Design Job and referenced in the 
appropriate CSCR. 
8.5.2 
Software Verification 
Software verification refers to the various stages of testing, analysis and reviews that are applicable 
to the embedded software element of a control system. The stages of software verification testing 
are defined in RTCA/DO-178 and are carried out by the supplier/partner. The Software Verification 
Test Plan considers all phases defined in section 5 except Equipment acceptance. The specifics 
of the need for Software Verification for all these release standards must consider the failure modes 
and failure accommodation the system provides, and the tool qualification available. 
Software Verification Test Cases and Procedures shall be prepared by the Supplier/Partner to 
cover the software verification tests on the embedded software, per RTCA/DO-178, and as 
approved by the Company. 
Where there is more than one software supplier/partner each one shall conduct the software 
integration testing for their software responsibilities up to and including, the common interface point. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 31 
This common interface point is defined as the OS/AS interface control document (includes the 
shared RAM table, memory maps etc.). This requirement will be clearly spelled in the assigned 
responsibilities within the PSAC. 
Complete verification to DO-178 standards is required to clear software for customer flight test at 
the customer. However where the application software has been developed using the SCADE 
toolset with a qualified code generator (as referenced in the supplier’s Tool Qualification Plan), 
credit may be taken for system verification testing to remove the need for software integration 
testing of the application software for flight release. 
Customer Propulsion flight release testing standard: 
• All OS changes and hardware changes require module test/code read, HSIT and SIT 
• All ASI changes to have module test/code read , or SIT for new programs 
• All AS changes to have module test/code read (not required for SCADE code), or SIT for new 
programs 
• System verification testing is assumed to cover major functionality based on regression 
analysis 
For certification release add: 
• Full HLR testing for AS 
A full CSRB, (ref: WIM 566) having considered the issues raised in this section may waive part or 
all of the Software Verification called out in the Software Verification Test Plan, except for 
Certification / Production. In such a case the documentation of this reduced verification shall 
correspond to that defined for reduced system verification in the next section. ’Full software 
verification’ has occurred if full hardware/software integration and full software integration have 
been completed, and all modules have been verified as defined in the Software Verification Plan 
(SVP) called out in the PSAC. 
For changes agreed to be small** by both the appropriate engine and software DAAs or CVEs the 
Verification is also considered complete through regression analysis if either: - 
a. A comparison of the baseline build's binary with the new build's binary shows changes which 
are compliant with the CSRD level changes. 
Or: 
b. A comparison of the baseline build's picture or source code with the new build's 
corresponding picture or source code shows changes which are readily demonstrable as 
matching the CSRD level change. Comparison of picture or source is accepted only if the 
development tools (e.g. auto code generator, linker, assembler, compiler) are qualified per 
RTCA/DO-178. 
**Note: Changes pertaining to timing, interrupt latency, I/Os, memory ranges, and data that 
impacts control coupling (e.g., sequence, scheduling) of modules shall not be considered as a 
small change. 
When software is considered Fully Verified on this basis, there must be adequate documentation 
including the rationale/justification for comparisons run, the explanation of the differences, baseline 
version, and the tools used. This documentation must be available to the release authority – CSRB, 
DAA or CVE, OAP, EASA, Transport Canada etc. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 32 
For a Certification / Production release, the Verification must be per a Full Verification. 
For a Certification Test release, the Verification must be per a Full Verification, but may be limited 
to those modules considered by the CSRB to be critical to the test, on the basis of the relevant 
requirement to code trace ability matrix. 
For a Customer Propulsion Flight release, when there is mechanical back up, full verification can 
be waived provided: - 
The mechanical back up is fully flight rated for all conditions. 
and 
and 
There is a means for the aircrew to select the manual back up which is 
independent of the control software. 
Either there is adequate time for the aircrew to recognize that the software 
based mode is behaving improperly and engage the mechanical back up before 
the situation becomes unsafe, or there has been an FMED per the Test Plan 
covering those situations the aircrew selection of the mechanical back up 
cannot cover. 
For any other release, the Verification shall be as defined in the SBR, and as accepted by the 
CSRB wherever this is required. 
8.5.3 
System Verification 
System Verification refers to the various stages of testing and analysis that are applicable to the 
control system components individually and as an assembly with and without the engine. 
The extent of the required testing shall be defined in the System Verification Test Plan (ref WIM 
330) which provides guidance for the preparation of the System Verification Test Procedures 
document. 
In cases where parts of the software verification are to be accomplished within the system 
verification process, the Test Plan shall constitute part of the Software Verification Plan of DO-178. 
The tests may include: 
a. Bench tests 
b. Closed loop bench tests (using a configured engine/powerplant model issued by 
Operability/Powerplant 
c. Simulation) 
d. Ground level engine tests 
e. Altitude flight tests 
f. 
Altitude facility tests 
Analysis may include: 
a. Electronic circuit analysis 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 33 
b. System Safety Analysis 
For systems with embedded software, ’Domain of Change’ Analysis (A technique defined in WIM 
689, whereby the portion of the system functions which may be affected by the changes made, is 
shown to be limited to a specific set of functions (provided only that the software compilation 
process, where relevant to the change, is considered adequate for the release intended)). 
The extent of system verification shall be defined in the prevailing Equipment Specification(s) and 
the System Verification Test Plan. 
A system is considered to be ’Fully System Verification’ if the change is restricted to embedded 
software, and its 'Domain of Change' has been checked in accordance with the ’System Verification 
Test Plan’. System Verification intended to support engine certification or Continued Airworthiness 
is the Company's responsibility, but may be performed by the Company and/or the 
supplier/partner/or others, dependent on the contractual arrangements. The System Verification 
requirements remain the same irrespective of the responsible party. In order to qualify for being 
"Fully System Verification" all the relevant requirements must have been checked for compliance 
of the results to the criteria in the requirement. 
The “Domain of Change” analysis shall be documented in the form of a memo stored in the Design 
Job folder. The analysis shall show that: 
1. All changed system requirements have been identified and had appropriate tests defined. 
2. All system requirements that may be affected by changes made in the software are reviewed, 
and either: 
a. Retested 
Or 
b. Accepted as not affected by the code change, because the changed module does not 
impact the functionality of the unchanged requirement. In cases where the software 
changes allow meaningful object code/binary code comparison to identify the changes are 
only those that have been intended, then no further analysis is needed and credit can be 
taken for system verification testing of the previous version for all functionality except for 
the changed code. 
3. The changes introduced do not negatively impact the results of the EMI/HIRF testing or any 
other engine certification testing (if it has already been performed on an earlier software 
version). 
For an engine Certification Test release, the System Verification must be per a Full System 
Verification, but may be limited to those functions considered by the CSRB to be critical to the test 
on the basis of the relevant requirement to code traceability matrix. 
If the need for System Verification is seen to be less than Full Validation the following information: 
a. A declaration and rationale that this is a "Reduced" System Verification. 
b. A definition of the system verification done. 
c. A declaration that "the Control System Verification is to a level corresponding to the declared 
software criticality level for the functions covered by the System Verification performed (and for 
functions checked by other acceptable means such as analysis) and has not been Validated 
otherwise" must be in the release documents at all pertinent levels, including: 
1. the SBR, 
2. System Verification Test Procedure, 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 34 
3. Control System Verification Summary report, 
4. CSRB minutes, 
5. Engine Release Note. 
This allows the release authority for the Engine and Aircraft, as relevant, to determine the adequacy 
of the System Verification for their purposes. 
8.6 
8.6.1 
8.6.2 
Substantiation Processes 
System Verification Test Plans 
The Test Plan shall provide the basis for the substantiation and test clearance requirements for the 
control system. The plan shall be sufficient to provide assurance of satisfactory compliance with all 
definition requirements. The test plan shall apply equally to software and system verification 
activities. 
The test plan will define the extent of test coverage necessary for the intended usage of the 
equipment. It will also define the test facilities required throughout the development program, e.g. 
closed loop bench, test cell, flight test vehicle. 
The test plan shall identify the organization responsible for each phase of the substantiation 
process. 
The test plan content may be included within the System Verification Test Procedure document for 
derivative or legacy programs. 
The Operability group will determine that the engine and powerplant comply with the Operability 
requirements as specified in the ORD. 
The Controls Group will be responsible for the preparation and issue of the test plans under the 
approval of the responsible Lead Controls Engineer. The System Verification Test Plan is covered 
by WIM 330. 
If the supplier / partner is required perform any part of the System Verification, and if this is done 
to their own System Verification Test Procedure, then the System Verification Test Plan must be 
flowed down to them. 
System Verification Test Procedures 
System Verification Test Procedures (VTP) provides specific procedural instructions to the Test 
Engineer and/or supplier to conduct tests on the component or system, as appropriate. This section 
is equally applicable to software and system verification activities. 
The system verification test procedures shall be prepared, reviewed and issued by the Controls 
group, under the approval of the lead Controls Engineer/Analyst, and the author of the VTP shall 
assure that the scope and extent of testing defined in the Test Plan is followed.  
For new or modified functions originating from departments outside of ECN (EPAC/OEI training, 
FLI/PLI, ITT Algo, load shedding, surge detection, etc.), the implications of the functional changes 
need to be well understood at the IPT level between the respective modules, i.e. which operating 
conditions or flight regimes are affected and what is expected to change. If needed, appropriate 
test cases and procedures shall be requested by Controls to the cognizant specialists highlighted 
within the IPT, to assist in the verification. It remains Controls responsibility, as integrator, to 
develop robustness test cases, in addition to the test cases based off CSRD requirements, to 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 35 
ensure the related function works as intended at the aircraft system level; following the principles 
of WIM355 for thrust setting verification (testing out all the permissible input permutations, failure 
modes, etc.). 
The test procedures shall indicate which of the procedures are required for the “min gate” testing, 
and which procedures are required for complete system verification. Engine-level test requests and 
test procedures should be rationalized/reviewed jointly by Controls and Operability to ensure 
duplication in scope, test procedures and requirements system verification/data review is 
minimized. 
“Min gate” testing is the mandatory minimum required subset of system testing, required before the 
software is run on an engine at the Company. It is intended to ensure that the major system 
functions (start/shutdown, accel/decel) have not been inadvertently affected during software 
development. 
Following the preparation of the Test Procedures, the Company shall conduct a review with the 
System Verification supplier to ensure that the scope of the testing is understood, the procedures 
can be executed on the test equipment, and the review criteria are defined. The purpose of this 
review is to assure that the test equipment, test procedures, test tools, simulators, test models and 
the test article (unit under test) are properly calibrated, configured and verified prior to the 
commencement of formal testing. 
Each separate test activity shall have a unique test plan number reference and pass/fail criteria. 
The details of the procedures, conditions and specific tests, however, may be referenced to 
previously issued test procedures. The test procedure shall show traceability back to the specific 
CSRD requirements. 
The authorization for the Company test activity to be carried out, definition of facility to be used, 
system verification level to be cleared and requirement timescales, will be provided by the issue of 
a Request for Test (RT) with content as per EOP 135 section 4.1 and approved by the responsible 
Project Engineer as per EOP 135. The supplier / partner shall manage test activities carried out by 
them in accordance with the SBR in a similar manner. 
The responsible Controls Engineer shall issue the RT for the Control System testing and submit it 
for approval to the Project Engineer. The RT will reference the test procedure identification 
providing the required traceability through the procedures. 
8.6.3 
8.6.4 
Test Clearance 
The hardware content of development control systems intended for flight release must comply with 
EOP 75 and EOP 106. 
Equipment Acceptance, Engine Test, and Flying Test Bed releases may be cleared by the 
responsible Lead Controls Engineer/Analyst and Project Engineer/appropriate IPT leader subject 
to evidence of completion of testing and a review of any discrepancies raised during that testing. A 
memorandum shall be issued stating that the review has been carried out and that the system is 
accepted for further testing. Any restrictions on engine operation shall also be defined. Other 
clearances are covered in section 8.12. 
Test Conduct 
Development Engineering is responsible for the test preparation, and test activity. Test data 
analysis, preparation and issue of a summary test report for the system verification activity outlined 
by the test plan under cover of the Request for Test (RT) authorization, shall be done by 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 36 
Development Engineering, but can be delegated to the Controls Group, as agreed within each 
program. 
Where control system testing is done outside the Company, the supplier shall be responsible for 
the test conduct defined in this section. 
All results shall be kept for reference. The results recorded on Data Acquisition Recorders and 
other memory devices of a temporary nature shall be transferred to a storage medium, identified, 
erase protected, indexed and filed for reference. Data shall be archived according to the guidelines 
of MMP 85. 
Parallel testing is the testing of the same s/w version on two or more platforms at the same time. 
Parallel testing is sometimes required for a released version of software. When this is necessary 
the supplier/ partner shall confirm at the start and completion of testing that those software versions 
subject to the parallel testing are identical. Configuration shall be in the form of a statement of 
compliance. 
Test results supporting substantiation for certification shall be retained as long as the certified 
product is in use per the DAPM or DOH. 
8.6.5 
8.6.6 
8.7 
8.8 
Test Reports 
The development test reports shall be generated by the organization responsible for test data 
review. 
Summary Reports 
A Control System Verification Summary Report shall be raised by the Controls Group. The CSVSR 
report shall reference the system definition, suppliers' verification activity results, test procedure, 
test summary report, level of system verification completed and system verification summary report. 
(Reference WIM 333). 
The CSVSR report shall be authorized as indicated in WIM 333. The report shall clearly indicate 
the system verification status of the software and hardware with recommendations for follow-on 
action. The report shall contain a complete and clear statement of the functional / safety impact of 
each Discrepancy Report raised during the substantiation of the subject version of the control 
system, or prior to the commencement of such testing. 
Transmittal of Control System Development Software 
When development software is transmitted from site to site by the Company or to/from another 
agency for implementation into firmware, the software/firmware verification, transmittal, storage 
and security shall be conducted in accordance with Development Engineering Procedure ETOI 09
00-01 – Software Changes to EEC. 
In Field Reprogramming 
When software modifications are generated after software release for service, the Electronic 
Engine Control (EEC) can be reprogrammed in the field. At occurrence of this event a design job 
is raised for each engine type to establish the appropriate procedure for consistent EEC software 
download in the field. The process is then published in a Service Bulletin issued for each engine 
program and change. The process for developing the Software Programming Utility (SPU) USB 
loader that is used for reprogramming the application software in the EEC is defined in WIM 963. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 37 
8.9 
8.9.1 
8.9.2 
8.9.3 
Development Support Systems 
Support Equipment 
All software and system verification testing at the Company, suppliers and partner facilities is to be 
carried out with calibrated instrumentation and rigs. The equipment is to have inspection clearance 
according to the procedures established and be configuration managed. 
System Verification Testing for experimental or production release will be subject to a review 
conducted by supplier (Engineering/Quality) and with the participation of the Company 
Engineering/Quality Organization. 
Configuration control of the facility hardware at the Company shall be the responsibility of Test 
Engineering per procedure GOI 4511-02. 
All documentation, including the level of substantiation, created during the development of an article 
of support hardware or software shall be retained for both initial design and subsequent 
modifications. 
Integration of Simulation Tools in the Development Process 
Control System/component simulation tools may be utilized at any point in the development cycle 
but generally are employed as shown in APPENDIX A for real time models. The use of 
System/Component models that are integrated into the control development cycle shall be the 
defined by the Controls Group, provided to the Supplier / Partner as determined for each program, 
and controlled to the level recommended in RTCA/DO-178 if appropriate otherwise as defined in 
WIM 359. 
Real time models released to Test Engineering or supplier/partner for integration into the bench 
simulation environment shall be developed, tested and configured by Operability/Powerplant 
Simulation, as well as being placed under configuration control by the receiving party. The release 
shall include a description of any limitations and accuracies achieved in the real time model. 
When the simulation responsibilities are transferred to a supplier/partner equivalent configuration 
control/ management procedure shall be maintained. 
Software Tools Qualification 
Computer software tools used in the design and verification of embedded software (such as 
SCADE/KCG, LDRA) shall be subject to verification testing. The processes to be used shall follow 
the guidelines of RTCA/DO-178 for tools if applicable. 
8.10 Management of Embedded Digital Data in Production 
QMSP 09-01 section titled "System Verification and Substantiation of Engine related Digital Data 
for Production" provides requirements for the management of embedded digital data, such as NVM 
data, in the production environment. The definition and format of this data shall be documented in 
the appropriate control system documentation, such as the CSRD, to ensure configuration control 
and traceability between software versions. The data required for production pass-off tests as well 
as the related instructions, integration requirements, tools, and test environment are to be defined 
in the Engineering Instructions (EI) which are controlled by EOP 40. The controls team should be 
part of the EI review process and shall take the requirements of QMSP 09-01 into consideration 
when reviewing the document. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 38 
8.11 Release 
Where defined below, a CSRB (ref WIM 566) must be called to provide the release decision and 
documentation. However to deal with the variability of programs, the Controls Team Leader, 
Controls Chief, DAA, CVE or Project Engineer / analyst may call additional CSRB(s) as they see a 
need. Two circumstances exemplify this – 
• The Team Leader sees an unusual combination of build circumstances and wants to get 
confirmation that the proposed substantiation will be acceptable to a release CSRB required 
by this procedure, before actually doing the substantiation work. Note that in such a case, the 
release CSRB is still required. 
• The build is seen as having some unusually high significance despite not appearing on the 
list below. In this case the CSRB could be before or after doing the substantiation. Having a 
pre substantiation CSRB does not automatically mean that a release CSRB is needed, but 
any CSRB can mandate further CSRB(s) as being required before release. 
For all circumstances not covered below, the Controls Team Leader is the release authority for 
Controls Group. Whether the release is by Team Leader or CSRB, the purpose of the release 
process is to assure that all the necessary processes have been undertaken, given satisfactory 
results, and hence the system is suitable for its intended usage. 
A CSRB is required for any release of control system software used for running engines outside 
the Company, where certification credit is taken for correct control system operation as detailed 
below: 
Definition of release types: 
a. Aircraft System Check Release 
b. Customer Ground Use Release 
c. Non Propulsion Customer Flight Release 
d. Propulsion Customer Flight Release 
e. Certification / Production Release 
A CSRB is required before releasing a control system for release types c, d and e. For types a, and 
b, it is permissible for a CSRB to be held retroactively to identify that the system substantiation is 
adequate for the purpose. 
If a control system is to be used for experimental flight purposes then the airworthiness procedures 
of EOP 75 shall be applied. The respective release note for the engine (ARC/Form 1), per ETOI 
09-00-01 shall not be submitted for Inspection signature until the CSRB has approved the system 
for release. 
The Certification/Production CSRB ensures that all Control System related Certification 
Documentation signed by the certification authorities are available and is recommended as a 
prerequisite to the signature of the DVPM. 
8.11.1 Baselines 
A “Baseline” is defined as a formally recorded configuration of the Control System Software, which 
has been certified. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 39 
During the initial development of the engine control software, the development software builds, 
which are used for significant tests and are supported by limited documentation, may be defined 
as “Developmental Baselines”. 
The purpose of “Developmental Baselines” is to record significant steps towards the establishment 
of a “Baseline” software build. 
All changes made to baselines or developmental baselines, shall be made through change control 
procedures as per the PSAC. 
Frequently, engine control system software builds are derived from existing control systems. The 
use of an existing program software build as a baseline for a new or derivative program must 
include all discrepancies in the existing software build. Test credit from the existing control system 
must be reviewed to define the degree to which its validity can still be applied in the new system. 
8.11.2 Release Documentation 
The various stages of the program are as defined in section 5, and can be divided into three major 
groups with release documentation as follows: 
1. Internal development stages (including test cell or FTB testing and engine certification tests 
which depend on specific control system behavior e.g. birdshot test or inlet distortion test). 
The documentation required for system release is defined in the following table. 
RTCA 
# 
Document 
Temp.build Baseline Cert Test *** Engine Test FTB - 
System Verification 
Test Plan (WIM 
330) 
N 
N 
Y - 
SCID 
N 
N 
N 
N - 
CSRD** (WIM 329) 
N 
Mark-Up 
N 
N 
Y - 
System Verification 
Test Procedures & 
Report (VTP and 
VTR) 
N 
N 
Y 
Partial* 
N 
N 
N - 
Unit CIFER(s) 
Y 
N 
Y 
Y 
11.17 Problem Report 
analysis 
Y 
N 
N 
Y 
Y - 
SW Build Request 
(SBR or TSBR per 
WIM 449) + 
TSBR 
SBR 
Y 
Y 
Y 
Y - 
RTCA/DO-178 
compliance plan 
N 
Y 
Y 
Y 
11.1 
Plan for Software 
Aspects of 
Certification 
N 
N 
Y 
N 
N 
N 
11.2 
Development Plan 
N 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  PAGE 40 
 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
 
11.3 SW Verification 
Plan 
11.4 SW Configuration 
Management Plan 
11.5 SW Quality 
Assurance Plan 
11.6 SW Requirements 
Standards 
RTCA 
# 
Document Temp.build Baseline Cert Test *** Engine Test FTB 
11.7 SW Design 
Standards 
     
11.8 SW Code 
Standards 
11.9 SW Requirements 
Specification++ 
N Y N N N 
11.10 SW Design 
Document 
N N N N N 
11.11 SW Source Code N N Y Y Y 
11.12 SW Executable 
(Binary) code 
11.13 SW Verification 
Test 
N N Y Y Y 
11.14 Procedures & 
Report 
11.15 SW Life Cycle 
Environment CI 
N N Y N N 
11.16 SW CI N Y Y N Y 
11.18 SW CM Records N N Y N N 
11.19 SW Quality 
Assurance Records 
11.20 SAS & SW 
Roadmap (WIM 
333) 
N N N N N - Safety Timing 
Constraint Analysis 
N N N N N - Traceability Matrix 
(WIM 333) 
N N Y N N - Control System 
Verification 
Summary Report 
(WIM 333) 
N N Partial* N N 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 41 
N - 
SQA Conformity 
Review Checklist 
N 
N 
Y 
* “Partial” here is as defined in sections 8.5.2 and 8.5.3. 
N 
+ A “Y” here means either an SBR or a TSBR may be used; “N” means neither is required. 
Where “SBR” or “TSBR” is noted then the alternative is not acceptable. 
** An approved SBR + the relevant set of approved CSCRs and DRs is considered equivalent 
to a CSRD except for Certification / Production. 
*** Certified Test per 8.5.2 & 8.5.3, Cert test Baseline. 
++ A set of approved RCNs/ERFs and an approved document identifying those RCNs/ERFs 
as meeting a particular SBR or TSBR definition is considered equivalent to an SRD/SRS except 
for Certification / Production. 
For systems without embedded software, only the documents listed in the first 6 lines of this 
table are required. Note also that the Control Systems Interface document (CSICD) material 
may optionally be included in the Installation Manual. 
2. SOI (Stage of Involvement) or Certification Reviews Documentation required for Certification 
reviews is defined in the FAA Order 8110.49. 
3. Software releases to customers outside the Company (requires CSRB Meeting): 
Documentation required for Software releases to customers outside the Company is defined 
in WIM 566. 
For engine control systems with embedded software, the documents should be issued before the 
first SBR is issued, and they must be issued before the first CSRB required by this procedure. This 
CSRB is responsible for confirming their proper issue before releasing the subject system. 
Note that where Transport Canada or EASA is directly involved, they will determine the 
documentation they require delivered when they determine their level of involvement (LOI). 
To meet this section, documentation must be issued, unless explicitly defined otherwise. 
Note that where these documents are generated by a supplier / partner they may bear differing 
titles, provided the relationship to the reference documents is made clear in an appropriate supplier 
document. 
Similarly incorporation of one or more documents into a single report is acceptable providing the 
intent of the individual documents is not lost. 
The responsibility for preparation of these documents is defined in WIM 334. 
8.12 Archiving 
Drawings and documents requiring retention and archiving are to be kept secure until archived. 
The drawings and documents are to be configuration managed and archived according to the 
procedure on Control of Records – MMP 85. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 42 
8.13 Maintenance of Design Jobs in Controls 
Recommended list of contents to be included in Design Jobs for Control Systems is detailed in 
MED 245. 
8.13.1 Design Job File Opening 
A design job shall be opened by the cognizant project engineer or by the Controls Team Leader. A 
design job is raised using a Request For Change form (MMP 203), as per WIM 314. 
Design job folders will be labeled. Whenever a design job consists of several folders, clear 
identification of the folder and total number of folders in the job will be provided. 
The design job shall be populated with all artifacts (as described in the following section) during the 
system and software development process, so that at the same time as the SOI#4 meeting is held 
with the certifying authority, the design job is effectively complete, and requires only the formal 
certification evidence from the certifying authority to be closed. 
8.13.2 Closing Job File 
When the job is complete, the Team Leader shall arrange that all formal documents for the job are 
added to the design job folder content list, and either added physically or by reference, if they are 
archived by Engineering Records. 
A Design Job Summary Memo is prepared by the responsible Controls Engineer. A design review 
will be held per EOP 103. 
8.13.3 Design Job Closure 
The design job file should be completed whether the job completes normally or is stopped on a 
“record and file” basis. As a rule the Design Job folder should be compiled on an ongoing basis. 
Design Job should be closed shortly after the Company EC is released. 
8.13.4 Abnormal Closure 
If Project Engineering calls for a job to be stopped ‘immediately’, then the Design Job file shall be 
closed as it stands. It is accepted that many processes may be left incomplete. 
8.13.5 Disposition 
Closed Design Job files shall be submitted to Engineering Records for retention and archiving. 
9 
Product Security Management 
Product security applies to engine control systems embedded software and electronic hardware, 
diagnostics and prognostics components, and associated system software utility tools. Product 
security activities are integrated across the software and electronic hardware life cycle. The intent 
of the product security process is to demonstrate compliance to the airworthiness security 
requirements3 and continued airworthiness. Product security framework is a risk-based approach 
3Currently provided via IP and SCA and expected to be harmonized by EASA/FAA/TCCA and published by TCCA as AWM 533.28(n) and 535.23(f). 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 43 
to managing (cyber) security risk to engine electronic control system (activities consists of a system 
security risk assessment and vulnerability test/analysis). 
The product security process is defined in EOP 3474 while the product security management 
process is defined in EOP 3515 . For certification purposes, product security may be applicable to 
the initial-engine certification or to engine post-certification, ie. Initial aircraft certification or once in 
service, based on external connectivity to aircraft systems and devices. 
The Product Security DAA (PS DAA) shall review the scope of the program and plan the Product 
Security certification SOI (Stage of Involvement) reviews with the certification authority. When 
security aspects are applicable, Software and Hardware Plans (PSAC and/or PHAC) shall briefly 
describe the applicability of the airworthiness security requirements and in addition be approved by 
the PS DAA. 
Product security requirements shall follow the standard software and electronic hardware design 
and development activities required for certification as defined in this EOP. These include; 
requirement definition, traceability, derived requirement reviews (see Section 7.3), system 
verification, discrepancy reporting, configuration management and quality assurance as defined in 
the applicable PSAC and PHAC. The standard software and hardware verification activities will be 
leveraged to the extent possible as defined in the applicable security certification plan. The 
standard development assurance activities defined in DO-178B/C and DO-254 prevent malicious 
or inexperienced actors from inserting any code or malware that may have a detrimental effect on 
the airworthiness of the system. 
Product security information, artifacts and activities related to engine control system are considered 
confidential and sensitive, and as such, restricted to authorized personnel only. Product security 
artifacts such as security requirements and security defects shall be stored in a separate access 
restricted configuration management system per WIM 952. 
10 
Notes 
The | symbol is used to indicate technical and major editorial changes from the previous issue of 
this procedure. 
4EOP 347 defines confidential process details and is restricted to the product security core team - access is only granted by the PS DAA. 
5 EOP 351 defines the management of the product security aspects and contains the relevant product security management aspects and inter
organizational activities. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 44 
APPENDIX A  
Control Systems Design and Development Process Chart 
This Appendix shows a process chart which illustrates the process described in this EOP. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 45 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 46 
APPENDIX B  
Control Systems and Software Development Process 
This Appendix shows a process chart which shows interaction with EOP 183. 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 47 
APPENDIX C 
Suggested Design Review Scope Items 
SYSTEM (CSRD) DESIGN REVIEW 
Identify Baseline 
Starting Baseline, (including engine/load model used for simulation/design) 
System changes from baseline (core software, sensors, fuel control, EEC, OS, turbo
machine, fuel system, oil system, and installation) 
Status Action items previous baseline review 
New Changed System Requirements 
Discrepancies Addressed 
AS Control Law Discrepancies Resolved Waiting Closure 
AS Control Law Open Discrepancies 
Future Changes Planned 
Next System Release 
Post Certification Changes 
Traceability Review 
PDRS / ORD - CSRD 
Performance 
Operability 
AS design 
System ARCHITECTURE 
Components 
Independence 
Redundancy 
A/C interfaces 
Functional changes 
Detailed CSRD requirements review by function. 
BEST PRACTICES 
Safety and Certification 
Operation Reliability 
Control System/Airframe integration – System performance 
Lessons Learned 
Information from other programs 
Information for other programs 
EOP, WIM, MED updates 
Documentation status 
CSICD, CSRD, VTP, Traceability Matrix 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  
PAGE 48 
SOFTWARE DESIGN REVIEW 
Identify Baseline 
Starting Baseline 
System changes from baseline (core software, sensors, fuel control, EEC, OS, turbo
machine, fuel system, oil system, and installation) 
Status Action items previous baseline review 
New or Changed System Requirements 
Discrepancies Addressed 
AS Control Law Discrepancies Resolved Waiting Closure 
AS Control Law Open Discrepancies 
Future Changes Planned 
Next builds 
Post Certification Changes 
Traceability Review 
CSRD - AS SRD requirements 
Derived requirements justification 
Derived design justification 
SW ARCHITECTURE 
OS/AS interfaces 
P&WC Lib Functions 
Core software functions 
Functional changes 
CSRD requirements, 
SRD requirements, 
SCADE Design, and 
Simulation results. 
BEST PRACTICES 
Control System/Airframe integration – System performance 
Starting 
Loop Control 
Power/Thrust setting 
Fault detection/accommodation 
Lessons Learned 
Information from other programs 
Information for other programs 
EOP, WIM, MED updates 
Documentation status 
IRS, SRD, SDD, checklists 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  PAGE 49 
 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
 
APPENDIX D 
Change History Relative to EOP 84 Issued 2015-10-28 
1. To close QCPCs, the following changes have been made to EOP 84: 
Section 2 Applicable Documents: Reference to EOP 186 added. 
Section 3 Application (paragraph 4): Reference to DO-254 replaced with EOP 186. 
Section 4 Acronyms: New section created to define acronyms used in this document. 
Section 6.2 Planning: Require PSAC to specify that changes introduced to Software Plans and 
Standards must have Software DAA, CVE and SQA approval. 
Section 6.3 Top-Down Design and Development (paragraph 3): Reference to DO-254 replaced with 
EOP 186 and DO-254. 
Section 7.1 Control System Definition: Upward traceability of CSRD requirements are to be referenced 
as a requirement in the Engine Compliance Plan or from a source referenced in the CSCR. Where there 
is no direct higher level requirement for a CSRD requirement, the requirement will be specified as 
“derived” with the rationale provided in the CSCR. 
Section 7.5.1.1 System Concept Review: New section created. 
Section 7.10 Release: A CSRB is no longer a must for a release of software for certification testing. 
Section 6.3.1 (iv) DR Classification C1 previously included only source code errors or non-compliance 
with requirements. C1 now also includes compliance with an incorrect requirement. 
Section 6.3.1 (iv) Note below table: SAS was previously “always submitted” to TC. Now the SAS is sent 
to TC for information only. 
Align with the industry standard definitions of word “validation” and “verification”. The term “verification” 
and “Validation” in various sections of the EOP was revised to be consistent with ARP 4754 definition 
of control system and software verification. 
Section 4.1 was added to incorporate equivalent terms being used in P&WC for Legacy APU Programs. 
Section 7.2.a, PSAC signatures and approvals are specified 
Section 8.3.1 was updated by removing the classification and refers to a new WIM. 
Section 8.3.3 was updated concerning derived LLRs having a safety or reliability impact and SSA report 
2. The following additional changes have been made to EOP 84: 
References to RTCA/DO-178B have been replaced with RTCA/DO-178 or RTCA/DO-178B or C to 
make the document more generic. 
Section 3: change EOP 186 to DO-254 and EOP 186 (per ballot feedback) 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
EOP-084  PAGE 50 
 
THE INFORMATION CONTAINED ON THIS PAGE IS SUBJECT TO THE NOTICE SET FORTH ON THE TITLE PAGE. 
 
Section 6.3: wording change (per ballot feedback) 
Section 7.3.1 Table: change validation DRs for V&V to include functional DRs only (per ballot feedback) 
Section 7.3.1 Table: change verification DRs for V&V to be consistent with text of Section 7.3.1 (iii) 
Section 7.5.1.1: system concept design review to be required for new function and optional otherwise 
(per ballot feedback) 
Section 7.5.1.1 Table: wording change (per ballot feedback) 
Section 7.5.2: Include SIT for ASI and AS changes (per ballot feedback) 
Section 7.5.3 Validation: The sub-numbering schemes have been made clearer. 
Section numbering and associated hotlinks to various sections, formatting and minor grammar fixes 
have also been implemented. 
Section 2.1: New references were added to address new documentation. 
Section 6, RACI MATRIX TABLES was added and it summarizes the Roles and responsibilities of ECN 
Departments/Suppliers/others according to the activities to be performed. 
3. The following additional changes have been made to EOP 84: 
Section 2 Applicable Documents: References to WIM 438, WIM 478, WIM 523, WIM 636, WIM 640, 
WIM 647, WIM 654, WIM 689, WIM 795, WIM 891, WIM 963, and WIM 1026 added. 
Section 7.8: References to WIM 647, WIM 654, and WIM 800 added. 
Section 8.2, 8.5.1, and 8.6.3: Incorrect reference to section 7.11 was updated to section 8.12 (per ballot 
feedback) 
Section 8.8: wording change (per ballot feedback) 
 
THIS DOCUMENT DOES NOT CONTAIN TECHNICAL DATA
Export Classification Date:2015-11-13
