// Copyright (c) 2011-2021 Columbia University, System Level Design Group
// SPDX-License-Identifier: Apache-2.0
#include <linux/of_device.h>
#include <linux/mm.h>

#include <asm/io.h>

#include <esp_accelerator.h>
#include <esp.h>

#include "ro1-bl_vivado.h"

#define DRV_NAME	"ro1-bl_vivado"

/* <<--regs-->> */
#define RO1-BL_NSAMPLE_REG 0x40

struct ro1-bl_vivado_device {
	struct esp_device esp;
};

static struct esp_driver ro1-bl_driver;

static struct of_device_id ro1-bl_device_ids[] = {
	{
		.name = "SLD_RO1-BL_VIVADO",
	},
	{
		.name = "eb_040",
	},
	{
		.compatible = "sld,ro1-bl_vivado",
	},
	{ },
};

static int ro1-bl_devs;

static inline struct ro1-bl_vivado_device *to_ro1-bl(struct esp_device *esp)
{
	return container_of(esp, struct ro1-bl_vivado_device, esp);
}

static void ro1-bl_prep_xfer(struct esp_device *esp, void *arg)
{
	struct ro1-bl_vivado_access *a = arg;

	/* <<--regs-config-->> */
	iowrite32be(a->nSample, esp->iomem + RO1-BL_NSAMPLE_REG);
	iowrite32be(a->src_offset, esp->iomem + SRC_OFFSET_REG);
	iowrite32be(a->dst_offset, esp->iomem + DST_OFFSET_REG);

}

static bool ro1-bl_xfer_input_ok(struct esp_device *esp, void *arg)
{
	/* struct ro1-bl_vivado_device *ro1-bl = to_ro1-bl(esp); */
	/* struct ro1-bl_vivado_access *a = arg; */

	return true;
}

static int ro1-bl_probe(struct platform_device *pdev)
{
	struct ro1-bl_vivado_device *ro1-bl;
	struct esp_device *esp;
	int rc;

	ro1-bl = kzalloc(sizeof(*ro1-bl), GFP_KERNEL);
	if (ro1-bl == NULL)
		return -ENOMEM;
	esp = &ro1-bl->esp;
	esp->module = THIS_MODULE;
	esp->number = ro1-bl_devs;
	esp->driver = &ro1-bl_driver;
	rc = esp_device_register(esp, pdev);
	if (rc)
		goto err;

	ro1-bl_devs++;
	return 0;
 err:
	kfree(ro1-bl);
	return rc;
}

static int __exit ro1-bl_remove(struct platform_device *pdev)
{
	struct esp_device *esp = platform_get_drvdata(pdev);
	struct ro1-bl_vivado_device *ro1-bl = to_ro1-bl(esp);

	esp_device_unregister(esp);
	kfree(ro1-bl);
	return 0;
}

static struct esp_driver ro1-bl_driver = {
	.plat = {
		.probe		= ro1-bl_probe,
		.remove		= ro1-bl_remove,
		.driver		= {
			.name = DRV_NAME,
			.owner = THIS_MODULE,
			.of_match_table = ro1-bl_device_ids,
		},
	},
	.xfer_input_ok	= ro1-bl_xfer_input_ok,
	.prep_xfer	= ro1-bl_prep_xfer,
	.ioctl_cm	= RO1-BL_VIVADO_IOC_ACCESS,
	.arg_size	= sizeof(struct ro1-bl_vivado_access),
};

static int __init ro1-bl_init(void)
{
	return esp_driver_register(&ro1-bl_driver);
}

static void __exit ro1-bl_exit(void)
{
	esp_driver_unregister(&ro1-bl_driver);
}

module_init(ro1-bl_init)
module_exit(ro1-bl_exit)

MODULE_DEVICE_TABLE(of, ro1-bl_device_ids);

MODULE_AUTHOR("Emilio G. Cota <cota@braap.org>");
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("ro1-bl_vivado driver");
