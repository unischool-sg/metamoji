.class public Lcom/metamoji/ui/cabinet/ShareViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareViewAdapter.java"

# interfaces
.implements Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;


# instance fields
.field private final lista:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mListHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/ShareViewFragment$Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/ShareViewFragment$Header;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewAdapter;->mListHeaders:Ljava/util/List;

    .line 28
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/ShareViewAdapter;->lista:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewAdapter;->lista:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCountForHeader(I)I
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewAdapter;->getNumHeaders()I

    move-result v0

    if-le v0, p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewAdapter;->mListHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/ShareViewFragment$Header;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment$Header;->getCount()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    return-object p2
.end method

.method public getItem(I)Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewAdapter;->getCount()I

    move-result v0

    if-le v0, p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewAdapter;->lista:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/ShareViewAdapter;->getItem(I)Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getNumHeaders()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewAdapter;->mListHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    return-object p2
.end method
