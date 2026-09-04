.class Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;
.super Landroid/widget/LinearLayout;
.source "UiColorSelectionView2.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiColorSelectionView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiColorSetGroupsContainerView"
.end annotation


# instance fields
.field mColorSetGroupViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;",
            ">;"
        }
    .end annotation
.end field

.field private mColorSetGroups:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

.field mColorWheelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;",
            ">;"
        }
    .end annotation
.end field

.field private mGradationColorSelected:Z

.field private mOuterSelectEventListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;

.field mPageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectColor:I

.field private mSelectGradationColor:I

.field private mSelectGroup:Ljava/lang/String;

.field private mSelectIndex:I

.field private mSelectSet:Ljava/lang/String;

.field final synthetic this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;


# direct methods
.method static bridge synthetic -$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorSetGroups:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGradationColorSelected(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mGradationColorSelected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectColor(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectGradationColor(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectGradationColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectGroup(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectGroup:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectIndex(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectSet(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectSet:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSelectColor(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectColor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSelectGradationColor(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectGradationColor:I

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/common/UiColorSelectionView2;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2393
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 2394
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2375
    const-string p1, ""

    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectGroup:Ljava/lang/String;

    .line 2376
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectSet:Ljava/lang/String;

    const/4 p1, -0x1

    .line 2377
    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectIndex:I

    .line 2378
    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectColor:I

    const/4 p2, 0x0

    .line 2379
    iput-boolean p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mGradationColorSelected:Z

    .line 2380
    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectGradationColor:I

    .line 2395
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method adjustChildSize(II)V
    .locals 4

    .line 2469
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2470
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, p2, :cond_0

    .line 2471
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2472
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2476
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mPageViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 2477
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mPageViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2478
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2479
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, p1, :cond_1

    .line 2480
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2481
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public createContents(Lcom/metamoji/ui/common/UiColorSelectionView2;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;Landroid/content/Context;)V
    .locals 8

    const/4 v0, -0x1

    .line 2414
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->setBackgroundColor(I)V

    .line 2415
    iput-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorSetGroups:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    .line 2416
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mPageViews:Ljava/util/ArrayList;

    .line 2417
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorSetGroupViews:Ljava/util/ArrayList;

    .line 2418
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorWheelViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 2420
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_6

    .line 2421
    aget-object v3, p2, v1

    .line 2425
    iget-object v4, v3, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v5}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmGroupIdColorPaletteStandard(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x2

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v6}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmGroupIdColorPaletteGradation(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;

    move-result-object v6

    .line 2426
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v6}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmGroupIdColorPaletteMarker(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;

    move-result-object v6

    .line 2427
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v6}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmGroupIdColorPaletteChangeStyle(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;

    move-result-object v6

    .line 2428
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 2440
    :cond_0
    iget-object v4, v3, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v6}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmGroupIdColorWheelStandard(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v6}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmGroupIdColorWheelGradation(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;

    move-result-object v6

    .line 2441
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    move-object v6, v4

    goto :goto_3

    .line 2442
    :cond_2
    :goto_1
    new-instance v4, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    iget-object v6, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-direct {v4, v6, p3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;-><init>(Lcom/metamoji/ui/common/UiColorSelectionView2;Landroid/content/Context;)V

    .line 2443
    invoke-virtual {v4, p1, v3, p0, p3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->createContents(Lcom/metamoji/ui/common/UiColorSelectionView2;Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;Landroid/content/Context;)V

    .line 2444
    iget-object v6, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorWheelViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2447
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_3

    .line 2429
    :cond_3
    :goto_2
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2431
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2433
    new-instance v6, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;

    iget-object v7, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-direct {v6, v7, p3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;-><init>(Lcom/metamoji/ui/common/UiColorSelectionView2;Landroid/content/Context;)V

    .line 2434
    invoke-virtual {v6, p1, v3, p0, p3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->createContents(Lcom/metamoji/ui/common/UiColorSelectionView2;Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;Landroid/content/Context;)V

    .line 2435
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2436
    iget-object v7, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorSetGroupViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2438
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_3
    if-nez v4, :cond_4

    goto :goto_4

    .line 2454
    :cond_4
    iget-boolean v3, v3, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    if-eqz v3, :cond_5

    const/16 v3, 0x8

    .line 2455
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2457
    :cond_5
    iget-object v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mPageViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2458
    invoke-virtual {p0, v4, v6}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public ensureVisible(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 2673
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorSetGroupViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2674
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorSetGroupViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;

    .line 2675
    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->getColorSetGroup()Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v3

    .line 2676
    iget-object v3, v3, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2677
    invoke-virtual {v2, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->ensureVisible(Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getGroupIndex(Ljava/lang/String;)I
    .locals 2

    .line 2658
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorSetGroups:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2659
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorSetGroups:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onColorSelected(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 2626
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mGradationColorSelected:Z

    .line 2627
    iput p4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectColor:I

    const/4 v0, -0x1

    .line 2628
    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectGradationColor:I

    .line 2629
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->selectItem(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2630
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mOuterSelectEventListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;

    if-eqz v0, :cond_0

    .line 2631
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;->onColorSelected(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public onGradationColorSelected(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7

    const/4 v0, 0x1

    .line 2641
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mGradationColorSelected:Z

    .line 2642
    iput p4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectColor:I

    .line 2643
    iput p5, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectGradationColor:I

    .line 2644
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->selectItem(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2645
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mOuterSelectEventListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 2646
    invoke-interface/range {v1 .. v6}, Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;->onGradationColorSelected(Ljava/lang/String;Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public selectItem(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x1

    .line 2495
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->selectItem(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p1

    return p1
.end method

.method public selectItem(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p3, :cond_7

    if-eqz p2, :cond_3

    const/4 v2, 0x4

    .line 2502
    invoke-static {v2}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x6

    .line 2503
    invoke-static {v2}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2505
    :cond_0
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorSetGroupViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_7

    .line 2506
    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorSetGroupViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;

    .line 2507
    invoke-virtual {v4}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->getColorSetGroup()Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v5

    .line 2508
    iget-boolean v6, v5, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    if-eqz v6, :cond_1

    goto :goto_1

    .line 2511
    :cond_1
    iget-object v5, v5, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2512
    invoke-virtual {v4, p2, p3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->isGradation(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mGradationColorSelected:Z

    goto :goto_3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2518
    :cond_3
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmGroupIdColorPaletteGradation(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmSetIdGradation_ColorPaletteGradation(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmGroupIdColorWheelGradation(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;

    move-result-object v2

    .line 2519
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mGradationColorSelected:Z

    .line 2523
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmGroupIdColorPaletteStandard(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmGroupIdColorPaletteGradation(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;

    move-result-object v2

    .line 2524
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmGroupIdColorPaletteMarker(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;

    move-result-object v2

    .line 2525
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmGroupIdColorPaletteChangeStyle(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;

    move-result-object v2

    .line 2526
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2527
    :cond_8
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectGroup:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectSet:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectIndex:I

    if-ne v2, p3, :cond_9

    xor-int/lit8 p1, p4, 0x1

    return p1

    .line 2539
    :cond_9
    iget-object p4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectGroup:Ljava/lang/String;

    .line 2540
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectGroup:Ljava/lang/String;

    .line 2541
    iput-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectSet:Ljava/lang/String;

    .line 2542
    iput p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectIndex:I

    .line 2546
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorWheelViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_4
    if-ge v3, v2, :cond_11

    .line 2547
    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorWheelViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    .line 2548
    invoke-virtual {v4}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->getColorSetGroup()Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v5

    .line 2549
    iget-object v5, v5, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    if-ltz p3, :cond_a

    move v5, v1

    goto :goto_5

    :cond_a
    move v5, v0

    .line 2550
    :goto_5
    invoke-virtual {v4, v5}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->setSelected(Z)V

    if-ltz p3, :cond_10

    if-eqz v3, :cond_d

    if-eq v3, v1, :cond_b

    goto :goto_6

    :cond_b
    if-eqz p4, :cond_c

    .line 2569
    iget-object v5, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v5}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmGroupIdColorWheelGradation(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 2570
    :cond_c
    iget v5, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectColor:I

    iget v6, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectGradationColor:I

    invoke-virtual {v4, v5, v6}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->setCurrentColor(II)V

    goto :goto_6

    :cond_d
    if-eqz p4, :cond_e

    .line 2559
    iget-object v5, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v5}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmGroupIdColorWheelStandard(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 2560
    :cond_e
    iget v5, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectColor:I

    invoke-virtual {v4, v5}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->setCurrentColor(I)V

    goto :goto_6

    .line 2577
    :cond_f
    invoke-virtual {v4, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->setSelected(Z)V

    :cond_10
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2581
    :cond_11
    iget-object p4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorSetGroupViews:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    move v2, v0

    :goto_7
    if-ge v2, p4, :cond_16

    .line 2582
    iget-object v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorSetGroupViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;

    .line 2583
    invoke-virtual {v3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->getColorSetGroup()Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v4

    .line 2584
    iget-boolean v5, v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    if-eqz v5, :cond_12

    .line 2585
    invoke-virtual {v3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->deselectItem()V

    goto :goto_8

    .line 2588
    :cond_12
    iget-object v4, v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2589
    invoke-virtual {v3, p2, p3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->selectItem(Ljava/lang/String;I)Z

    .line 2590
    iget-boolean v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mGradationColorSelected:Z

    .line 2601
    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorWheelViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_13

    if-eqz v4, :cond_15

    .line 2591
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_15

    .line 2592
    iget-object v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorWheelViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    .line 2593
    iget v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectColor:I

    iget v5, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectGradationColor:I

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->setCurrentColor(II)V

    .line 2594
    invoke-virtual {v3, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->showKnob(Z)V

    .line 2596
    iget-object v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorWheelViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    .line 2597
    invoke-virtual {v3, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->setSelected(Z)V

    goto :goto_8

    :cond_13
    if-eqz v4, :cond_15

    .line 2601
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_15

    .line 2602
    iget-object v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorWheelViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    .line 2603
    iget v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mSelectColor:I

    invoke-virtual {v3, v4}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->setCurrentColor(I)V

    .line 2604
    invoke-virtual {v3, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->showKnob(Z)V

    .line 2606
    iget-object v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorWheelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_15

    .line 2607
    iget-object v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mColorWheelViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;

    .line 2608
    invoke-virtual {v3, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->setSelected(Z)V

    goto :goto_8

    .line 2614
    :cond_14
    invoke-virtual {v3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;->deselectItem()V

    :cond_15
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    return v1
.end method

.method public setSelectionChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;)V
    .locals 0

    .line 2404
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mOuterSelectEventListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;

    return-void
.end method
