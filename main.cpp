#include <iostream>
#include "ImageConverter.h"

int main()
{
	ImageConverter img;
	img.mapCharToValue();
	int testarray[3][mwidth][mwidth];
	for (int i = 0; i < 3; ++i) {
		for (int j = 0; j < mwidth; ++j) {
			for (int k = 0; k < mwidth; ++k) {
				testarray[i][k][j] = k;
			}
		}
	}
	img.imageToString(testarray);

	for (int l = 0; l < img.size_stringBuffer; ++l)
	{
		std::cout << img.stringBuffer[l] << std::endl;
		img.stringsToImage(img.stringBuffer[l]);
	}


	std::cout << "INTERMISSION" << std::endl;
	for (int i = 0; i < 3; ++i) {
		std::cout << "\n---------------------------------------------------\n" <<std::endl;
		for (int j = 0; j < mwidth; ++j)
		{
			std::cout << std::endl;
			for (int k = 0; k < mwidth; ++k) {
				std::cout << img.imageMatrix[i][k][j] << " ";
			}
		}
	}

    return 0;
}