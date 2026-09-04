.class public Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ScMonitorList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScMonitorViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/forSchool/monitoring/ScMonitorView;",
        ">;"
    }
.end annotation


# instance fields
.field private m_layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;


# direct methods
.method public constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Landroid/content/Context;)V
    .locals 0
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

    .line 486
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    const/4 p1, 0x0

    .line 487
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 488
    invoke-virtual {p0, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->updateContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 501
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    if-nez p2, :cond_0

    .line 508
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->dialog_school_monitor_view:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 510
    new-instance p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;

    invoke-direct {p3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;-><init>()V

    .line 512
    sget v0, Lcom/metamoji/noteanytime/R$id;->selected_icon_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->selectedIconView:Landroid/widget/ImageView;

    .line 514
    sget v0, Lcom/metamoji/noteanytime/R$id;->monitor_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->monitorView:Landroid/view/View;

    .line 516
    sget v0, Lcom/metamoji/noteanytime/R$id;->base_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->baseView:Landroid/view/View;

    .line 518
    sget v0, Lcom/metamoji/noteanytime/R$id;->border_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->borderView:Landroid/view/View;

    .line 519
    sget v0, Lcom/metamoji/noteanytime/R$id;->image_frame_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->imageFrameView:Landroid/view/View;

    .line 521
    sget v0, Lcom/metamoji/noteanytime/R$id;->image_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 523
    sget v0, Lcom/metamoji/noteanytime/R$id;->wait_image_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->waitImageView:Landroid/widget/ImageView;

    .line 525
    sget v0, Lcom/metamoji/noteanytime/R$id;->layer_name_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->layerNameView:Landroid/widget/TextView;

    .line 527
    sget v0, Lcom/metamoji/noteanytime/R$id;->do_it_num_btn:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->doItBtn:Landroid/widget/TextView;

    .line 529
    sget v0, Lcom/metamoji/noteanytime/R$id;->not_yet_num_btn:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->notYetBtn:Landroid/widget/TextView;

    .line 531
    sget v0, Lcom/metamoji/noteanytime/R$id;->help_num_btn:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->helpBtn:Landroid/widget/TextView;

    .line 533
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 535
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;

    .line 538
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 539
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v1

    if-le v1, p1, :cond_b

    if-gez p1, :cond_1

    goto/16 :goto_9

    .line 542
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 544
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_itemWidth(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_zoom(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 545
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_itemHeight(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v6}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_zoom(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const/high16 v6, 0x40800000    # 4.0f

    .line 546
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    float-to-double v6, v6

    sub-double v6, v2, v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v8, v2

    .line 548
    invoke-virtual {p2, v8}, Landroid/view/View;->setMinimumWidth(I)V

    double-to-int v8, v4

    .line 549
    invoke-virtual {p2, v8}, Landroid/view/View;->setMinimumHeight(I)V

    .line 552
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 553
    new-instance v9, Landroid/view/GestureDetector;

    new-instance v10, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;

    iget-object v11, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-direct {v10, v11, v8}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V

    invoke-direct {v9, v0, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v9, v8, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->gestureDetector:Landroid/view/GestureDetector;

    .line 556
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_isPhone(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Z

    move-result v0

    invoke-static {v2, v3, v4, v5, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getResolution(DDZ)F

    move-result v0

    .line 557
    iput v0, v8, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->resolution:F

    .line 560
    iget-boolean v0, v8, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isDragging:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 561
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 563
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 567
    :goto_1
    iget-boolean v0, v8, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isSelected:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/metamoji/noteanytime/R$color;->school_monitor_select_bgColor:I

    goto :goto_2

    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$color;->transparent:I

    .line 568
    :goto_2
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->monitorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 571
    iget-boolean v0, v8, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isReceivingData:Z

    if-eqz v0, :cond_4

    .line 572
    iget-object v0, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->borderView:Landroid/view/View;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->school_monitoring_border:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 574
    :cond_4
    iget-object v0, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->borderView:Landroid/view/View;

    sget v2, Lcom/metamoji/noteanytime/R$color;->transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_3
    const/4 v0, 0x0

    .line 578
    invoke-virtual {v8, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->updateBgColor(Z)V

    .line 579
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->baseView:Landroid/view/View;

    iget v3, v8, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->baseViewBgColor:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 580
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->baseView:Landroid/view/View;

    iget v3, v8, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->baseViewAlpha:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 583
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->layerNameView:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getLayerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    invoke-virtual {v8}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isVisibleNameLabel()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_5

    .line 586
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->layerNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 588
    :cond_5
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->layerNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 592
    :goto_4
    sget v2, Lcom/metamoji/noteanytime/R$id;->status_panel:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 593
    invoke-virtual {v8}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isGroup()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_6

    .line 594
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 596
    :cond_6
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 600
    :goto_5
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {v8}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isGroup()Z

    move-result v4

    invoke-static {v2, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mgetMonitorViewImageSize(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Z)Lcom/metamoji/cm/Size;

    move-result-object v2

    .line 601
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v9, v2, Lcom/metamoji/cm/Size;->width:I

    iget v10, v2, Lcom/metamoji/cm/Size;->height:I

    invoke-direct {v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x11

    .line 602
    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 603
    iget-object v10, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->imageFrameView:Landroid/view/View;

    invoke-virtual {v10, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    iget-object v4, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->imageView:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 605
    iget-object v4, v8, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v4, :cond_9

    .line 606
    iget-object v4, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorThumbnailBase(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 607
    iget-object v4, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->waitImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    iget v4, v2, Lcom/metamoji/cm/Size;->width:I

    div-int/lit8 v4, v4, 0x2

    const/16 v5, 0x30

    if-ge v4, v5, :cond_7

    .line 610
    iget v2, v2, Lcom/metamoji/cm/Size;->width:I

    div-int/lit8 v5, v2, 0x2

    goto :goto_6

    .line 611
    :cond_7
    iget v4, v2, Lcom/metamoji/cm/Size;->height:I

    div-int/lit8 v4, v4, 0x2

    if-ge v4, v5, :cond_8

    .line 612
    iget v2, v2, Lcom/metamoji/cm/Size;->height:I

    div-int/lit8 v5, v2, 0x2

    .line 614
    :cond_8
    :goto_6
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 615
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 616
    iget-object v4, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->waitImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->waitImageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 618
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->waitImageView:Landroid/widget/ImageView;

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->cabinet_sync_wait:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 620
    :cond_9
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v4, v8, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 621
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->waitImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 625
    :goto_7
    iget-boolean v2, v8, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isSelected:Z

    if-eqz v2, :cond_a

    .line 626
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->selectedIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 628
    :cond_a
    iget-object v0, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->selectedIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 631
    :goto_8
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_MonitorInfoDlg_UserNum:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    .line 632
    const-string v2, "%ld"

    const-string v3, "%d"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 633
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    double-to-int v2, v6

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 636
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->doItBtn:Landroid/widget/TextView;

    iget-object v3, v8, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->doItBtnText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->doItBtn:Landroid/widget/TextView;

    sget v3, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_DOIT:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 638
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->doItBtn:Landroid/widget/TextView;

    new-instance v3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$1;

    invoke-direct {v3, p0, v8, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$1;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;Lcom/metamoji/forSchool/monitoring/ScMonitorView;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->doItBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->notYetBtn:Landroid/widget/TextView;

    iget-object v3, v8, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->notYetBtnText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->notYetBtn:Landroid/widget/TextView;

    new-instance v3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$2;

    invoke-direct {v3, p0, v8, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$2;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;Lcom/metamoji/forSchool/monitoring/ScMonitorView;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->notYetBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->helpBtn:Landroid/widget/TextView;

    iget-object v3, v8, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->helpBtnText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    iget-object v2, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->helpBtn:Landroid/widget/TextView;

    sget v3, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_HELP:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 659
    iget-object v1, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->helpBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$3;

    invoke-direct {v2, p0, v8, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$3;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;Lcom/metamoji/forSchool/monitoring/ScMonitorView;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    iget-object p1, p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;->helpBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    new-instance p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$4;

    invoke-direct {p1, p0, v8}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$4;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_b
    :goto_9
    return-object p2
.end method

.method public updateContext(Landroid/content/Context;)V
    .locals 1

    .line 496
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method
