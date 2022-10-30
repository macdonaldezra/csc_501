import pandas as pd
import matplotlib.pyplot as plt

from wordcloud import WordCloud


def get_wordcloud(df: pd.DataFrame, column: str = "clean_name") -> WordCloud:
    """
    Compute and return a wordcloud for a given set of strings.
    """
    wordcloud = WordCloud(
        width=800, 
        height=800, 
        background_color="white", 
        min_font_size=10, 
        collocation_threshold=2
    ).generate_from_frequencies(df[column].str.split(expand=True).stack().value_counts().to_dict())  
    
    return wordcloud

def compute_wordclouds(df: pd.DataFrame, column: str = "emotion") -> None:
    """
    Generate wordclouds for each of the emotions expressed in the dataframe's emotion column.
    """
    fig, axis = plt.subplots(3, 2, figsize=(10, 12))
    emotions = df[column].value_counts().keys().tolist()

    index = 0
    for i in range(3):
        for j in range(2):
            wc = get_wordcloud(df.loc[df[column] == emotions[index]])
            axis[i, j].imshow(wc)
            axis[i, j].set_title(str(emotions[index]).title(), fontsize=20)
            axis[i, j].axis("off")
            index += 1

    plt.tight_layout(pad=1)
    plt.show()