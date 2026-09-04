.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ScMonitorList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PageViewHolder"
.end annotation


# instance fields
.field pageNumberLabel:Landroid/widget/TextView;

.field pageViewingCount:Landroid/widget/TextView;

.field pageViewingStudentCountLayout:Landroid/widget/LinearLayout;

.field schoolPageTypeIconImageView:Landroid/widget/ImageView;

.field studentIconImageView:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;

.field thumbnailImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;

    .line 276
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 277
    sget p1, Lcom/metamoji/noteanytime/R$id;->nt_pagelist_item_thumbnail:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->thumbnailImage:Landroid/widget/ImageView;

    .line 278
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_dropshadow:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 280
    sget p1, Lcom/metamoji/noteanytime/R$id;->nt_pagelist_item_label:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->pageNumberLabel:Landroid/widget/TextView;

    .line 282
    sget p1, Lcom/metamoji/noteanytime/R$id;->schoolPageTypeIcon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->schoolPageTypeIconImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    sget p1, Lcom/metamoji/noteanytime/R$id;->pageViewingStudentCountLayout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->pageViewingStudentCountLayout:Landroid/widget/LinearLayout;

    .line 287
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->school_user_teacher:I

    invoke-static {p1}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 288
    new-instance v0, Lcom/metamoji/cm/Size;

    invoke-direct {v0}, Lcom/metamoji/cm/Size;-><init>()V

    .line 289
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/metamoji/cm/Size;->width:I

    .line 290
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/metamoji/cm/Size;->height:I

    const/16 v1, 0xff

    .line 291
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/metamoji/ui/HoverCm;->createHighlightImageWithImage(Landroid/graphics/Bitmap;ILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 292
    sget v0, Lcom/metamoji/noteanytime/R$id;->studentPageViewingIcon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->studentIconImageView:Landroid/widget/ImageView;

    .line 293
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 295
    sget p1, Lcom/metamoji/noteanytime/R$id;->studentPageViewingCount:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->pageViewingCount:Landroid/widget/TextView;

    return-void
.end method
