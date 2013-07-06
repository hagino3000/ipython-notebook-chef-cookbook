#
# Cookbook Name:: ipython-notebook
# Recipe:: default
#
# Copyright 2013, hagino3000
#
# All rights reserved - Do Not Redistribute
#

# Install packages
%w{
  python-pandas
  python-numpy
  python-scipy
  python-matplotlib
  python-nose
  ipython-notebook
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end

# iPython needs sympy 0.7.2
# So use [pip install] instead of package install (0.7.1).
python_pip "sympy"

