.class Lcom/metamoji/ui/dialog/WebDavListView$FileInfoArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WebDavListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/WebDavListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileInfoArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mListFileInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/metamoji/ui/dialog/WebDavListView;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/WebDavListView;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 383
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView$FileInfoArrayAdapter;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    const/4 p1, -0x1

    .line 384
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 385
    iput-object p3, p0, Lcom/metamoji/ui/dialog/WebDavListView$FileInfoArrayAdapter;->mListFileInfo:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavListView$FileInfoArrayAdapter;->mListFileInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

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

    .line 379
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfoArrayAdapter;->getItem(I)Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .line 402
    const-string/jumbo p3, "text"

    const-string v0, "icon"

    if-nez p2, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfoArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 405
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 406
    const-string v2, "layout"

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 407
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x0

    .line 408
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 411
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 412
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0xa

    .line 413
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 414
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 415
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 418
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 419
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 420
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v9, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 423
    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 424
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 425
    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 427
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const p2, -0x333334

    .line 430
    invoke-virtual {v3, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 431
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v10, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object p2, v1

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavListView$FileInfoArrayAdapter;->mListFileInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

    .line 437
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 438
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 439
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->folder_blank:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 441
    :cond_1
    iget-boolean v1, p1, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->mParentDirectory:Z

    if-nez v1, :cond_2

    .line 442
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->folder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 445
    :cond_2
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->folder_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 448
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 449
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, -0x1000000

    .line 450
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
