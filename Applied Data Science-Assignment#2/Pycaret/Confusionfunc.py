
from sklearn.metrics import confusion_matrix
import seaborn as sns
import matplotlib.pyplot as plt

def sns_cm(y, y_hat):
    
  
    
    Symp_prediction = y.unique().tolist()
    
    cm = confusion_matrix(y, y_hat, labels=Symp_prediction)
    
    
    plt.figure(figsize=(6,4))
    
    sns.heatmap(data=cm, annot=True,xticklabels=Symp_prediction,yticklabels=Symp_prediction,fmt='g',  
                cbar=False,linewidths=.6,cmap=plt.cm.Reds)
    
    plt.xticks(fontsize=10)
    plt.yticks(fontsize=10)
    plt.xlabel('Actual',fontsize=10)
    plt.ylabel('Predictedl',fontsize=10)
    plt.title('Disease Predictor/Confusion Matrix',fontsize=40)
    plt.show()
   