#
# Make all plots for ncas-ceilometer-3
#

#netcdf_file_location=/gws/nopw/j04/ncas_obs/iao/processing/ncas-ceilometer-3/netcdf_files
#plot_output_location=/gws/nopw/j04/ncas_obs/iao/public/ncas-ceilometer-3/plots
netcdf_file_location=/home/users/earjham/test_ncfiles
plot_output_location=/home/users/earjham/bin/writing_netcdf/iao_code/ncas-seals-3
version=1.0

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

#today_date=$(date --utc +%Y%m%d)
#yesterday_date=$(date --utc -d "-1 day" +%Y%m%d)
#day_before_yesterday_date=$(date --utc -d "-2 days" +%Y%m%d)
today_date=20220218
yesterday_date=20220217
day_before_yesterday_date=20220216

aerosol_today_ncfile=${netcdf_file_location}/ncas-ceilometer-3_iao_${today_date}_aerosol-backscatter_v${version}.nc
aerosol_yest_ncfile=${netcdf_file_location}/ncas-ceilometer-3_iao_${yesterday_date}_aerosol-backscatter_v${version}.nc
aerosol_dby_ncfile=${netcdf_file_location}/ncas-ceilometer-3_iao_${day_before_yesterday_date}_aerosol-backscatter_v${version}.nc

cloud_today_ncfile=${netcdf_file_location}/ncas-ceilometer-3_iao_${today_date}_cloud-base_v${version}.nc
cloud_yest_ncfile=${netcdf_file_location}/ncas-ceilometer-3_iao_${yesterday_date}_cloud-base_v${version}.nc
cloud_dby_ncfile=${netcdf_file_location}/ncas-ceilometer-3_iao_${day_before_yesterday_date}_cloud-base_v${version}.nc

python ${SCRIPT_DIR}/plotting_seals.py ${aerosol_today_ncfile} ${aerosol_yest_ncfile} ${aerosol_dby_ncfile} ${cloud_today_ncfile} ${cloud_yest_ncfile} ${cloud_dby_ncfile} -a -a24 -a48 -c -c24 -c48 -o ${plot_output_location}