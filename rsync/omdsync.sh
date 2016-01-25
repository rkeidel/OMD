#!/bin/bash

/usr/bin/rsync -avcq \
	--exclude-from=/omd/sites/prod/sync/omd-exclude.conf \
	-e ssh \
	/omd/sites/prod/* prod@omd02.sae-lab.sms.local:
