public class name {
    // void yazıyor çünkü return yapması gerekiyor
    // bir değer döndürüyorsa void metodunuzun sonunda return yazmıyorsa, return geçmiyorsa void yazacak, return varsa a değerini döndürüyorsa mesela, return ettiği değere bakılır, o zaman string, intiger yazılır. return ettiği değer yazılıyor. burada return yok o sebeple void yazıyoruz. 
    public void names() {
        string firstName = 'Ali';
        string lastName = 'Veli';
        string fullName = firstName + ' ' + lastName;
        system.debug(fullName);
    }
}
