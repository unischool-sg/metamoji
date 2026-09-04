.class public interface abstract Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;
.super Ljava/lang/Object;
.source "LibraryStorePageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/library/item/LibraryStorePageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILibraryStorePageViewHandler"
.end annotation


# virtual methods
.method public abstract appendStorePage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract downloadProduct(Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;Lcom/metamoji/ui/library/item/LibraryStorePageView;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/lb/LbConstants$DownloadMode;",
            "Lcom/metamoji/ui/library/item/LibraryStorePageView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getStorePageDataArray()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract navigationStorePage(I)V
.end method

.method public abstract selectStorePart(Ljava/lang/String;)V
.end method
