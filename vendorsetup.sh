echo 'Starting to clone stuffs needed for your device'
# Stuffs to rm -rf
rm -rf hardware/qcom-caf/sm8150/audio
rm -rf hardware/qcom-caf/sm8150/media
rm -rf hardware/qcom-caf/sm8150/display

echo 'Cloning Hals [1/5]'
# Hals
git clone --depth=1 https://github.com/SuperiorOS/android_hardware_qcom_audio.git -b thirteen-caf-sm8150 hardware/qcom-caf/sm8150/audio
git clone --depth=1 https://github.com/SuperiorOS/android_hardware_qcom_media.git -b twelve-caf-sm8150 hardware/qcom-caf/sm8150/media
git clone --depth=1 https://github.com/SuperiorOS/android_hardware_qcom_display.git -b twelve-caf-sm8150 hardware/qcom-caf/sm8150/display

echo 'Cloning Vendor tree [2/5]'
# Vendor Tree
git clone --depth=1 https://github.com/EvolutionXViolet/vendor_xiaomi_violet.git vendor/xiaomi/violet

echo 'Cloning Kernel tree [3/5]'
# Kernel Tree
git clone --depth=1 https://github.com/EvolutionXViolet/Azure-caf-4.14.git kernel/xiaomi/violet

echo 'Cloning Firmware [4/5]'
# Firmware
git clone --depth=1 https://gitlab.com/princejb786/vendor_xiaomi-firmware_violet.git vendor/xiaomi-firmware/violet

echo 'Cloning Proton clang [5/5]'
# Proton Clang
git clone --depth=1 https://github.com/kdrag0n/proton-clang.git prebuilts/clang/host/linux-x86/clang-proton

echo 'Completed, Now proceeding to lunch'
