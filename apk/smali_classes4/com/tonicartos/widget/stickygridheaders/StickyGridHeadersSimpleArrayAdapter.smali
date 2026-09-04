.class public Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "StickyGridHeadersSimpleArrayAdapter.java"

# interfaces
.implements Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter$HeaderViewHolder;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "StickyGridHeadersSimpleArrayAdapter"


# instance fields
.field private mHeaderResId:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemResId:I

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;II)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter;->init(Landroid/content/Context;Ljava/util/List;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TT;II)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter;->init(Landroid/content/Context;Ljava/util/List;II)V

    return-void
.end method

.method private init(Landroid/content/Context;Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;II)V"
        }
    .end annotation

    .line 142
    iput-object p2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter;->mItems:Ljava/util/List;

    .line 143
    iput p3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter;->mHeaderResId:I

    .line 144
    iput p4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter;->mItemResId:I

    .line 145
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderId(I)J
    .locals 2

    .line 70
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 72
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 86
    iget-object p2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter;->mHeaderResId:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 87
    new-instance p3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter$HeaderViewHolder;

    invoke-direct {p3, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter$HeaderViewHolder;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter;)V

    const v1, 0x1020014

    .line 88
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter$HeaderViewHolder;->textView:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter$HeaderViewHolder;

    .line 94
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 96
    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 97
    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 103
    :goto_1
    iget-object p3, p3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter$HeaderViewHolder;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 123
    iget-object p2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter;->mItemResId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 124
    new-instance p3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter$ViewHolder;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter;)V

    const v0, 0x1020014

    .line 125
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 126
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter$ViewHolder;

    .line 131
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 132
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 133
    iget-object p3, p3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    .line 135
    :cond_1
    iget-object p3, p3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleArrayAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
