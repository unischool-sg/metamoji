.class public interface abstract Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;
.super Ljava/lang/Object;
.source "LibraryPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/library/item/LibraryPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILibraryPageViewHandler"
.end annotation


# virtual methods
.method public abstract addBookmark(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deletePart(Lcom/metamoji/lb/LbConstants$LbPageType;Ljava/lang/String;)V
.end method

.method public abstract getCustomMenuView()Lcom/metamoji/ui/CustomMenuView;
.end method

.method public abstract getDlgActivity()Landroidx/fragment/app/FragmentActivity;
.end method

.method public abstract getTopLayer()Landroid/view/ViewGroup;
.end method

.method public abstract isPortrait()Z
.end method

.method public abstract lockScroll(Z)V
.end method

.method public abstract longPressPart(Lcom/metamoji/ui/library/item/LibraryPartView;)Z
.end method

.method public abstract onSelectedNoteTemplate(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract partInfo(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract selectPart(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showCCLicense()V
.end method

.method public abstract startArrangementModeAllPages()V
.end method

.method public abstract stopArrangementModeAllPages()V
.end method
