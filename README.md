# clean_architecture

A new Flutter project.

## Getting Started

Core Layer
- assets
- constant
- error
- extensions
- language
- route
- theme

Data Layer (Domain Implement abstract method domain, gathering data)
1) Data Source: Rest API, Session, GraphQl etc.
2) Model: From json
3) UseCases: (Depend on Repository)
   - Convert (FromJson) model to entity Domain Layer
    
Domain Layer (Abstract method)
1) Entity: Without FromJson use to UseCases Data Layer.
2) Repository: Rest API, Session, GraphQl etc. abstract method.
3) UseCases: Create abstract method, depend on logic of single controller (cubit event, getx controller). 
   
