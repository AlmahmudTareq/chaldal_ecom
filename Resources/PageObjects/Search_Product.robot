*** Settings ***
Library  SeleniumLibrary
Library  String
Resource  Env.robot

*** Keywords ***

Search Product
    Input Text  ${search_bar}  ${searched_item}
    Sleep  2s

Verify Search Compilation
    Sleep  1s
    Wait Until Page Contains  ${SEARCH-RESULT_VERIFICATION_TEXT}
    Sleep  1s

Verify Product Count
    Sleep  1s
    Execute JavaScript    window.scrollTo(0,120)
    Sleep  1s
    ${xpath_search_count} =  get element count   ${products_returned_after_search-xpath}
    log to console  Total Search Results in the webpage are = ${xpath_search_count}

    Run Keyword If  ${xpath_search_count} >= ${expected_product_count}  Keyword_1  ELSE IF  ${xpath_search_count} < ${expected_product_count}  Keyword_2

Keyword_1
    log to console  Found more than 10 search results.

Keyword_2
    log to console  Found less than 10 search results.

#    IF  ${xpath_search_count}   <   ${expected_product_count}  log to console  There are more than${expected_product_count}in the search result
#    ...  ELSE  log to console  There are only${xpath_search_count}items in the search result  END
#        print('There are more than', ${expected_product_count}, 'items in the search result')

#    ELSE
#        log to console  There are only${xpath_search_count}items in the search result
#        #print('There are only', ${expected_product_count}, 'items in the search result')
#    END
#
#    #Xpath Should Match X Times  //div[contains(@class, "product")]  10
#    #Xpath Should Match X Times  ${xpath_search_count}  ${expected_product_count}
#    #Page Should Contain Element    //div[contains(@class, "product")]    8
#    #Page Should Contain Element    //div[contains(@class, "product")]  limit=5     #Means if the content is more than 5 then test is failed
#    Sleep  1s
#    #Get Matching Xpath Count


