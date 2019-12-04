**December 3rd, 2019**
We will be testing Portal (suit) release 1.1.1 and a substantially revised Helm-based deployment mechanism for the Portal application on `lsst-lsp-int` tomorrow, December 4th.  The Portal application may go up and down without additional notice.

Check [here](https://github.com/lsst-dm/lsp-landing-page/blob/master/motd/integration.md) for a complete list of messages.

---
**November 4th, 2019**
The TAP query interface has been fixed to follow the current LSST approach to authorization on the redirected results URLs from the TAP service.

Check [here](https://github.com/lsst-dm/lsp-landing-page/blob/master/motd/integration.md) for a complete list of messages.

---
**November 1st, 2019**  
The Portal Aspect TAP query interface is currently unable to access the LSST TAP service because of changes to the A&A behavior of the asynchronous TAP query interface. 
This manifests itself as being able to construct a query (the schema data in the UI are populated from the *synchronous* TAP query interface) but not being able to see the results after it is executed. 
Queries to other (anonymous) TAP services are working correctly.

On Monday November 4th the Portal Aspect here on `lsst-lsp-int` will be down starting in the morning for testing of a fix to this issue.

Check [here](https://github.com/lsst-dm/lsp-landing-page/blob/master/motd/integration.md) for a complete list of messages.

---
**May 22nd, 2019**  
Most services have been restored after yesterday's Kubernetes engineering work.  WebDAV and the interaction of authorization with the Notebook Aspect still require work in the coming days.  
This is the Integration (`-int`) instance of the LSST Science Platform.  Its functionality and behavior may be changed on short notice and its availability may be limited by testing and other activities.  Check [here](https://github.com/lsst-dm/lsp-landing-page/blob/master/motd/integration.md) for a complete list of messages.

---
**May 21st, 2019**  
The Science Platform instances `lsst-lsp-stable` and `lsst-lsp-int` are currently down for a major reconfiguration of the underlying Kubernetes clusters.  `lsst-lsp-int` may be up and down periodically all week as various integration and configuration change tests are performed.

Check [here](https://github.com/lsst-dm/lsp-landing-page/blob/master/motd/integration.md) for a complete list of messages.

---
**May 20th, 2019**  
The Science Platform instances `lsst-lsp-stable` and `lsst-lsp-int` will be taken down at 09:00 PDT on Tuesday 21 May 2019 for a major reconfiguration of the underlying Kubernetes clusters.
The work is a step toward a more robust environment, more suitable for running production services, and includes measures like the provision of redundant head nodes.
It will also pave the way for future changes such as improved performance for accessing shared filesystems on GPFS, and for removing the requirement to access the `lsst-lsp-stable` instance through a VPN.
The primary work is expected to take up to the full working day, concluding at 17:00 PDT.

Later in the week we will be performing some integration tests on `lsst-lsp-int`, including experimenting with modified security policies and with native GPFS mounts.
Users should anticipate the possibility of the `lsst-lsp-int` LSP instance going up and down a number of times during the week.

---
**April 5th, 2019**  
This is the `int` instance of the LSST Science Platform  
Its functionality and behavior may be changed on short notice and its availability may be limited by testing and other activities.  
Check [here](https://github.com/lsst-dm/lsp-landing-page/blob/master/motd/integration.md) for a complete list of messages  

---
**March 27th, 2019**  
Information messages will appear in the `LSP` home pages :+1:  
Only the *last* 3 messages will be displayed  
Check [here](https://github.com/lsst-dm/lsp-landing-page/blob/master/motd/integration.md) for complete list  

---
