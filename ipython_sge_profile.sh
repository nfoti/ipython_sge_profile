#!/bin/bash

ipython profile create sge --parallel
echo "c.IPEngineApp.wait_for_url_file = 60" >> ~/.ipython/profile_sge/ipengine_config.py
echo "c.EngineFactory.timeout = 20" >> ~/.ipython/profile_sge/ipengine_config.py
echo "c.HubFactory.ip = '*'" >> ~/.ipython/profile_sge/ipcontroller_config.py
echo "c.HubFactory.engine_ip = '*'" >> ~/.ipython/profile_sge/ipcontroller_config.py
echo "c.IPClusterStart.controller_launcher_class = 'SGE'" >> ~/.ipython/profile_sge/ipcluster_config.py
echo "c.IPClusterEngines.engine_launcher_class = 'SGE'" >> ~/.ipython/profile_sge/ipcluster_config.py
