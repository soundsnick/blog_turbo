function translit(string){
    var stringLow = string.toLowerCase();
    stringLength = string.length;
    var newString = '';
    for(i = 0; i<stringLength; i++){
        var tempString = string[i];
        switch(stringLow[i]){
            case 'ё':
                tempString = 'e';
                break;
            case 'й':
                tempString = 'y';
                break;
            case 'ц':
                tempString = 'c';
                break;
            case 'у':
                tempString = 'u';
                break;
            case 'к':
                tempString = 'k';
                break;
            case 'е':
                tempString = 'e';
                break;
            case 'н':
                tempString = 'n';
                break;
            case 'г':
                tempString = 'g';
                break;
            case 'ш':
                tempString = 'sh';
                break;
            case 'щ':
                tempString = 'sh';
                break;
            case 'з':
                tempString = 'z';
                break;
            case 'х':
                tempString = 'h';
                break;
            case 'ф':
                tempString = 'ph';
                break;
            case 'ы':
                tempString = 'i';
                break;
            case 'в':
                tempString = 'v';
                break;
            case 'а':
                tempString = 'a';
                break;
            case 'п':
                tempString = 'p';
                break;
            case 'р':
                tempString = 'r';
                break;
            case 'о':
                tempString = 'o';
                break;
            case 'л':
                tempString = 'l';
                break;
            case 'д':
                tempString = 'd';
                break;
            case 'ж':
                tempString = 'zh';
                break;
            case 'э':
                tempString = 'e';
                break;
            case 'я':
                tempString = 'ya';
                break;
            case 'ч':
                tempString = 'ch';
                break;
            case 'с':
                tempString = 's';
                break;
            case 'м':
                tempString = 'm';
                break;
            case 'и':
                tempString = 'i';
                break;
            case 'т':
                tempString = 't';
                break;
            case 'ь':
                tempString = '';
                break;
            case 'б':
                tempString = 'b';
                break;
            case 'ю':
                tempString = 'yu';
                break;
            case ' ':
                tempString = '-';
                break;
        }
        newString += tempString;
    }
    return newString;
}