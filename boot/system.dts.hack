/dts-v1/;

/ {
	compatible = "xlnx,zynqmp-zcu102-rev1.0", "xlnx,zynqmp-zcu102", "xlnx,zynqmp";
	#address-cells = <0x2>;
	#size-cells = <0x2>;
	model = "ZynqMP ZCU102 Rev1.0";

	cpus {
		#address-cells = <0x1>;
		#size-cells = <0x0>;

		cpu@0 {
			compatible = "arm,cortex-a53", "arm,armv8";
			device_type = "cpu";
			enable-method = "psci";
			operating-points-v2 = <0x1>;
			reg = <0x0>;
			cpu-idle-states = <0x2>;
			clocks = <0x3 0xa>;
		};

		cpu@1 {
			compatible = "arm,cortex-a53", "arm,armv8";
			device_type = "cpu";
			enable-method = "psci";
			reg = <0x1>;
			operating-points-v2 = <0x1>;
			cpu-idle-states = <0x2>;
		};

		cpu@2 {
			compatible = "arm,cortex-a53", "arm,armv8";
			device_type = "cpu";
			enable-method = "psci";
			reg = <0x2>;
			operating-points-v2 = <0x1>;
			cpu-idle-states = <0x2>;
		};

		cpu@3 {
			compatible = "arm,cortex-a53", "arm,armv8";
			device_type = "cpu";
			enable-method = "psci";
			reg = <0x3>;
			operating-points-v2 = <0x1>;
			cpu-idle-states = <0x2>;
		};

		idle-states {
			entry-method = "arm,psci";

			cpu-sleep-0 {
				compatible = "arm,idle-state";
				arm,psci-suspend-param = <0x40000000>;
				local-timer-stop;
				entry-latency-us = <0x12c>;
				exit-latency-us = <0x258>;
				min-residency-us = <0x2710>;
				linux,phandle = <0x2>;
				phandle = <0x2>;
			};
		};
	};

	cpu_opp_table {
		compatible = "operating-points-v2";
		opp-shared;
		linux,phandle = <0x1>;
		phandle = <0x1>;

		opp00 {
			opp-hz = <0x0 0x47868bf4>;
			opp-microvolt = <0xf4240>;
			clock-latency-ns = <0x7a120>;
		};

		opp01 {
			opp-hz = <0x0 0x23c345fa>;
			opp-microvolt = <0xf4240>;
			clock-latency-ns = <0x7a120>;
		};

		opp02 {
			opp-hz = <0x0 0x17d783fc>;
			opp-microvolt = <0xf4240>;
			clock-latency-ns = <0x7a120>;
		};

		opp03 {
			opp-hz = <0x0 0x11e1a2fd>;
			opp-microvolt = <0xf4240>;
			clock-latency-ns = <0x7a120>;
		};
	};

	dcc {
		compatible = "arm,dcc";
		status = "disabled";
		u-boot,dm-pre-reloc;
	};

	power-domains {
		compatible = "xlnx,zynqmp-genpd";

		pd-usb0 {
			#power-domain-cells = <0x0>;
			pd-id = <0x16>;
			linux,phandle = <0x38>;
			phandle = <0x38>;
		};

		pd-usb1 {
			#power-domain-cells = <0x0>;
			pd-id = <0x17>;
			linux,phandle = <0x3b>;
			phandle = <0x3b>;
		};

		pd-sata {
			#power-domain-cells = <0x0>;
			pd-id = <0x1c>;
			linux,phandle = <0x29>;
			phandle = <0x29>;
		};

		pd-spi0 {
			#power-domain-cells = <0x0>;
			pd-id = <0x23>;
			linux,phandle = <0x2e>;
			phandle = <0x2e>;
		};

		pd-spi1 {
			#power-domain-cells = <0x0>;
			pd-id = <0x24>;
			linux,phandle = <0x2f>;
			phandle = <0x2f>;
		};

		pd-uart0 {
			#power-domain-cells = <0x0>;
			pd-id = <0x21>;
			linux,phandle = <0x34>;
			phandle = <0x34>;
		};

		pd-uart1 {
			#power-domain-cells = <0x0>;
			pd-id = <0x22>;
			linux,phandle = <0x36>;
			phandle = <0x36>;
		};

		pd-eth0 {
			#power-domain-cells = <0x0>;
			pd-id = <0x1d>;
			linux,phandle = <0x14>;
			phandle = <0x14>;
		};

		pd-eth1 {
			#power-domain-cells = <0x0>;
			pd-id = <0x1e>;
			linux,phandle = <0x15>;
			phandle = <0x15>;
		};

		pd-eth2 {
			#power-domain-cells = <0x0>;
			pd-id = <0x1f>;
			linux,phandle = <0x16>;
			phandle = <0x16>;
		};

		pd-eth3 {
			#power-domain-cells = <0x0>;
			pd-id = <0x20>;
			linux,phandle = <0x17>;
			phandle = <0x17>;
		};

		pd-i2c0 {
			#power-domain-cells = <0x0>;
			pd-id = <0x25>;
			linux,phandle = <0x1c>;
			phandle = <0x1c>;
		};

		pd-i2c1 {
			#power-domain-cells = <0x0>;
			pd-id = <0x26>;
			linux,phandle = <0x20>;
			phandle = <0x20>;
		};

		pd-dp {
			#power-domain-cells = <0x0>;
			pd-id = <0x29>;
			linux,phandle = <0x3c>;
			phandle = <0x3c>;
		};

		pd-gdma {
			#power-domain-cells = <0x0>;
			pd-id = <0x2a>;
			linux,phandle = <0x10>;
			phandle = <0x10>;
		};

		pd-adma {
			#power-domain-cells = <0x0>;
			pd-id = <0x2b>;
			linux,phandle = <0x12>;
			phandle = <0x12>;
		};

		pd-ttc0 {
			#power-domain-cells = <0x0>;
			pd-id = <0x18>;
			linux,phandle = <0x30>;
			phandle = <0x30>;
		};

		pd-ttc1 {
			#power-domain-cells = <0x0>;
			pd-id = <0x19>;
			linux,phandle = <0x31>;
			phandle = <0x31>;
		};

		pd-ttc2 {
			#power-domain-cells = <0x0>;
			pd-id = <0x1a>;
			linux,phandle = <0x32>;
			phandle = <0x32>;
		};

		pd-ttc3 {
			#power-domain-cells = <0x0>;
			pd-id = <0x1b>;
			linux,phandle = <0x33>;
			phandle = <0x33>;
		};

		pd-sd0 {
			#power-domain-cells = <0x0>;
			pd-id = <0x27>;
			linux,phandle = <0x2b>;
			phandle = <0x2b>;
		};

		pd-sd1 {
			#power-domain-cells = <0x0>;
			pd-id = <0x28>;
			linux,phandle = <0x2c>;
			phandle = <0x2c>;
		};

		pd-nand {
			#power-domain-cells = <0x0>;
			pd-id = <0x2c>;
			linux,phandle = <0x13>;
			phandle = <0x13>;
		};

		pd-qspi {
			#power-domain-cells = <0x0>;
			pd-id = <0x2d>;
			linux,phandle = <0x26>;
			phandle = <0x26>;
		};

		pd-gpio {
			#power-domain-cells = <0x0>;
			pd-id = <0x2e>;
			linux,phandle = <0x1a>;
			phandle = <0x1a>;
		};

		pd-can0 {
			#power-domain-cells = <0x0>;
			pd-id = <0x2f>;
			linux,phandle = <0xc>;
			phandle = <0xc>;
		};

		pd-can1 {
			#power-domain-cells = <0x0>;
			pd-id = <0x30>;
			linux,phandle = <0xd>;
			phandle = <0xd>;
		};

		pd-pcie {
			#power-domain-cells = <0x0>;
			pd-id = <0x3b>;
			linux,phandle = <0x25>;
			phandle = <0x25>;
		};

		pd-gpu {
			#power-domain-cells = <0x0>;
			pd-id = <0x3a 0x14 0x15>;
			linux,phandle = <0x11>;
			phandle = <0x11>;
		};
	};

	pmu {
		compatible = "arm,armv8-pmuv3";
		interrupt-parent = <0x4>;
		interrupts = <0x0 0x8f 0x4 0x0 0x90 0x4 0x0 0x91 0x4 0x0 0x92 0x4>;
	};

	psci {
		compatible = "arm,psci-0.2";
		method = "smc";
	};

	firmware {
		compatible = "xlnx,zynqmp-pm";
		method = "smc";
		interrupt-parent = <0x4>;
		interrupts = <0x0 0x23 0x4>;
	};

	timer {
		compatible = "arm,armv8-timer";
		interrupt-parent = <0x4>;
		interrupts = <0x1 0xd 0xf08 0x1 0xe 0xf08 0x1 0xb 0xf08 0x1 0xa 0xf08>;
	};

	edac {
		compatible = "arm,cortex-a53-edac";
	};

	fpga-full {
		compatible = "fpga-region";
		fpga-mgr = <0x5>;
		#address-cells = <0x2>;
		#size-cells = <0x2>;
	};

	nvmem_firmware {
		compatible = "xlnx,zynqmp-nvmem-fw";
		#address-cells = <0x1>;
		#size-cells = <0x1>;

		soc_revision@0 {
			reg = <0x0 0x4>;
			linux,phandle = <0x27>;
			phandle = <0x27>;
		};
	};

	pcap {
		compatible = "xlnx,zynqmp-pcap-fpga";
		linux,phandle = <0x5>;
		phandle = <0x5>;
	};

	reset-controller {
		compatible = "xlnx,zynqmp-reset";
		#reset-cells = <0x1>;
		linux,phandle = <0x28>;
		phandle = <0x28>;
	};

	zynqmp_rsa {
		compatible = "xlnx,zynqmp-rsa";
	};

	sha384 {
		compatible = "xlnx,zynqmp-keccak-384";
	};

	dp_snd_card {
		compatible = "xlnx,dp-snd-card";
		status = "okay";
		xlnx,dp-snd-pcm = <0x6 0x7>;
		xlnx,dp-snd-codec = <0x8>;
	};

	dp_snd_codec0 {
		compatible = "xlnx,dp-snd-codec";
		status = "okay";
		clock-names = "aud_clk";
		clocks = <0x3 0x11>;
		linux,phandle = <0x8>;
		phandle = <0x8>;
	};

	dp_snd_pcm0 {
		compatible = "xlnx,dp-snd-pcm";
		status = "okay";
		dmas = <0x9 0x4>;
		dma-names = "tx";
		linux,phandle = <0x6>;
		phandle = <0x6>;
	};

	dp_snd_pcm1 {
		compatible = "xlnx,dp-snd-pcm";
		status = "okay";
		dmas = <0x9 0x5>;
		dma-names = "tx";
		linux,phandle = <0x7>;
		phandle = <0x7>;
	};

	xilinx_drm {
		compatible = "xlnx,drm";
		status = "okay";
		xlnx,encoder-slave = <0xa>;
		xlnx,connector-type = "DisplayPort";
		xlnx,dp-sub = <0xb>;
		clocks = <0x3 0x10>;

		planes {
			xlnx,pixel-format = "rgb565";

			plane0 {
				dmas = <0x9 0x3>;
				dma-names = "dma0";
			};

			plane1 {
				dmas = <0x9 0x0 0x9 0x1 0x9 0x2>;
				dma-names = "dma0", "dma1", "dma2";
			};
		};
	};

	amba_apu@0 {
		compatible = "simple-bus";
		#address-cells = <0x2>;
		#size-cells = <0x1>;
		ranges = <0x0 0x0 0x0 0x0 0xffffffff>;

		interrupt-controller@f9010000 {
			compatible = "arm,gic-400", "arm,cortex-a15-gic";
			#interrupt-cells = <0x3>;
			reg = <0x0 0xf9010000 0x10000 0x0 0xf9020000 0x20000 0x0 0xf9040000 0x20000 0x0 0xf9060000 0x20000>;
			interrupt-controller;
			interrupt-parent = <0x4>;
			interrupts = <0x1 0x9 0xf04>;
			linux,phandle = <0x4>;
			phandle = <0x4>;
		};
	};

	amba {
		compatible = "simple-bus";
		u-boot,dm-pre-reloc;
		#address-cells = <0x2>;
		#size-cells = <0x2>;
		ranges;

		can@ff060000 {
			compatible = "xlnx,zynq-can-1.0";
			status = "disabled";
			clock-names = "can_clk", "pclk";
			reg = <0x0 0xff060000 0x0 0x1000>;
			interrupts = <0x0 0x17 0x4>;
			interrupt-parent = <0x4>;
			tx-fifo-depth = <0x40>;
			rx-fifo-depth = <0x40>;
			power-domains = <0xc>;
			clocks = <0x3 0x3f 0x3 0x1f>;
		};

		can@ff070000 {
			compatible = "xlnx,zynq-can-1.0";
			status = "okay";
			clock-names = "can_clk", "pclk";
			reg = <0x0 0xff070000 0x0 0x1000>;
			interrupts = <0x0 0x18 0x4>;
			interrupt-parent = <0x4>;
			tx-fifo-depth = <0x40>;
			rx-fifo-depth = <0x40>;
			power-domains = <0xd>;
			clocks = <0x3 0x40 0x3 0x1f>;
			pinctrl-names = "default";
			pinctrl-0 = <0xe>;
		};

		cci@fd6e0000 {
			compatible = "arm,cci-400";
			reg = <0x0 0xfd6e0000 0x0 0x9000>;
			ranges = <0x0 0x0 0xfd6e0000 0x10000>;
			#address-cells = <0x1>;
			#size-cells = <0x1>;

			pmu@9000 {
				compatible = "arm,cci-400-pmu,r1";
				reg = <0x9000 0x5000>;
				interrupt-parent = <0x4>;
				interrupts = <0x0 0x7b 0x4 0x0 0x7b 0x4 0x0 0x7b 0x4 0x0 0x7b 0x4 0x0 0x7b 0x4>;
			};
		};

		dma@fd500000 {
			status = "okay";
			compatible = "xlnx,zynqmp-dma-1.0";
			reg = <0x0 0xfd500000 0x0 0x1000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x7c 0x4>;
			clock-names = "clk_main", "clk_apb";
			xlnx,bus-width = <0x80>;
			#stream-id-cells = <0x1>;
			iommus = <0xf 0x14e8>;
			power-domains = <0x10>;
			clocks = <0x3 0x13 0x3 0x1f>;
			xlnx,include-sg;
			xlnx,overfetch;
			xlnx,ratectrl = <0x0>;
			xlnx,src-issue = <0x1f>;
		};

		dma@fd510000 {
			status = "okay";
			compatible = "xlnx,zynqmp-dma-1.0";
			reg = <0x0 0xfd510000 0x0 0x1000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x7d 0x4>;
			clock-names = "clk_main", "clk_apb";
			xlnx,bus-width = <0x80>;
			#stream-id-cells = <0x1>;
			iommus = <0xf 0x14e9>;
			power-domains = <0x10>;
			clocks = <0x3 0x13 0x3 0x1f>;
			xlnx,ratectrl = <0x64>;
			xlnx,src-issue = <0x4>;
		};

		dma@fd520000 {
			status = "okay";
			compatible = "xlnx,zynqmp-dma-1.0";
			reg = <0x0 0xfd520000 0x0 0x1000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x7e 0x4>;
			clock-names = "clk_main", "clk_apb";
			xlnx,bus-width = <0x80>;
			#stream-id-cells = <0x1>;
			iommus = <0xf 0x14ea>;
			power-domains = <0x10>;
			clocks = <0x3 0x13 0x3 0x1f>;
		};

		dma@fd530000 {
			status = "okay";
			compatible = "xlnx,zynqmp-dma-1.0";
			reg = <0x0 0xfd530000 0x0 0x1000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x7f 0x4>;
			clock-names = "clk_main", "clk_apb";
			xlnx,bus-width = <0x80>;
			#stream-id-cells = <0x1>;
			iommus = <0xf 0x14eb>;
			power-domains = <0x10>;
			clocks = <0x3 0x13 0x3 0x1f>;
			xlnx,include-sg;
		};

		dma@fd540000 {
			status = "okay";
			compatible = "xlnx,zynqmp-dma-1.0";
			reg = <0x0 0xfd540000 0x0 0x1000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x80 0x4>;
			clock-names = "clk_main", "clk_apb";
			xlnx,bus-width = <0x80>;
			#stream-id-cells = <0x1>;
			iommus = <0xf 0x14ec>;
			power-domains = <0x10>;
			clocks = <0x3 0x13 0x3 0x1f>;
		};

		dma@fd550000 {
			status = "okay";
			compatible = "xlnx,zynqmp-dma-1.0";
			reg = <0x0 0xfd550000 0x0 0x1000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x81 0x4>;
			clock-names = "clk_main", "clk_apb";
			xlnx,bus-width = <0x80>;
			#stream-id-cells = <0x1>;
			iommus = <0xf 0x14ed>;
			power-domains = <0x10>;
			clocks = <0x3 0x13 0x3 0x1f>;
			xlnx,include-sg;
		};

		dma@fd560000 {
			status = "okay";
			compatible = "xlnx,zynqmp-dma-1.0";
			reg = <0x0 0xfd560000 0x0 0x1000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x82 0x4>;
			clock-names = "clk_main", "clk_apb";
			xlnx,bus-width = <0x80>;
			#stream-id-cells = <0x1>;
			iommus = <0xf 0x14ee>;
			power-domains = <0x10>;
			clocks = <0x3 0x13 0x3 0x1f>;
		};

		dma@fd570000 {
			status = "okay";
			compatible = "xlnx,zynqmp-dma-1.0";
			reg = <0x0 0xfd570000 0x0 0x1000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x83 0x4>;
			clock-names = "clk_main", "clk_apb";
			xlnx,bus-width = <0x80>;
			#stream-id-cells = <0x1>;
			iommus = <0xf 0x14ef>;
			power-domains = <0x10>;
			clocks = <0x3 0x13 0x3 0x1f>;
			xlnx,include-sg;
		};

		gpu@fd4b0000 {
			status = "okay";
			compatible = "arm,mali-400", "arm,mali-utgard";
			reg = <0x0 0xfd4b0000 0x0 0x10000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x84 0x4 0x0 0x84 0x4 0x0 0x84 0x4 0x0 0x84 0x4 0x0 0x84 0x4 0x0 0x84 0x4>;
			interrupt-names = "IRQGP", "IRQGPMMU", "IRQPP0", "IRQPPMMU0", "IRQPP1", "IRQPPMMU1";
			clock-names = "gpu", "gpu_pp0", "gpu_pp1";
			power-domains = <0x11>;
			clocks = <0x3 0x18 0x3 0x19 0x3 0x1a>;
		};

		dma@ffa80000 {
			status = "okay";
			compatible = "xlnx,zynqmp-dma-1.0";
			clock-names = "clk_main", "clk_apb";
			reg = <0x0 0xffa80000 0x0 0x1000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x4d 0x4>;
			xlnx,bus-width = <0x40>;
			#stream-id-cells = <0x1>;
			power-domains = <0x12>;
			clocks = <0x3 0x44 0x3 0x1f>;
		};

		dma@ffa90000 {
			status = "okay";
			compatible = "xlnx,zynqmp-dma-1.0";
			clock-names = "clk_main", "clk_apb";
			reg = <0x0 0xffa90000 0x0 0x1000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x4e 0x4>;
			xlnx,bus-width = <0x40>;
			#stream-id-cells = <0x1>;
			power-domains = <0x12>;
			clocks = <0x3 0x44 0x3 0x1f>;
		};

		dma@ffaa0000 {
			status = "okay";
			compatible = "xlnx,zynqmp-dma-1.0";
			clock-names = "clk_main", "clk_apb";
			reg = <0x0 0xffaa0000 0x0 0x1000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x4f 0x4>;
			xlnx,bus-width = <0x40>;
			#stream-id-cells = <0x1>;
			power-domains = <0x12>;
			clocks = <0x3 0x44 0x3 0x1f>;
		};

		dma@ffab0000 {
			status = "okay";
			compatible = "xlnx,zynqmp-dma-1.0";
			clock-names = "clk_main", "clk_apb";
			reg = <0x0 0xffab0000 0x0 0x1000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x50 0x4>;
			xlnx,bus-width = <0x40>;
			#stream-id-cells = <0x1>;
			power-domains = <0x12>;
			clocks = <0x3 0x44 0x3 0x1f>;
		};

		dma@ffac0000 {
			status = "okay";
			compatible = "xlnx,zynqmp-dma-1.0";
			clock-names = "clk_main", "clk_apb";
			reg = <0x0 0xffac0000 0x0 0x1000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x51 0x4>;
			xlnx,bus-width = <0x40>;
			#stream-id-cells = <0x1>;
			power-domains = <0x12>;
			clocks = <0x3 0x44 0x3 0x1f>;
		};

		dma@ffad0000 {
			status = "okay";
			compatible = "xlnx,zynqmp-dma-1.0";
			clock-names = "clk_main", "clk_apb";
			reg = <0x0 0xffad0000 0x0 0x1000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x52 0x4>;
			xlnx,bus-width = <0x40>;
			#stream-id-cells = <0x1>;
			power-domains = <0x12>;
			clocks = <0x3 0x44 0x3 0x1f>;
		};

		dma@ffae0000 {
			status = "okay";
			compatible = "xlnx,zynqmp-dma-1.0";
			clock-names = "clk_main", "clk_apb";
			reg = <0x0 0xffae0000 0x0 0x1000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x53 0x4>;
			xlnx,bus-width = <0x40>;
			#stream-id-cells = <0x1>;
			power-domains = <0x12>;
			clocks = <0x3 0x44 0x3 0x1f>;
		};

		dma@ffaf0000 {
			status = "okay";
			compatible = "xlnx,zynqmp-dma-1.0";
			clock-names = "clk_main", "clk_apb";
			reg = <0x0 0xffaf0000 0x0 0x1000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x54 0x4>;
			xlnx,bus-width = <0x40>;
			#stream-id-cells = <0x1>;
			power-domains = <0x12>;
			clocks = <0x3 0x44 0x3 0x1f>;
		};

		memory-controller@fd070000 {
			compatible = "xlnx,zynqmp-ddrc-2.40a";
			reg = <0x0 0xfd070000 0x0 0x30000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x70 0x4>;
		};

		nand@ff100000 {
			compatible = "arasan,nfc-v3p10";
			status = "disabled";
			reg = <0x0 0xff100000 0x0 0x1000>;
			clock-names = "clk_sys", "clk_flash";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0xe 0x4>;
			#address-cells = <0x1>;
			#size-cells = <0x0>;
			#stream-id-cells = <0x1>;
			iommus = <0xf 0x872>;
			power-domains = <0x13>;
			clocks = <0x3 0x3c 0x3 0x1f>;
		};

		ethernet@ff0b0000 {
			compatible = "cdns,zynqmp-gem";
			status = "disabled";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x39 0x4 0x0 0x39 0x4>;
			reg = <0x0 0xff0b0000 0x0 0x1000>;
			clock-names = "pclk", "tx_clk", "hclk";
			#address-cells = <0x1>;
			#size-cells = <0x0>;
			#stream-id-cells = <0x1>;
			iommus = <0xf 0x874>;
			power-domains = <0x14>;
			clocks = <0x3 0x2d 0x3 0x2d 0x3 0x31>;
		};

		ethernet@ff0c0000 {
			compatible = "cdns,zynqmp-gem";
			status = "disabled";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x3b 0x4 0x0 0x3b 0x4>;
			reg = <0x0 0xff0c0000 0x0 0x1000>;
			clock-names = "pclk", "tx_clk", "hclk";
			#address-cells = <0x1>;
			#size-cells = <0x0>;
			#stream-id-cells = <0x1>;
			iommus = <0xf 0x875>;
			power-domains = <0x15>;
			clocks = <0x3 0x2e 0x3 0x2e 0x3 0x32>;
		};

		ethernet@ff0d0000 {
			compatible = "cdns,zynqmp-gem";
			status = "disabled";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x3d 0x4 0x0 0x3d 0x4>;
			reg = <0x0 0xff0d0000 0x0 0x1000>;
			clock-names = "pclk", "tx_clk", "hclk";
			#address-cells = <0x1>;
			#size-cells = <0x0>;
			#stream-id-cells = <0x1>;
			iommus = <0xf 0x876>;
			power-domains = <0x16>;
			clocks = <0x3 0x2f 0x3 0x2f 0x3 0x33>;
		};

		ethernet@ff0e0000 {
			compatible = "cdns,zynqmp-gem";
			status = "okay";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x3f 0x4 0x0 0x3f 0x4>;
			reg = <0x0 0xff0e0000 0x0 0x1000>;
			clock-names = "pclk", "hclk", "tx_clk", "rx_clk";
			#address-cells = <0x1>;
			#size-cells = <0x0>;
			#stream-id-cells = <0x1>;
			iommus = <0xf 0x877>;
			power-domains = <0x17>;
			clocks = <0x3 0x1f 0x3 0x34 0x3 0x30 0x3 0x34>;
			phy-handle = <0x18>;
			pinctrl-names = "default";
			pinctrl-0 = <0x19>;
			phy-mode = "rgmii-id";
			xlnx,ptp-enet-clock = <0x0>;
			local-mac-address = [00 0a 35 00 22 01];

			phy@c {
				reg = <0xc>;
				ti,rx-internal-delay = <0x8>;
				ti,tx-internal-delay = <0xa>;
				ti,fifo-depth = <0x1>;
				ti,rxctrl-strap-worka;
				linux,phandle = <0x18>;
				phandle = <0x18>;
			};
		};

		gpio@ff0a0000 {
			compatible = "xlnx,zynqmp-gpio-1.0";
			status = "okay";
			#gpio-cells = <0x2>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x10 0x4>;
			interrupt-controller;
			#interrupt-cells = <0x2>;
			reg = <0x0 0xff0a0000 0x0 0x1000>;
			gpio-controller;
			power-domains = <0x1a>;
			clocks = <0x3 0x1f>;
			pinctrl-names = "default";
			pinctrl-0 = <0x1b>;
			emio-gpio-width = <0x20>;
			gpio-mask-high = <0x0>;
			gpio-mask-low = <0x5600>;
			linux,phandle = <0x1f>;
			phandle = <0x1f>;
		};

		i2c@ff020000 {
			compatible = "cdns,i2c-r1p14", "cdns,i2c-r1p10";
			status = "okay";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x11 0x4>;
			reg = <0x0 0xff020000 0x0 0x1000>;
			#address-cells = <0x1>;
			#size-cells = <0x0>;
			power-domains = <0x1c>;
			clocks = <0x3 0x3d>;
			pinctrl-names = "default", "gpio";
			pinctrl-0 = <0x1d>;
			pinctrl-1 = <0x1e>;
			scl-gpios = <0x1f 0xe 0x0>;
			sda-gpios = <0x1f 0xf 0x0>;
			clock-frequency = <0x61a80>;

			gpio@20 {
				compatible = "ti,tca6416";
				reg = <0x20>;
				gpio-controller;
				#gpio-cells = <0x2>;
			};

			gpio@21 {
				compatible = "ti,tca6416";
				reg = <0x21>;
				gpio-controller;
				#gpio-cells = <0x2>;
			};

			i2cswitch@75 {
				compatible = "nxp,pca9544";
				#address-cells = <0x1>;
				#size-cells = <0x0>;
				reg = <0x75>;

				i2c@0 {
					#address-cells = <0x1>;
					#size-cells = <0x0>;
					reg = <0x0>;

					ina226@40 {
						compatible = "ti,ina226";
						reg = <0x40>;
						shunt-resistor = <0x1388>;
					};

					ina226@41 {
						compatible = "ti,ina226";
						reg = <0x41>;
						shunt-resistor = <0x1388>;
					};

					ina226@42 {
						compatible = "ti,ina226";
						reg = <0x42>;
						shunt-resistor = <0x1388>;
					};

					ina226@43 {
						compatible = "ti,ina226";
						reg = <0x43>;
						shunt-resistor = <0x1388>;
					};

					ina226@44 {
						compatible = "ti,ina226";
						reg = <0x44>;
						shunt-resistor = <0x1388>;
					};

					ina226@45 {
						compatible = "ti,ina226";
						reg = <0x45>;
						shunt-resistor = <0x1388>;
					};

					ina226@46 {
						compatible = "ti,ina226";
						reg = <0x46>;
						shunt-resistor = <0x1388>;
					};

					ina226@47 {
						compatible = "ti,ina226";
						reg = <0x47>;
						shunt-resistor = <0x1388>;
					};

					ina226@4a {
						compatible = "ti,ina226";
						reg = <0x4a>;
						shunt-resistor = <0x1388>;
					};

					ina226@4b {
						compatible = "ti,ina226";
						reg = <0x4b>;
						shunt-resistor = <0x1388>;
					};
				};

				i2c@1 {
					#address-cells = <0x1>;
					#size-cells = <0x0>;
					reg = <0x1>;

					ina226@40 {
						compatible = "ti,ina226";
						reg = <0x40>;
						shunt-resistor = <0x7d0>;
					};

					ina226@41 {
						compatible = "ti,ina226";
						reg = <0x41>;
						shunt-resistor = <0x1388>;
					};

					ina226@42 {
						compatible = "ti,ina226";
						reg = <0x42>;
						shunt-resistor = <0x1388>;
					};

					ina226@43 {
						compatible = "ti,ina226";
						reg = <0x43>;
						shunt-resistor = <0x1388>;
					};

					ina226@44 {
						compatible = "ti,ina226";
						reg = <0x44>;
						shunt-resistor = <0x1388>;
					};

					ina226@45 {
						compatible = "ti,ina226";
						reg = <0x45>;
						shunt-resistor = <0x1388>;
					};

					ina226@46 {
						compatible = "ti,ina226";
						reg = <0x46>;
						shunt-resistor = <0x1388>;
					};

					ina226@47 {
						compatible = "ti,ina226";
						reg = <0x47>;
						shunt-resistor = <0x1388>;
					};
				};

				i2c@2 {
					#address-cells = <0x1>;
					#size-cells = <0x0>;
					reg = <0x2>;

					max15301@a {
						compatible = "max15301";
						reg = <0xa>;
					};

					max15303@b {
						compatible = "max15303";
						reg = <0xb>;
					};

					max15303@10 {
						compatible = "max15303";
						reg = <0x10>;
					};

					max15301@13 {
						compatible = "max15301";
						reg = <0x13>;
					};

					max15303@14 {
						compatible = "max15303";
						reg = <0x14>;
					};

					max15303@15 {
						compatible = "max15303";
						reg = <0x15>;
					};

					max15303@16 {
						compatible = "max15303";
						reg = <0x16>;
					};

					max15303@17 {
						compatible = "max15303";
						reg = <0x17>;
					};

					max15301@18 {
						compatible = "max15301";
						reg = <0x18>;
					};

					max15303@1a {
						compatible = "max15303";
						reg = <0x1a>;
					};

					max15303@1b {
						compatible = "max15303";
						reg = <0x1b>;
					};

					max15303@1d {
						compatible = "max15303";
						reg = <0x1d>;
					};

					max20751@72 {
						compatible = "max20751";
						reg = <0x72>;
					};

					max20751@73 {
						compatible = "max20751";
						reg = <0x73>;
					};
				};
			};
		};

		i2c@ff030000 {
			compatible = "cdns,i2c-r1p14", "cdns,i2c-r1p10";
			status = "okay";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x12 0x4>;
			reg = <0x0 0xff030000 0x0 0x1000>;
			#address-cells = <0x1>;
			#size-cells = <0x0>;
			power-domains = <0x20>;
			clocks = <0x3 0x3e>;
			pinctrl-names = "default", "gpio";
			pinctrl-0 = <0x21>;
			pinctrl-1 = <0x22>;
			scl-gpios = <0x1f 0x10 0x0>;
			sda-gpios = <0x1f 0x11 0x0>;
			clock-frequency = <0x61a80>;

			i2cswitch@74 {
				compatible = "nxp,pca9548";
				#address-cells = <0x1>;
				#size-cells = <0x0>;
				reg = <0x74>;

				i2c@0 {
					#address-cells = <0x1>;
					#size-cells = <0x0>;
					reg = <0x0>;

					eeprom@54 {
						compatible = "at,24c08";
						reg = <0x54>;
						#address-cells = <0x1>;
						#size-cells = <0x1>;

						board_sn@0 {
							reg = <0x0 0x14>;
						};

						eth_mac@20 {
							reg = <0x20 0x6>;
						};

						board_name@d0 {
							reg = <0xd0 0x6>;
						};

						board_revision@e0 {
							reg = <0xe0 0x3>;
						};
					};
				};

				i2c@1 {
					#address-cells = <0x1>;
					#size-cells = <0x0>;
					reg = <0x1>;

					clock-generator1@36 {
						compatible = "si5341";
						reg = <0x36>;
					};
				};

				i2c@2 {
					#address-cells = <0x1>;
					#size-cells = <0x0>;
					reg = <0x2>;

					clock-generator2@5d {
						#clock-cells = <0x0>;
						compatible = "silabs,si570";
						reg = <0x5d>;
						temperature-stability = <0x32>;
						factory-fout = <0x11e1a300>;
						clock-frequency = <0x11e1a300>;
					};
				};

				i2c@3 {
					#address-cells = <0x1>;
					#size-cells = <0x0>;
					reg = <0x3>;

					clock-generator3@5d {
						#clock-cells = <0x0>;
						compatible = "silabs,si570";
						reg = <0x5d>;
						temperature-stability = <0x32>;
						factory-fout = <0x9502f90>;
						clock-frequency = <0x8d9ee20>;
					};
				};

				i2c@4 {
					#address-cells = <0x1>;
					#size-cells = <0x0>;
					reg = <0x4>;

					clock-generator4@69 {
						compatible = "silabs,si5328";
						reg = <0x69>;
					};
				};
			};

			i2cswitch@75 {
				compatible = "nxp,pca9548";
				#address-cells = <0x1>;
				#size-cells = <0x0>;
				reg = <0x75>;

				i2c@0 {
					#address-cells = <0x1>;
					#size-cells = <0x0>;
					reg = <0x0>;
				};

				i2c@1 {
					#address-cells = <0x1>;
					#size-cells = <0x0>;
					reg = <0x1>;
				};

				i2c@2 {
					#address-cells = <0x1>;
					#size-cells = <0x0>;
					reg = <0x2>;
				};

				i2c@3 {
					#address-cells = <0x1>;
					#size-cells = <0x0>;
					reg = <0x3>;

					dev@19 {
						compatible = "xxx";
						reg = <0x19>;
					};

					dev@30 {
						compatible = "xxx";
						reg = <0x30>;
					};

					dev@35 {
						compatible = "xxx";
						reg = <0x35>;
					};

					dev@36 {
						compatible = "xxx";
						reg = <0x36>;
					};

					dev@51 {
						compatible = "xxx";
						reg = <0x51>;
					};
				};

				i2c@4 {
					#address-cells = <0x1>;
					#size-cells = <0x0>;
					reg = <0x4>;
				};

				i2c@5 {
					#address-cells = <0x1>;
					#size-cells = <0x0>;
					reg = <0x5>;
				};

				i2c@6 {
					#address-cells = <0x1>;
					#size-cells = <0x0>;
					reg = <0x6>;
				};

				i2c@7 {
					#address-cells = <0x1>;
					#size-cells = <0x0>;
					reg = <0x7>;
				};
			};
		};

		memory-controller@ff960000 {
			compatible = "xlnx,zynqmp-ocmc-1.0";
			reg = <0x0 0xff960000 0x0 0x1000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0xa 0x4>;
		};

		pcie@fd0e0000 {
			compatible = "xlnx,nwl-pcie-2.11";
			status = "okay";
			#address-cells = <0x3>;
			#size-cells = <0x2>;
			#interrupt-cells = <0x1>;
			msi-controller;
			device_type = "pci";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x76 0x4 0x0 0x75 0x4 0x0 0x74 0x4 0x0 0x73 0x4 0x0 0x72 0x4>;
			interrupt-names = "misc", "dummy", "intx", "msi1", "msi0";
			msi-parent = <0x23>;
			reg = <0x0 0xfd0e0000 0x0 0x1000 0x0 0xfd480000 0x0 0x1000 0x80 0x0 0x0 0x1000000>;
			reg-names = "breg", "pcireg", "cfg";
			ranges = <0x2000000 0x0 0xe0000000 0x0 0xe0000000 0x0 0x10000000 0x43000000 0x6 0x0 0x6 0x0 0x2 0x0>;
			interrupt-map-mask = <0x0 0x0 0x0 0x7>;
			bus-range = <0x0 0xff>;
			interrupt-map = <0x0 0x0 0x0 0x1 0x24 0x1 0x0 0x0 0x0 0x2 0x24 0x2 0x0 0x0 0x0 0x3 0x24 0x3 0x0 0x0 0x0 0x4 0x24 0x4>;
			power-domains = <0x25>;
			clocks = <0x3 0x17>;
			xlnx,pcie-mode = "Root Port";
			linux,phandle = <0x23>;
			phandle = <0x23>;

			legacy-interrupt-controller {
				interrupt-controller;
				#address-cells = <0x0>;
				#interrupt-cells = <0x1>;
				linux,phandle = <0x24>;
				phandle = <0x24>;
			};
		};

		spi@ff0f0000 {
			u-boot,dm-pre-reloc;
			compatible = "xlnx,zynqmp-qspi-1.0";
			status = "okay";
			clock-names = "ref_clk", "pclk";
			interrupts = <0x0 0xf 0x4>;
			interrupt-parent = <0x4>;
			num-cs = <0x1>;
			reg = <0x0 0xff0f0000 0x0 0x1000 0x0 0xc0000000 0x0 0x8000000>;
			#address-cells = <0x1>;
			#size-cells = <0x0>;
			#stream-id-cells = <0x1>;
			iommus = <0xf 0x873>;
			power-domains = <0x26>;
			clocks = <0x3 0x35 0x3 0x1f>;
			is-dual = <0x1>;
			spi-rx-bus-width = <0x4>;
			spi-tx-bus-width = <0x4>;

			flash@0 {
				compatible = "n25q512a", "micron,m25p80";
				#address-cells = <0x1>;
				#size-cells = <0x1>;
				reg = <0x0>;
				spi-tx-bus-width = <0x1>;
				spi-rx-bus-width = <0x4>;
				spi-max-frequency = <0x66ff300>;

				partition@0x00000000 {
					label = "boot";
					reg = <0x0 0x1e00000>;
				};

				partition@0x01e00000 {
					label = "bootenv";
					reg = <0x1e00000 0x40000>;
				};

				partition@0x01e40000 {
					label = "kernel";
					reg = <0x1e40000 0x2400000>;
				};

				partition@0x04240000 {
					label = "spare";
					reg = <0x4240000 0x0>;
				};
			};
		};

		rtc@ffa60000 {
			compatible = "xlnx,zynqmp-rtc";
			status = "okay";
			reg = <0x0 0xffa60000 0x0 0x100>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x1a 0x4 0x0 0x1b 0x4>;
			interrupt-names = "alarm", "sec";
			calibration = <0x8000>;
		};

		zynqmp_phy@fd400000 {
			compatible = "xlnx,zynqmp-psgtr";
			status = "okay";
			reg = <0x0 0xfd400000 0x0 0x40000 0x0 0xfd3d0000 0x0 0x1000 0x0 0xff5e0000 0x0 0x1000>;
			reg-names = "serdes", "siou", "lpd";
			nvmem-cells = <0x27>;
			nvmem-cell-names = "soc_revision";
			resets = <0x28 0x10 0x28 0x3b 0x28 0x3c 0x28 0x3d 0x28 0x3e 0x28 0x3f 0x28 0x40 0x28 0x3 0x28 0x1d 0x28 0x1e 0x28 0x1f 0x28 0x20>;
			reset-names = "sata_rst", "usb0_crst", "usb1_crst", "usb0_hibrst", "usb1_hibrst", "usb0_apbrst", "usb1_apbrst", "dp_rst", "gem0_rst", "gem1_rst", "gem2_rst", "gem3_rst";

			lane0 {
				#phy-cells = <0x4>;
			};

			lane1 {
				#phy-cells = <0x4>;
				linux,phandle = <0x3e>;
				phandle = <0x3e>;
			};

			lane2 {
				#phy-cells = <0x4>;
				linux,phandle = <0x3a>;
				phandle = <0x3a>;
			};

			lane3 {
				#phy-cells = <0x4>;
				linux,phandle = <0x2a>;
				phandle = <0x2a>;
			};
		};

		ahci@fd0c0000 {
			compatible = "ceva,ahci-1v84";
			status = "okay";
			reg = <0x0 0xfd0c0000 0x0 0x2000>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x85 0x4>;
			power-domains = <0x29>;
			#stream-id-cells = <0x4>;
			iommus = <0xf 0x4c0 0xf 0x4c1 0xf 0x4c2 0xf 0x4c3>;
			clocks = <0x3 0x16>;
			ceva,p0-cominit-params = <0x18401828>;
			ceva,p0-comwake-params = <0x614080e>;
			ceva,p0-burst-params = <0x13084a06>;
			ceva,p0-retry-params = <0x96a43ffc>;
			ceva,p1-cominit-params = <0x18401828>;
			ceva,p1-comwake-params = <0x614080e>;
			ceva,p1-burst-params = <0x13084a06>;
			ceva,p1-retry-params = <0x96a43ffc>;
			phy-names = "sata-phy";
			phys = <0x2a 0x1 0x1 0x1 0x7735940>;
		};

		sdhci@ff160000 {
			u-boot,dm-pre-reloc;
			compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
			status = "disabled";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x30 0x4>;
			reg = <0x0 0xff160000 0x0 0x1000>;
			clock-names = "clk_xin", "clk_ahb";
			xlnx,device_id = <0x0>;
			#stream-id-cells = <0x1>;
			iommus = <0xf 0x870>;
			power-domains = <0x2b>;
			clocks = <0x3 0x36 0x3 0x1f>;
		};

		sdhci@ff170000 {
			u-boot,dm-pre-reloc;
			compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
			status = "okay";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x31 0x4>;
			reg = <0x0 0xff170000 0x0 0x1000>;
			clock-names = "clk_xin", "clk_ahb";
			xlnx,device_id = <0x1>;
			#stream-id-cells = <0x1>;
			iommus = <0xf 0x871>;
			power-domains = <0x2c>;
			clocks = <0x3 0x37 0x3 0x1f>;
			pinctrl-names = "default";
			pinctrl-0 = <0x2d>;
			no-1-8-v;
			clock-frequency = <0xb2cbba8>;
			xlnx,mio_bank = <0x1>;
		};

		pinctrl@ff180000 {
			compatible = "xlnx,pinctrl-zynqmp";
			status = "okay";
			reg = <0x0 0xff180000 0x0 0x1000>;

			i2c0-default {
				linux,phandle = <0x1d>;
				phandle = <0x1d>;

				mux {
					groups = "i2c0_3_grp";
					function = "i2c0";
				};

				conf {
					groups = "i2c0_3_grp";
					bias-pull-up;
					slew-rate = <0x1>;
					io-standard = <0x1>;
				};
			};

			i2c0-gpio {
				linux,phandle = <0x1e>;
				phandle = <0x1e>;

				mux {
					groups = "gpio0_14_grp", "gpio0_15_grp";
					function = "gpio0";
				};

				conf {
					groups = "gpio0_14_grp", "gpio0_15_grp";
					slew-rate = <0x1>;
					io-standard = <0x1>;
				};
			};

			i2c1-default {
				linux,phandle = <0x21>;
				phandle = <0x21>;

				mux {
					groups = "i2c1_4_grp";
					function = "i2c1";
				};

				conf {
					groups = "i2c1_4_grp";
					bias-pull-up;
					slew-rate = <0x1>;
					io-standard = <0x1>;
				};
			};

			i2c1-gpio {
				linux,phandle = <0x22>;
				phandle = <0x22>;

				mux {
					groups = "gpio0_16_grp", "gpio0_17_grp";
					function = "gpio0";
				};

				conf {
					groups = "gpio0_16_grp", "gpio0_17_grp";
					slew-rate = <0x1>;
					io-standard = <0x1>;
				};
			};

			uart0-default {
				linux,phandle = <0x35>;
				phandle = <0x35>;

				mux {
					groups = "uart0_4_grp";
					function = "uart0";
				};

				conf {
					groups = "uart0_4_grp";
					slew-rate = <0x1>;
					io-standard = <0x1>;
				};

				conf-rx {
					pins = "MIO18";
					bias-high-impedance;
				};

				conf-tx {
					pins = "MIO19";
					bias-disable;
				};
			};



			usb0-default {
				linux,phandle = <0x39>;
				phandle = <0x39>;

				mux {
					groups = "usb0_0_grp";
					function = "usb0";
				};

				conf {
					groups = "usb0_0_grp";
					slew-rate = <0x1>;
					io-standard = <0x1>;
				};

				conf-rx {
					pins = "MIO52", "MIO53", "MIO55";
					bias-high-impedance;
				};

				conf-tx {
					pins = "MIO54", "MIO56", "MIO57", "MIO58", "MIO59", "MIO60", "MIO61", "MIO62", "MIO63";
					bias-disable;
				};
			};

			gem3-default {
				linux,phandle = <0x19>;
				phandle = <0x19>;

				mux {
					function = "ethernet3";
					groups = "ethernet3_0_grp";
				};

				conf {
					groups = "ethernet3_0_grp";
					slew-rate = <0x1>;
					io-standard = <0x1>;
				};

				conf-rx {
					pins = "MIO70", "MIO71", "MIO72", "MIO73", "MIO74", "MIO75";
					bias-high-impedance;
					low-power-disable;
				};

				conf-tx {
					pins = "MIO64", "MIO65", "MIO66", "MIO67", "MIO68", "MIO69";
					bias-disable;
					low-power-enable;
				};

				mux-mdio {
					function = "mdio3";
					groups = "mdio3_0_grp";
				};

				conf-mdio {
					groups = "mdio3_0_grp";
					slew-rate = <0x1>;
					io-standard = <0x1>;
					bias-disable;
				};
			};

			can1-default {
				linux,phandle = <0xe>;
				phandle = <0xe>;

				mux {
					function = "can1";
					groups = "can1_6_grp";
				};

				conf {
					groups = "can1_6_grp";
					slew-rate = <0x1>;
					io-standard = <0x1>;
				};

				conf-rx {
					pins = "MIO25";
					bias-high-impedance;
				};

				conf-tx {
					pins = "MIO24";
					bias-disable;
				};
			};

			sdhci1-default {
				linux,phandle = <0x2d>;
				phandle = <0x2d>;

				mux {
					groups = "sdio1_0_grp";
					function = "sdio1";
				};

				conf {
					groups = "sdio1_0_grp";
					slew-rate = <0x1>;
					io-standard = <0x1>;
					bias-disable;
				};

				mux-cd {
					groups = "sdio1_0_cd_grp";
					function = "sdio1_cd";
				};

				conf-cd {
					groups = "sdio1_0_cd_grp";
					bias-high-impedance;
					bias-pull-up;
					slew-rate = <0x1>;
					io-standard = <0x1>;
				};

				mux-wp {
					groups = "sdio1_0_wp_grp";
					function = "sdio1_wp";
				};

				conf-wp {
					groups = "sdio1_0_wp_grp";
					bias-high-impedance;
					bias-pull-up;
					slew-rate = <0x1>;
					io-standard = <0x1>;
				};
			};

			gpio-default {
				linux,phandle = <0x1b>;
				phandle = <0x1b>;

				mux-sw {
					function = "gpio0";
					groups = "gpio0_22_grp", "gpio0_23_grp";
				};

				conf-sw {
					groups = "gpio0_22_grp", "gpio0_23_grp";
					slew-rate = <0x1>;
					io-standard = <0x1>;
				};

				mux-msp {
					function = "gpio0";
					groups = "gpio0_13_grp", "gpio0_38_grp";
				};

				conf-msp {
					groups = "gpio0_13_grp", "gpio0_38_grp";
					slew-rate = <0x1>;
					io-standard = <0x1>;
				};

				conf-pull-up {
					pins = "MIO22", "MIO23";
					bias-pull-up;
				};

				conf-pull-none {
					pins = "MIO13", "MIO38";
					bias-disable;
				};
			};
		};

		smmu@fd800000 {
			compatible = "arm,mmu-500";
			reg = <0x0 0xfd800000 0x0 0x20000>;
			#iommu-cells = <0x1>;
			status = "disabled";
			#global-interrupts = <0x1>;
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x9b 0x4 0x0 0x9b 0x4 0x0 0x9b 0x4 0x0 0x9b 0x4 0x0 0x9b 0x4 0x0 0x9b 0x4 0x0 0x9b 0x4 0x0 0x9b 0x4 0x0 0x9b 0x4 0x0 0x9b 0x4 0x0 0x9b 0x4 0x0 0x9b 0x4 0x0 0x9b 0x4 0x0 0x9b 0x4 0x0 0x9b 0x4 0x0 0x9b 0x4 0x0 0x9b 0x4>;
			linux,phandle = <0xf>;
			phandle = <0xf>;
		};

		spi@ff040000 {
			compatible = "cdns,spi-r1p6";
			status = "disabled";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x13 0x4>;
			reg = <0x0 0xff040000 0x0 0x1000>;
			clock-names = "ref_clk", "pclk";
			#address-cells = <0x1>;
			#size-cells = <0x0>;
			power-domains = <0x2e>;
			clocks = <0x3 0x3a 0x3 0x1f>;
		};

		spi@ff050000 {
			compatible = "cdns,spi-r1p6";
			status = "disabled";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x14 0x4>;
			reg = <0x0 0xff050000 0x0 0x1000>;
			clock-names = "ref_clk", "pclk";
			#address-cells = <0x1>;
			#size-cells = <0x0>;
			power-domains = <0x2f>;
			clocks = <0x3 0x3b 0x3 0x1f>;
		};

		timer@ff110000 {
			compatible = "cdns,ttc";
			status = "disabled";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x24 0x4 0x0 0x25 0x4 0x0 0x26 0x4>;
			reg = <0x0 0xff110000 0x0 0x1000>;
			timer-width = <0x20>;
			power-domains = <0x30>;
		};

		timer@ff120000 {
			compatible = "cdns,ttc";
			status = "disabled";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x27 0x4 0x0 0x28 0x4 0x0 0x29 0x4>;
			reg = <0x0 0xff120000 0x0 0x1000>;
			timer-width = <0x20>;
			power-domains = <0x31>;
		};

		timer@ff130000 {
			compatible = "cdns,ttc";
			status = "disabled";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x2a 0x4 0x0 0x2b 0x4 0x0 0x2c 0x4>;
			reg = <0x0 0xff130000 0x0 0x1000>;
			timer-width = <0x20>;
			power-domains = <0x32>;
		};

		timer@ff140000 {
			compatible = "cdns,ttc";
			status = "disabled";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x2d 0x4 0x0 0x2e 0x4 0x0 0x2f 0x4>;
			reg = <0x0 0xff140000 0x0 0x1000>;
			timer-width = <0x20>;
			power-domains = <0x33>;
		};

		serial@ff000000 {
			u-boot,dm-pre-reloc;
			compatible = "cdns,uart-r1p12", "xlnx,xuartps";
			status = "okay";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x15 0x4>;
			reg = <0x0 0xff000000 0x0 0x1000>;
			clock-names = "uart_clk", "pclk";
			power-domains = <0x34>;
			clocks = <0x3 0x38 0x3 0x1f>;
			pinctrl-names = "default";
			pinctrl-0 = <0x35>;
			device_type = "serial";
			port-number = <0x0>;
		};

		serial@ff010000 {
			u-boot,dm-pre-reloc;
			compatible = "cdns,uart-r1p12", "xlnx,xuartps";
			status = "okay";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x16 0x4>;
			reg = <0x0 0xff010000 0x0 0x1000>;
			clock-names = "uart_clk", "pclk";
			power-domains = <0x36>;
			clocks = <0x3 0x39 0x3 0x1f>;
			pinctrl-names = "default";
			pinctrl-0 = <0x37>;
			device_type = "serial";
			port-number = <0x1>;
		};

		usb0@ff9d0000 {
			#address-cells = <0x2>;
			#size-cells = <0x2>;
			status = "okay";
			compatible = "xlnx,zynqmp-dwc3";
			reg = <0x0 0xff9d0000 0x0 0x100>;
			clock-names = "bus_clk", "ref_clk";
			power-domains = <0x38>;
			ranges;
			nvmem-cells = <0x27>;
			nvmem-cell-names = "soc_revision";
			clocks = <0x3 0x20 0x3 0x22>;
			pinctrl-names = "default";
			pinctrl-0 = <0x39>;
			xlnx,usb-reset = <0x2faf080>;

			dwc3@fe200000 {
				compatible = "snps,dwc3";
				status = "okay";
				reg = <0x0 0xfe200000 0x0 0x40000>;
				interrupt-parent = <0x4>;
				interrupts = <0x0 0x41 0x4 0x0 0x45 0x4>;
				#stream-id-cells = <0x1>;
				iommus = <0xf 0x860>;
				snps,quirk-frame-length-adjustment = <0x20>;
				snps,refclk_fladj;
				snps,enable_guctl1_resume_quirk;
				snps,enable_guctl1_ipd_quirk;
				snps,xhci-stream-quirk;
				dr_mode = "host";
				snps,usb3_lpm_capable;
				phy-names = "usb3-phy";
				phys = <0x3a 0x4 0x0 0x2 0x18cba80>;
			};
		};

		usb1@ff9e0000 {
			#address-cells = <0x2>;
			#size-cells = <0x2>;
			status = "disabled";
			compatible = "xlnx,zynqmp-dwc3";
			reg = <0x0 0xff9e0000 0x0 0x100>;
			clock-names = "bus_clk", "ref_clk";
			power-domains = <0x3b>;
			ranges;
			nvmem-cells = <0x27>;
			nvmem-cell-names = "soc_revision";
			clocks = <0x3 0x21 0x3 0x22>;

			dwc3@fe300000 {
				compatible = "snps,dwc3";
				status = "disabled";
				reg = <0x0 0xfe300000 0x0 0x40000>;
				interrupt-parent = <0x4>;
				interrupts = <0x0 0x46 0x4 0x0 0x4a 0x4>;
				#stream-id-cells = <0x1>;
				iommus = <0xf 0x861>;
				snps,quirk-frame-length-adjustment = <0x20>;
				snps,refclk_fladj;
				snps,enable_guctl1_resume_quirk;
				snps,enable_guctl1_ipd_quirk;
				snps,xhci-stream-quirk;
			};
		};

		watchdog@fd4d0000 {
			compatible = "cdns,wdt-r1p2";
			status = "okay";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x71 0x1>;
			reg = <0x0 0xfd4d0000 0x0 0x1000>;
			timeout-sec = <0xa>;
			clocks = <0x3 0x4b>;
		};

		ams@ffa50000 {
			compatible = "xlnx,zynqmp-ams";
			status = "okay";
			interrupt-parent = <0x4>;
			interrupts = <0x0 0x38 0x4>;
			interrupt-names = "ams-irq";
			reg = <0x0 0xffa50000 0x0 0x800>;
			reg-names = "ams-base";
			#address-cells = <0x2>;
			#size-cells = <0x2>;
			#io-channel-cells = <0x1>;
			ranges;
			clocks = <0x3 0x46>;

			ams_ps@ffa50800 {
				compatible = "xlnx,zynqmp-ams-ps";
				status = "okay";
				reg = <0x0 0xffa50800 0x0 0x400>;
			};

			ams_pl@ffa50c00 {
				compatible = "xlnx,zynqmp-ams-pl";
				status = "okay";
				reg = <0x0 0xffa50c00 0x0 0x400>;
			};
		};

		dp@fd4a0000 {
			compatible = "xlnx,v-dp";
			status = "okay";
			reg = <0x0 0xfd4a0000 0x0 0x1000>;
			interrupts = <0x0 0x77 0x4>;
			interrupt-parent = <0x4>;
			clock-names = "aclk", "aud_clk";
			power-domains = <0x3c>;
			xlnx,dp-version = "v1.2";
			xlnx,max-lanes = <0x1>;
			xlnx,max-link-rate = <0x83d60>;
			xlnx,max-bpc = <0x10>;
			xlnx,enable-ycrcb;
			xlnx,colormetry = "rgb";
			xlnx,bpc = <0x8>;
			xlnx,audio-chan = <0x2>;
			xlnx,dp-sub = <0xb>;
			xlnx,max-pclock-frequency = <0x493e0>;
			clocks = <0x3d 0x3 0x11>;
			phy-names = "dp-phy0";
			phys = <0x3e 0x5 0x0 0x3 0x19bfcc0>;
			linux,phandle = <0xa>;
			phandle = <0xa>;
		};

		dp_sub@fd4aa000 {
			compatible = "xlnx,dp-sub";
			status = "okay";
			reg = <0x0 0xfd4aa000 0x0 0x1000 0x0 0xfd4ab000 0x0 0x1000 0x0 0xfd4ac000 0x0 0x1000>;
			reg-names = "blend", "av_buf", "aud";
			xlnx,output-fmt = "rgb";
			xlnx,vid-fmt = "yuyv";
			xlnx,gfx-fmt = "rgb565";
			power-domains = <0x3c>;
			linux,phandle = <0xb>;
			phandle = <0xb>;
		};

		dma@fd4c0000 {
			compatible = "xlnx,dpdma";
			status = "okay";
			reg = <0x0 0xfd4c0000 0x0 0x1000>;
			interrupts = <0x0 0x7a 0x4>;
			interrupt-parent = <0x4>;
			clock-names = "axi_clk";
			power-domains = <0x3c>;
			dma-channels = <0x6>;
			#dma-cells = <0x1>;
			clocks = <0x3 0x14>;
			linux,phandle = <0x9>;
			phandle = <0x9>;

			dma-video0channel {
				compatible = "xlnx,video0";
			};

			dma-video1channel {
				compatible = "xlnx,video1";
			};

			dma-video2channel {
				compatible = "xlnx,video2";
			};

			dma-graphicschannel {
				compatible = "xlnx,graphics";
			};

			dma-audio0channel {
				compatible = "xlnx,audio0";
			};

			dma-audio1channel {
				compatible = "xlnx,audio1";
			};
		};
	};

	fclk0 {
		status = "disabled";
		compatible = "xlnx,fclk";
		clocks = <0x3 0x47>;
	};

	fclk1 {
		status = "disabled";
		compatible = "xlnx,fclk";
		clocks = <0x3 0x48>;
	};

	fclk2 {
		status = "disabled";
		compatible = "xlnx,fclk";
		clocks = <0x3 0x49>;
	};

	fclk3 {
		status = "disabled";
		compatible = "xlnx,fclk";
		clocks = <0x3 0x4a>;
	};

	pss_ref_clk {
		u-boot,dm-pre-reloc;
		compatible = "fixed-clock";
		#clock-cells = <0x0>;
		clock-frequency = <0x1fc9350>;
		linux,phandle = <0x3f>;
		phandle = <0x3f>;
	};

	video_clk {
		u-boot,dm-pre-reloc;
		compatible = "fixed-clock";
		#clock-cells = <0x0>;
		clock-frequency = <0x19bfcc0>;
		linux,phandle = <0x40>;
		phandle = <0x40>;
	};

	pss_alt_ref_clk {
		u-boot,dm-pre-reloc;
		compatible = "fixed-clock";
		#clock-cells = <0x0>;
		clock-frequency = <0x0>;
		linux,phandle = <0x41>;
		phandle = <0x41>;
	};

	gt_crx_ref_clk {
		u-boot,dm-pre-reloc;
		compatible = "fixed-clock";
		#clock-cells = <0x0>;
		clock-frequency = <0x66ff300>;
		linux,phandle = <0x43>;
		phandle = <0x43>;
	};

	aux_ref_clk {
		u-boot,dm-pre-reloc;
		compatible = "fixed-clock";
		#clock-cells = <0x0>;
		clock-frequency = <0x19bfcc0>;
		linux,phandle = <0x42>;
		phandle = <0x42>;
	};

	clkc {
		u-boot,dm-pre-reloc;
		#clock-cells = <0x1>;
		compatible = "xlnx,zynqmp-clkc";
		clocks = <0x3f 0x40 0x41 0x42 0x43>;
		clock-names = "pss_ref_clk", "video_clk", "pss_alt_ref_clk", "aux_ref_clk", "gt_crx_ref_clk";
		clock-output-names = "iopll", "rpll", "apll", "dpll", "vpll", "iopll_to_fpd", "rpll_to_fpd", "apll_to_lpd", "dpll_to_lpd", "vpll_to_lpd", "acpu", "acpu_half", "dbf_fpd", "dbf_lpd", "dbg_trace", "dbg_tstmp", "dp_video_ref", "dp_audio_ref", "dp_stc_ref", "gdma_ref", "dpdma_ref", "ddr_ref", "sata_ref", "pcie_ref", "gpu_ref", "gpu_pp0_ref", "gpu_pp1_ref", "topsw_main", "topsw_lsbus", "gtgref0_ref", "lpd_switch", "lpd_lsbus", "usb0_bus_ref", "usb1_bus_ref", "usb3_dual_ref", "usb0", "usb1", "cpu_r5", "cpu_r5_core", "csu_spb", "csu_pll", "pcap", "iou_switch", "gem_tsu_ref", "gem_tsu", "gem0_ref", "gem1_ref", "gem2_ref", "gem3_ref", "gem0_tx", "gem1_tx", "gem2_tx", "gem3_tx", "qspi_ref", "sdio0_ref", "sdio1_ref", "uart0_ref", "uart1_ref", "spi0_ref", "spi1_ref", "nand_ref", "i2c0_ref", "i2c1_ref", "can0_ref", "can1_ref", "can0", "can1", "dll_ref", "adma_ref", "timestamp_ref", "ams_ref", "pl0", "pl1", "pl2", "pl3", "wdt";
		linux,phandle = <0x3>;
		phandle = <0x3>;
	};

	dp_aclk {
		compatible = "fixed-clock";
		#clock-cells = <0x0>;
		clock-frequency = <0x5f5e100>;
		clock-accuracy = <0x64>;
		linux,phandle = <0x3d>;
		phandle = <0x3d>;
	};

	gpio-keys {
		compatible = "gpio-keys";
		#address-cells = <0x1>;
		#size-cells = <0x0>;
		autorepeat;

		sw19 {
			label = "sw19";
			gpios = <0x1f 0x16 0x0>;
			linux,code = <0x6c>;
			gpio-key,wakeup;
			autorepeat;
		};
	};

	leds {
		compatible = "gpio-leds";

		heartbeat_led {
			label = "heartbeat";
			gpios = <0x1f 0x17 0x0>;
			linux,default-trigger = "heartbeat";
		};
	};

	amba_pl@0 {
		#address-cells = <0x2>;
		#size-cells = <0x2>;
		compatible = "simple-bus";
		ranges;

		PERIPHERAL@ff380000 {
			compatible = "xlnx,PERIPHERAL-1.0";
			reg = <0x0 0xff380000 0x0 0x80000>;
		};

		PERIPHERAL@ff990000 {
			compatible = "xlnx,PERIPHERAL-1.0";
			reg = <0x0 0xff990000 0x0 0x10000>;
		};
	};

	chosen {
		bootargs = "earlycon clk_ignore_unused root=/dev/mmcblk0p2 rw rootwait";
		stdout-path = "serial0:115200n8";
	};

	aliases {
		ethernet0 = "/amba/ethernet@ff0e0000";
		serial0 = "/amba/serial@ff000000";
		serial1 = "/amba/serial@ff010000";
		spi0 = "/amba/spi@ff0f0000";
	};

	memory {
		device_type = "memory";
		reg = <0x0 0x0 0x0 0x80000000 0x8 0x0 0x0 0x80000000>;
	};
};