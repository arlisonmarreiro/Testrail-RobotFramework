*** Settings ***
Documentation   Gerenciador de dependências da nossa automação

Library  SeleniumLibrary
Library  FakerLibrary/
Library  DebugLibrary

##  Keywords    ##

Resource    ../auto/keywords/kws_login.robot
Resource    ../auto/keywords/kws_carrinho.robot

##  Pages   ##

Resource    ../auto/pages/home_page.robot
Resource    ../auto/pages/login_page.robot
Resource    ../auto/pages/cart_page.robot

##  Hooks   ##

Resource    hooks.robot
