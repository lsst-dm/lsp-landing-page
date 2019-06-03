**June 3rd, 2019**
Disregard "Dask Server Error" on startup of the notebook instance.
Check [here](https://github.com/lsst-dm/lsp-landing-page/blob/master/motd/stable.md) for more details and the complete list of messages.

We are consistently seeing a popup error on entry to the notebook aspect.
"Dask Server Error" is the title of the popup.
This error appears to be completely cosmetic and we have not observed any degraded performance since its appearance.
Please ignore and close the popup.
It is under current investigation.

---
**May 22nd, 2019**  
Normal service has been restored after the major Kubernetes engineering changes yesterday.  
Check [here](https://github.com/lsst-dm/lsp-landing-page/blob/master/motd/stable.md) for more details and the complete list of messages.
This is the main user-facing, " `-stable` " instance of the LSST Science Platform.  Nevertheless, note that this is still a developmental service and the underlying infrastructure is still under construction; while this instance is managed to avoid capriciously inconveniencing users, true "stability" cannot yet be assured.

---
**May 21st, 2019**
Partial service, particularly for JupyterLab, has been restored to the `lsst-lsp-stable` Science Platform instance.  Some instability may still be observed due to DNS caching issues.  
Check [here](https://github.com/lsst-dm/lsp-landing-page/blob/master/motd/stable.md) for more details and the complete list of messages.

Details (see also messages on #dm-lsp Slack):

Following the extensive Kubernetes migration at NCSA, most services on `lsst-lsp-stable` have been restored, including the Notebook Aspect, the current and previous generations of the API Aspect (DAX) services, and logging.  The Portal Aspect will be restored when the team returns to work tomorrow; Notebook services were prioritized in the recovery because of their active use by DM team members.

The `lsst-lsp-int` instance is still largely down, except that the shared Qserv service that runs on the same underlying cluster is up.  It is expected that it will be possible to restore tomorrow as well.

---
**May 21st, 2019**  
The Science Platform instances `lsst-lsp-stable` and `lsst-lsp-int` are currently down for a major reconfiguration of the underlying Kubernetes clusters.  We aim to restore normal operation of `lsst-lsp-stable` as soon as possible, ideally today.  Updates will be posted to #dm-lsp on LSST Slack.

Check [here](https://github.com/lsst-dm/lsp-landing-page/blob/master/motd/stable.md) for a complete list of messages.

---
**May 20th, 2019**  
The Science Platform instances `lsst-lsp-stable` and `lsst-lsp-int` will be taken down at 09:00 PDT on Tuesday 21 May 2019 for a major reconfiguration of the underlying Kubernetes clusters.
The work is a step toward a more robust environment, more suitable for running production services, and includes measures like the provision of redundant head nodes.
It will also pave the way for future changes such as improved performance for accessing shared filesystems on GPFS, and for removing the requirement to access the `lsst-lsp-stable` instance through a VPN.
The primary work is expected to take up to the full working day, concluding at 17:00 PDT.

Normal service should resume on `lsst-lsp-stable` at the conclusion of this work.
We expect to take some shorter outages in the coming weeks to roll out additional changes, once they have been adequately tested on `lsst-lsp-int`.
Please let us know right away if you see any unusual behavior.

---
**April 5th, 2019**  
This is the `stable` instance of the LSST Science Platform   
Information about these services will be posted here  
Check [here](https://github.com/lsst-dm/lsp-landing-page/blob/master/motd/stable.md) for a complete list of messages  

---
**March 27th, 2019**  
Information messages will appear in the `LSP` home pages :+1:  
Only the *last* 3 messages will be displayed  
Check [here](https://github.com/lsst-dm/lsp-landing-page/blob/master/motd/stable.md) for complete list  

---
