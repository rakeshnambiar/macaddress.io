import logging
import requests
import os

from dotenv import load_dotenv


def configure():
    load_dotenv()
    logging.basicConfig(filename='logs/MacAddress.log', level=logging.INFO, format='%(asctime)s - %(message)s',
                        datefmt='%d-%b-%y %H:%M:%S')


def getMacAddress():
    try:
        configure()
        endpoint = f"https://api.macaddress.io/v1?apiKey={os.environ['API_KEY']}&output=json&search={os.environ['MAC_ADDRESS']}"
        response = requests.get(endpoint)
        logging.info('INFO: API status code: %s', str(response.status_code))
        assert response.status_code == 200
        json_data = response.json()
        assert len(json_data['vendorDetails']) > 0
        logging.info('INFO: API response: %s', json_data)
        company_name = json_data['vendorDetails']['companyName']
        if len(company_name) < 1:
            print('ERROR: Company name NOT found')
        else:
            return company_name
    except Exception:
        print('UnExpected error occurred. Program terminating')
        raise


if __name__ == '__main__':
    act_company_name = getMacAddress()
    print('Company Name: ', act_company_name)
