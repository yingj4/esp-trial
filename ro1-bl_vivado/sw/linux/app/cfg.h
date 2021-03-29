// Copyright (c) 2011-2021 Columbia University, System Level Design Group
// SPDX-License-Identifier: Apache-2.0
#ifndef __ESP_CFG_000_H__
#define __ESP_CFG_000_H__

#include "libesp.h"
#include "ro1-bl_vivado.h"

typedef int32_t token_t;

/* <<--params-def-->> */
#define NSAMPLE 1024

/* <<--params-->> */
const int32_t nSample = NSAMPLE;

#define NACC 1

struct ro1-bl_vivado_access ro1-bl_cfg_000[] = {
	{
		/* <<--descriptor-->> */
		.nSample = NSAMPLE,
		.src_offset = 0,
		.dst_offset = 0,
		.esp.coherence = ACC_COH_NONE,
		.esp.p2p_store = 0,
		.esp.p2p_nsrcs = 0,
		.esp.p2p_srcs = {"", "", "", ""},
	}
};

esp_thread_info_t cfg_000[] = {
	{
		.run = true,
		.devname = "ro1-bl_vivado.0",
		.ioctl_req = RO1-BL_VIVADO_IOC_ACCESS,
		.esp_desc = &(ro1-bl_cfg_000[0].esp),
	}
};

#endif /* __ESP_CFG_000_H__ */
