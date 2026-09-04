.class public Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;
.super Ljava/lang/Object;
.source "LibraryPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/library/item/LibraryPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemInfo"
.end annotation


# instance fields
.field categoryNo:I

.field dlCategoryNo:I

.field dlIndex:I

.field index:I

.field partView:Lcom/metamoji/ui/library/item/LibraryPartView;

.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryPageView;


# direct methods
.method protected constructor <init>(Lcom/metamoji/ui/library/item/LibraryPageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 69
    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->categoryNo:I

    .line 70
    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->index:I

    .line 71
    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->dlCategoryNo:I

    .line 72
    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->dlIndex:I

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    return-void
.end method
