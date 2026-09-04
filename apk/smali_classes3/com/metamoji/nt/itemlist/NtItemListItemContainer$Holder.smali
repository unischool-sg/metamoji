.class public Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;
.super Ljava/lang/Object;
.source "NtItemListItemContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/itemlist/NtItemListItemContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public jump:Landroid/widget/ImageView;

.field public label:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

.field public thumbnail:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;Lcom/metamoji/nt/itemlist/NtItemListItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->this$0:Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget p1, Lcom/metamoji/noteanytime/R$id;->nt_pagelist_item_thumbnail:I

    invoke-virtual {p2, p1}, Lcom/metamoji/nt/itemlist/NtItemListItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->thumbnail:Landroid/widget/ImageView;

    .line 36
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_dropshadow:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 37
    sget p1, Lcom/metamoji/noteanytime/R$id;->nt_pagelist_item_label:I

    invoke-virtual {p2, p1}, Lcom/metamoji/nt/itemlist/NtItemListItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->label:Landroid/widget/TextView;

    .line 38
    sget p1, Lcom/metamoji/noteanytime/R$id;->nt_itemlist_item_jump:I

    invoke-virtual {p2, p1}, Lcom/metamoji/nt/itemlist/NtItemListItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->jump:Landroid/widget/ImageView;

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->item:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method destroy()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->thumbnail:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 54
    :cond_1
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->thumbnail:Landroid/widget/ImageView;

    .line 57
    :cond_2
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->label:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->jump:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->jump:Landroid/widget/ImageView;

    .line 64
    :cond_3
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->item:Ljava/lang/Object;

    return-void
.end method
