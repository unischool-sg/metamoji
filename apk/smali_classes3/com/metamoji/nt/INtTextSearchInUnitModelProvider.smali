.class public interface abstract Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;
.super Ljava/lang/Object;
.source "INtTextSearchInUnitModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;
    }
.end annotation


# virtual methods
.method public abstract alwaysHightlightOnly()Z
.end method

.method public abstract hasHighlightText(Lcom/metamoji/df/model/IModel;)Z
.end method

.method public abstract highlightNotCanFocus(Lcom/metamoji/nt/NtUnitController;)Z
.end method

.method public abstract highlightText(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;)I
.end method

.method public abstract isEqualToPosition(Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/nt/NtTextSearchPosition;)Z
.end method

.method public abstract lastHighlightTextRange(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchPosition;
.end method

.method public abstract positionInRange(Lcom/metamoji/nt/NtTextSearchPosition;Z)Lcom/metamoji/nt/NtTextSearchPosition;
.end method

.method public abstract searchBeginPosition(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchPosition;
.end method

.method public abstract searchCurrentPosition(Lcom/metamoji/df/model/IModel;Z)Lcom/metamoji/nt/NtTextSearchPosition;
.end method

.method public abstract searchEndPosition(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchPosition;
.end method

.method public abstract searchNext(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;)Lcom/metamoji/nt/NtTextSearchPosition;
.end method

.method public abstract searchPrev(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;)Lcom/metamoji/nt/NtTextSearchPosition;
.end method

.method public abstract setHighlightTextRange(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;)V
.end method

.method public abstract setSelectedRange(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;)V
.end method

.method public abstract useModelTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
