#include <iostream>
#include <time.h>
#include <map>

#define mwidth 100
#define maxstring 208
#define maxColorValue 255

std::string stringBuffer[mwidth] = {};
char charSet[90] = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p',
                    'q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F',
                    'G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V',
                    'W','X','Y','Z','!','@','#','$','%','^','&','*','(',')','-','_',
                    '+','=','{','[','}',']',':',';','<',',','>','.','~','`','?','/'};
char lookuptable[maxColorValue];
int imageMatrix[3][mwidth][mwidth];
int col[100];

std::map<char,int> charmap;


void mapCharToValue()
{
    bool conv = true;
    int count = 0;
    int tcount = 0;
    int setLoc = 0;
    int lktLoc = 0;
    while(conv)
    {
        if(count == 4)
        {
            ++setLoc;
            count = 0;
        }
        lookuptable[lktLoc] = charSet[setLoc];
        ++lktLoc;
        ++count;
        if(tcount == maxColorValue)
            conv = false;
        ++tcount;
    }

	for (int i = 0; i < 256; ++i)
	{
		std::cout << i << " " << lookuptable[i] << std::endl;
		charmap.insert(std::pair<char, int>(lookuptable[i], i));
		i += 3;
	}
}

void stringsToMatrix(std::string msg)
{
	char tempchar = ' ';
	char pasttempchar = ' ';
	std::string tempstring = "";
	int row = 0;
	int spec = 0;
	int value = 0;
	for (int i = 0; i < msg.length(); ++i)
	{
		if(row == 8 && i == 50){
			std::cout << "WOW" << std::endl;
		}
		tempstring = "";
		tempchar = msg[i];
		if (tempchar == '|')
		{
			i++;
			tempchar = msg[i];
			while(tempchar != '|')
			{
				tempstring += tempchar;
				i++;
				tempchar = msg[i];
			}
			i++;
			std::string::size_type sz;
			std::cout << tempstring << std::endl;
			row = std::atoi(tempstring.c_str());

		}
		tempchar = msg[i];
		if(tempchar < '0' || tempchar > '9')
		{
			imageMatrix[spec][col[row]][row] = charmap.find(tempchar)->second;
			col[row]++;
			pasttempchar = tempchar;
		}
		else
		{	i++;
			tempstring = "";
			tempstring += tempchar;
			tempchar = msg[i];
			while(tempchar >= '0' && tempchar <= '9' )
			{
				tempstring += tempchar;
				i++;
			}
			//std::cout << tempstring << std::endl;
			value = std::atoi(tempstring.c_str());
			for (int j = 0; j < value; ++j)
			{
				//std::cout << charmap.find(pasttempchar)->second << std::endl;
				imageMatrix[spec][col[row]][row] = charmap.find(pasttempchar)->second;
				col[row]++;
			}
		}

	}

}

void matrixToString (int matrix[3][mwidth][mwidth])
{
    int cCount = 0;
	int cmpCount = 0;
	char tempchar = ' ';
	char pasttempchar = ' ';
	std::string msg = "";

    //Matrix to string conversion
    for (int i = 0; i < 3; ++i)
    {
		std::cout << msg << std::endl;
		msg = "";
		cCount = 0;
		cmpCount = 0;
		tempchar = ' ';
		pasttempchar = ' ';
        for (int j = 0; j < mwidth; ++j)
        {
			if(cmpCount > 1) {
				msg += std::to_string(cmpCount);
				++cCount;
				cmpCount = 0;
			}
			msg += '|';
			msg += std::to_string(j);
			msg += '|';
			pasttempchar = ' ';
			for (int k = 0; k < mwidth; ++k)
			{

				tempchar = lookuptable[matrix[i][k][j]];
				if(cCount <= 210)
				{
					if (pasttempchar == tempchar)
					{
						++cmpCount;
					}
					else
					{
						pasttempchar = tempchar;
						if(cmpCount > 1)
						{
							msg += std::to_string(cmpCount);
							msg += tempchar;
							++cCount;
							cmpCount = 0;
						}
						else
						{
							msg += tempchar;
							++cCount;
						}

					}
				}
				else
				{
					//Push out
					std::cout << "--------->" << msg << std::endl;
					stringsToMatrix(msg);
					if(cmpCount > 1) {
						msg += std::to_string(cmpCount);
						++cCount;
						cmpCount = 0;
					}
					msg = "";
					msg += '|';
					msg += std::to_string(j);
					msg += '|';
					cCount = 0;
					cmpCount = 0;
					if (pasttempchar == tempchar)
					{
						++cmpCount;
						++cCount;
					}
					else
					{
						pasttempchar = tempchar;
						if(cmpCount > 1)
						{
							msg += std::to_string(cmpCount);
							msg += tempchar;
						}
						else
						{
							msg += tempchar;
							++cCount;
						}

					}
				}
			}
        }
    }
	if(cmpCount > 1)
		msg += std::to_string(cmpCount);
	std::cout << "--------->" << msg << std::endl;
	std::cout << "END----------------------END" << std::endl;
	//stringsToMatrix(msg);
}


// |1|aabbcccdeee
// |.2|a2b2c3de3



int main()
{
	mapCharToValue();
	int testarray[3][mwidth][mwidth];
	for (int i = 0; i < 3; ++i) {
		for (int j = 0; j < mwidth; ++j) {
			for (int k = 0; k < mwidth; ++k) {
				testarray[i][k][j] = k*2;
			}
		}
	}
	matrixToString(testarray);
	std::cout << "INTERMISSION" << std::endl;
	for (int i = 0; i < 3; ++i) {
		for (int j = 0; j < mwidth; ++j)
		{
			std::cout << std::endl;
			for (int k = 0; k < mwidth; ++k) {
				std::cout << imageMatrix[i][k][j] << std::endl;
			}
		}
	}
    return 0;
}