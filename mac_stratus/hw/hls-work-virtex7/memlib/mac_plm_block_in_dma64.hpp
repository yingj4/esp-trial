//
// Created with the ESP Memory Generator
//
// Copyright (c) 2011-2021 Columbia University, System Level Design Group
// SPDX-License-Identifier: Apache-2.0
//
// @author Paolo Mantovani <paolo@cs.columbia.edu>
//

#ifndef __MAC_PLM_BLOCK_IN_DMA64_HPP__
#define __MAC_PLM_BLOCK_IN_DMA64_HPP__
#include "mac_plm_block_in_dma64.h"
template<class T, unsigned S, typename ioConfig=CYN::PIN>
class mac_plm_block_in_dma64_t : public sc_module
{

  HLS_INLINE_MODULE;
public:
  mac_plm_block_in_dma64_t(const sc_module_name& name = sc_gen_unique_name("mac_plm_block_in_dma64"))
  : sc_module(name)
  , clk("clk")
  , port1("port1")
  , port2("port2")
  , port3("port3")
  {
    m_m0.clk_rst(clk);
    port1(m_m0.if1);
    port2(m_m0.if2);
    port3(m_m0.if3);
  }

  sc_in<bool> clk;

  mac_plm_block_in_dma64::wrapper<ioConfig> m_m0;

  typedef mac_plm_block_in_dma64::port_1<ioConfig, T[1][S]> Port1_t;
  typedef mac_plm_block_in_dma64::port_2<ioConfig, T[1][S]> Port2_t;
  typedef mac_plm_block_in_dma64::port_3<ioConfig, T[1][S]> Port3_t;

  Port1_t port1;
  Port2_t port2;
  Port3_t port3;
};
#endif
