.class public abstract Lcom/metamoji/ui/cabinet/TreeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;,
        Lcom/metamoji/ui/cabinet/TreeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final CENTER_POSITION:I = 0x1

.field static final UNDER_POSITION:I = 0x2

.field static final UPPER_POSITION:I

.field private static _absPathToisExpandedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _lineViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private _objectToNodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lcom/metamoji/ui/cabinet/TreeAdapter<",
            "TT;>.TreeNode;>;"
        }
    .end annotation
.end field

.field private _onDragBackGround:Landroid/graphics/Bitmap;

.field private _onDragNode:Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/ui/cabinet/TreeAdapter<",
            "TT;>.TreeNode;"
        }
    .end annotation
.end field

.field private _res:Landroid/content/res/Resources;

.field private _root:Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/ui/cabinet/TreeAdapter<",
            "TT;>.TreeNode;"
        }
    .end annotation
.end field

.field private _selectedBackGround:Landroid/graphics/Bitmap;

.field private _selectedItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private _sourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private _targetList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private _treeView:Lcom/metamoji/ui/cabinet/TreeView;

.field private maxWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_absPathToisExpandedMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Ljava/util/LinkedList;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/LinkedList<",
            "TT;>;)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 81
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    .line 87
    new-instance p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, p2, v0}, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;-><init>(Lcom/metamoji/ui/cabinet/TreeAdapter;Ljava/lang/Object;Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;I)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_root:Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    .line 93
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_lineViews:Ljava/util/LinkedList;

    .line 562
    iput v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->maxWidth:I

    if-nez p3, :cond_0

    .line 111
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 114
    :cond_0
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_sourceList:Ljava/util/List;

    .line 115
    iput-object p4, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_targetList:Ljava/util/LinkedList;

    .line 116
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->buildTree()V

    .line 117
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->treeToList()V

    .line 119
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_sourceList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_sourceList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_selectedItem:Ljava/lang/Object;

    .line 123
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_res:Landroid/content/res/Resources;

    .line 124
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->cabinet_detail_select:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_selectedBackGround:Landroid/graphics/Bitmap;

    .line 125
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_res:Landroid/content/res/Resources;

    sget p2, Lcom/metamoji/noteanytime/R$drawable;->cabinet_drag_detail_select:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_onDragBackGround:Landroid/graphics/Bitmap;

    return-void
.end method

.method private addLineView(Landroid/view/View;)V
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_lineViews:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private buildTree()V
    .locals 5

    .line 670
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 671
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_root:Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_childNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 673
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_sourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 674
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_root:Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_childNodes:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lcom/metamoji/ui/cabinet/TreeAdapter;->loadChildNodes(Ljava/lang/Object;Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;I)Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private changeOpenState(Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/TreeAdapter<",
            "TT;>.TreeNode;Z)V"
        }
    .end annotation

    .line 740
    iput-boolean p2, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_isExpanded:Z

    .line 741
    sget-object v0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_absPathToisExpandedMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_targetObject:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getUniquePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 744
    iget-boolean p2, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_hasChildItems:Z

    if-eqz p2, :cond_2

    .line 745
    iget-boolean p2, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_isChildLoaded:Z

    if-nez p2, :cond_0

    .line 746
    iput-boolean v0, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_isChildLoaded:Z

    .line 748
    iget-object p2, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_targetObject:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getChildObjects(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 750
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 751
    iget-object v2, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_childNodes:Ljava/util/ArrayList;

    iget v3, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_depth:I

    add-int/2addr v3, v0

    invoke-direct {p0, v1, p1, v3}, Lcom/metamoji/ui/cabinet/TreeAdapter;->loadChildNodes(Ljava/lang/Object;Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;I)Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 756
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_targetList:Ljava/util/LinkedList;

    iget-object v1, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_targetObject:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 757
    iget-object p1, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_childNodes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_targetList:Ljava/util/LinkedList;

    add-int/2addr p2, v0

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/TreeAdapter;->insert(Ljava/util/List;Ljava/util/ListIterator;)V

    goto :goto_1

    .line 760
    :cond_1
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_targetList:Ljava/util/LinkedList;

    iget-object v1, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_targetObject:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 761
    iget-object p1, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_childNodes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_targetList:Ljava/util/LinkedList;

    add-int/2addr p2, v0

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/TreeAdapter;->remove(Ljava/util/ArrayList;Ljava/util/ListIterator;)V

    .line 764
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getLineView()Landroid/view/View;
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_lineViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_lineViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private insert(Ljava/util/List;Ljava/util/ListIterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/TreeAdapter<",
            "TT;>.TreeNode;>;",
            "Ljava/util/ListIterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 778
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    .line 779
    iget-object v1, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_targetObject:Ljava/lang/Object;

    invoke-interface {p2, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 780
    iget-boolean v1, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_isExpanded:Z

    if-eqz v1, :cond_0

    .line 781
    iget-object v0, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_childNodes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2}, Lcom/metamoji/ui/cabinet/TreeAdapter;->insert(Ljava/util/List;Ljava/util/ListIterator;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadChildNodes(Ljava/lang/Object;Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;I)Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/metamoji/ui/cabinet/TreeAdapter<",
            "TT;>.TreeNode;I)",
            "Lcom/metamoji/ui/cabinet/TreeAdapter<",
            "TT;>.TreeNode;"
        }
    .end annotation

    .line 691
    new-instance v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;-><init>(Lcom/metamoji/ui/cabinet/TreeAdapter;Ljava/lang/Object;Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;I)V

    .line 692
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getChildObjects(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 696
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_hasChildItems:Z

    .line 697
    sget-object v2, Lcom/metamoji/ui/cabinet/TreeAdapter;->_absPathToisExpandedMap:Ljava/util/HashMap;

    move-object v3, p1

    check-cast v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getUniquePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 699
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_isExpanded:Z

    goto :goto_1

    .line 701
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getIsExpandedByDefault(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_isExpanded:Z

    .line 704
    :goto_1
    iget-boolean p1, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_hasChildItems:Z

    if-eqz p1, :cond_2

    iget-boolean p1, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_isExpanded:Z

    if-eqz p1, :cond_2

    .line 705
    iput-boolean v1, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_isChildLoaded:Z

    .line 707
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v2, p3, 0x1

    .line 708
    invoke-direct {p0, p2, v0, v2}, Lcom/metamoji/ui/cabinet/TreeAdapter;->loadChildNodes(Ljava/lang/Object;Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;I)Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    move-result-object p2

    .line 709
    iget-object v2, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_childNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method private recurseAddList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/TreeAdapter<",
            "TT;>.TreeNode;>;)V"
        }
    .end annotation

    .line 727
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    .line 728
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_targetList:Ljava/util/LinkedList;

    iget-object v2, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_targetObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 729
    iget-boolean v1, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_isExpanded:Z

    if-eqz v1, :cond_0

    .line 730
    iget-object v0, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_childNodes:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->recurseAddList(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private remove(Ljava/util/ArrayList;Ljava/util/ListIterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/cabinet/TreeAdapter<",
            "TT;>.TreeNode;>;",
            "Ljava/util/ListIterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 768
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    .line 769
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 770
    invoke-interface {p2}, Ljava/util/ListIterator;->remove()V

    .line 771
    iget-boolean v1, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_isExpanded:Z

    if-eqz v1, :cond_0

    .line 772
    iget-object v0, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_childNodes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2}, Lcom/metamoji/ui/cabinet/TreeAdapter;->remove(Ljava/util/ArrayList;Ljava/util/ListIterator;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private treeToList()V
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_targetList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_targetList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_root:Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_childNodes:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->recurseAddList(Ljava/util/List;)V

    return-void
.end method

.method private updateTreeViewWidth(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 564
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 566
    iget v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->maxWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->TREE_VIEW_WIDTH_MARGIN:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 567
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->TREE_VIEW_WIDTH_MARGIN:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->maxWidth:I

    .line 568
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 569
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 570
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 571
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 572
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/TreeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 573
    iget v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->maxWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 574
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/TreeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/TreeView;->requestLayout()V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 139
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_sourceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 153
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 154
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_sourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method clearOnDraggingBackground()V
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_onDragNode:Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_selectedItem:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 358
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    .line 359
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_onDragNode:Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_onDragNode:Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 365
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_onDragNode:Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    const-string v2, "FolderTreeViewFragment.upperLine"

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 366
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_onDragNode:Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    const-string v3, "FolderTreeViewFragment.underLine"

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    .line 367
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 368
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_onDragNode:Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    const-string v2, "FolderTreeViewFragment.titleText"

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 370
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 371
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_onDragNode:Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method public expand(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    .line 431
    iget-boolean v0, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_isExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 432
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->changeOpenState(Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;Z)V

    :cond_0
    return-void
.end method

.method public abstract getChildObjects(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method getDropPosition(II)I
    .locals 3

    .line 327
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 328
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/TreeView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 329
    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p1

    .line 332
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 333
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_onDragNode:Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_onDragNode:Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 339
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int v0, p2, v0

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_SIZE:I

    div-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 342
    :cond_1
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    sget p1, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_SIZE:I

    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_SIZE:I

    div-int/lit8 v0, v0, 0x3

    sub-int/2addr p1, v0

    if-le p2, p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getIsExpandedByDefault(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method getItemView(Ljava/lang/Object;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 383
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    if-eqz p1, :cond_1

    .line 385
    iget-object p1, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    return-object p1

    :cond_1
    return-object v1
.end method

.method getTarget(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_targetList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getTreeItemView(Ljava/lang/Object;ZI)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZI)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 487
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_targetList:Ljava/util/LinkedList;

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 488
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    .line 489
    iget-object v0, p3, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_targetObject:Ljava/lang/Object;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 494
    new-instance p2, Lcom/metamoji/ui/cabinet/TreeAdapter$ViewHolder;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/cabinet/TreeAdapter$ViewHolder;-><init>(Lcom/metamoji/ui/cabinet/TreeAdapter;)V

    .line 496
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 497
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 499
    iget-boolean v4, p3, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_isExpanded:Z

    invoke-virtual {p0, v0, v4, p1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getTreeItemView(Ljava/lang/Object;ZI)Landroid/view/View;

    move-result-object p1

    .line 500
    iput-object p1, p2, Lcom/metamoji/ui/cabinet/TreeAdapter$ViewHolder;->_targetView:Landroid/view/View;

    .line 502
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 504
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 505
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 506
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 508
    iput-object v3, p2, Lcom/metamoji/ui/cabinet/TreeAdapter$ViewHolder;->_rightPartLinearLayout:Landroid/widget/LinearLayout;

    .line 510
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 511
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 513
    iput-object v4, p2, Lcom/metamoji/ui/cabinet/TreeAdapter$ViewHolder;->_indentLinearLayout:Landroid/widget/LinearLayout;

    .line 515
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 516
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 520
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/TreeAdapter$ViewHolder;

    move v4, v2

    .line 521
    :goto_0
    iget-object v5, v3, Lcom/metamoji/ui/cabinet/TreeAdapter$ViewHolder;->_indentLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 522
    iget-object v5, v3, Lcom/metamoji/ui/cabinet/TreeAdapter$ViewHolder;->_indentLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/metamoji/ui/cabinet/TreeAdapter;->addLineView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 524
    :cond_1
    iget-object v4, v3, Lcom/metamoji/ui/cabinet/TreeAdapter$ViewHolder;->_indentLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 526
    iget-boolean v4, p3, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_isExpanded:Z

    invoke-virtual {p0, v0, v4, p1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getTreeItemView(Ljava/lang/Object;ZI)Landroid/view/View;

    move-result-object p1

    .line 527
    iget-object v4, v3, Lcom/metamoji/ui/cabinet/TreeAdapter$ViewHolder;->_targetView:Landroid/view/View;

    if-eq p1, v4, :cond_2

    .line 528
    iget-object v4, v3, Lcom/metamoji/ui/cabinet/TreeAdapter$ViewHolder;->_rightPartLinearLayout:Landroid/widget/LinearLayout;

    iget-object v5, v3, Lcom/metamoji/ui/cabinet/TreeAdapter$ViewHolder;->_targetView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 529
    iget-object v4, v3, Lcom/metamoji/ui/cabinet/TreeAdapter$ViewHolder;->_rightPartLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 530
    iput-object p1, v3, Lcom/metamoji/ui/cabinet/TreeAdapter$ViewHolder;->_targetView:Landroid/view/View;

    :cond_2
    move-object p1, p2

    move-object p2, v3

    :goto_1
    move v3, v2

    .line 535
    :goto_2
    iget v4, p3, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_depth:I

    if-ge v3, v4, :cond_3

    .line 536
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getLineView()Landroid/view/View;

    move-result-object v4

    .line 537
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    sget v6, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_INDENT_WIDTH:I

    invoke-direct {v5, v6, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    new-instance v5, Lcom/metamoji/ui/cabinet/TreeAdapter$1;

    invoke-direct {v5, p0, v0}, Lcom/metamoji/ui/cabinet/TreeAdapter$1;-><init>(Lcom/metamoji/ui/cabinet/TreeAdapter;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-object v5, p2, Lcom/metamoji/ui/cabinet/TreeAdapter$ViewHolder;->_indentLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 547
    :cond_3
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_selectedItem:Ljava/lang/Object;

    iget-object v0, p3, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_targetObject:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 548
    invoke-virtual {p1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 549
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_selectedBackGround:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 550
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_res:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 551
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    .line 553
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    :goto_3
    iput-object p1, p3, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    .line 557
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->updateTreeViewWidth(Landroid/view/View;)V

    return-object p1
.end method

.method public isExpanded(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    iget-boolean p1, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_isExpanded:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->treeToList()V

    .line 167
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method onDuringDrag(IIZLjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    if-gez v1, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->clearOnDraggingBackground()V

    return-void

    .line 180
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    .line 188
    sget-object v6, Lcom/metamoji/ui/cabinet/TreeAdapter$2;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 233
    :pswitch_0
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->clearOnDraggingBackground()V

    return-void

    :pswitch_1
    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 218
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/metamoji/sd/SdUtils;->isSameDrive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_0
    const/4 v6, 0x1

    goto :goto_2

    .line 222
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->clearOnDraggingBackground()V

    return-void

    :pswitch_2
    if-nez p3, :cond_3

    .line 205
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/metamoji/sd/SdUtils;->isSameDrive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 209
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->clearOnDraggingBackground()V

    return-void

    :pswitch_3
    if-eqz p3, :cond_4

    .line 192
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/metamoji/sd/SdUtils;->isSameDrive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 194
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->clearOnDraggingBackground()V

    return-void

    :cond_4
    :goto_1
    move v6, v5

    .line 241
    :goto_2
    iget-object v7, v0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    iput-object v7, v0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_onDragNode:Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    .line 243
    iget-object v7, v0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_selectedItem:Ljava/lang/Object;

    invoke-virtual {v0, v7}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v7

    .line 246
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v8

    .line 248
    iget-object v9, v0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    invoke-virtual {v9}, Lcom/metamoji/ui/cabinet/TreeView;->getCount()I

    move-result v9

    move v10, v5

    .line 319
    :goto_3
    iget-object v11, v0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    if-ge v10, v9, :cond_10

    .line 250
    invoke-virtual {v11, v10}, Lcom/metamoji/ui/cabinet/TreeView;->getChildByIndex(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_6

    :cond_5
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 255
    :cond_6
    const-string v12, "FolderTreeViewFragment.upperLine"

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v12

    .line 256
    const-string v13, "FolderTreeViewFragment.underLine"

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v13

    .line 257
    const-string v14, "FolderTreeViewFragment.titleText"

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v14

    if-ne v7, v10, :cond_7

    goto :goto_4

    :cond_7
    if-ne v1, v10, :cond_e

    .line 265
    invoke-virtual {v8}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v16

    if-nez v16, :cond_a

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v15

    sget-object v4, Lcom/metamoji/nt/NtFeature;->AppStudentEditClassboxNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v15, v4}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    if-nez v2, :cond_9

    .line 268
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    :cond_9
    if-eqz v2, :cond_5

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 274
    :cond_a
    :goto_5
    invoke-virtual {v11, v5, v5}, Landroid/view/View;->measure(II)V

    .line 275
    iget-object v4, v0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_onDragBackGround:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v4, v15, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 276
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v15, v0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_res:Landroid/content/res/Resources;

    invoke-direct {v4, v15, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 277
    invoke-virtual {v11, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    .line 279
    invoke-virtual {v14, v2}, Landroid/view/View;->setActivated(Z)V

    if-eqz p3, :cond_f

    if-eq v2, v1, :cond_f

    if-eqz v6, :cond_b

    goto :goto_6

    .line 289
    :cond_b
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 290
    iget-object v14, v0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    invoke-virtual {v14, v4}, Lcom/metamoji/ui/cabinet/TreeView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 291
    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int v4, p2, v4

    .line 294
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 295
    invoke-virtual {v11, v14}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 297
    iget v11, v14, Landroid/graphics/Rect;->top:I

    sub-int v11, v4, v11

    sget v15, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_SIZE:I

    div-int/lit8 v15, v15, 0x3

    if-ge v11, v15, :cond_c

    .line 299
    invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v15, 0x4

    .line 300
    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_c
    const/4 v15, 0x4

    .line 301
    iget v11, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v11

    sget v11, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_SIZE:I

    sget v14, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_SIZE:I

    div-int/lit8 v14, v14, 0x3

    sub-int/2addr v11, v14

    if-le v4, v11, :cond_d

    .line 303
    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    .line 304
    invoke-virtual {v13, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 307
    :cond_d
    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    .line 308
    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_e
    const/4 v2, 0x1

    const/4 v15, 0x4

    .line 311
    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 312
    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    .line 313
    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 314
    invoke-virtual {v14, v5}, Landroid/view/View;->setActivated(Z)V

    :cond_f
    :goto_6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p4

    goto/16 :goto_3

    .line 319
    :cond_10
    invoke-virtual {v11}, Lcom/metamoji/ui/cabinet/TreeView;->requestLayout()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method onStopDrag()V
    .locals 0

    .line 375
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->clearOnDraggingBackground()V

    return-void
.end method

.method public reinitialize()V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->buildTree()V

    .line 160
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 146
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_sourceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public resetMap()V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method saveTreeExpandedState()V
    .locals 5

    .line 679
    sget-object v0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_absPathToisExpandedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 680
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 681
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 682
    move-object v2, v1

    check-cast v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 683
    sget-object v3, Lcom/metamoji/ui/cabinet/TreeAdapter;->_absPathToisExpandedMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getUniquePath()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    iget-boolean v1, v1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_isExpanded:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelectedItem(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_selectedItem:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_selectedItem:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    const/4 v2, 0x4

    .line 592
    const-string v3, "FolderTreeViewFragment.iconImage"

    const-string v4, "FolderTreeViewFragment.selectedIconImage"

    const-string v5, "FolderTreeViewFragment.titleText"

    if-eqz v0, :cond_3

    iget-object v6, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 593
    iget-object v6, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 595
    iget-object v6, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 597
    invoke-virtual {v6, v1}, Landroid/view/View;->setActivated(Z)V

    .line 600
    :cond_1
    iget-object v6, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 602
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 605
    :cond_2
    iget-object v6, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 607
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 611
    :cond_3
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_selectedItem:Ljava/lang/Object;

    .line 614
    iget-object v6, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    const/4 v6, 0x1

    if-eqz p1, :cond_7

    .line 615
    iget-object v7, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    if-eqz v7, :cond_7

    .line 616
    iget-object v7, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    invoke-virtual {v7, v1, v1}, Landroid/view/View;->measure(II)V

    .line 617
    iget-object v7, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_selectedBackGround:Landroid/graphics/Bitmap;

    iget-object v8, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v7, v8, v9, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 618
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_res:Landroid/content/res/Resources;

    invoke-direct {v8, v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 619
    iget-object v7, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 621
    iget-object v7, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 623
    invoke-virtual {v5, v6}, Landroid/view/View;->setActivated(Z)V

    .line 626
    :cond_4
    iget-object v5, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 628
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 631
    :cond_5
    iget-object v1, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 633
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 635
    :cond_6
    iget-object v1, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_7
    if-eqz v0, :cond_9

    if-eqz v0, :cond_8

    .line 641
    iget-object v1, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    if-eqz v1, :cond_8

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    :cond_8
    if-eqz p1, :cond_9

    if-eqz p1, :cond_a

    iget-object v0, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_view:Landroid/view/View;

    .line 642
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_a

    .line 646
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->notifyDataSetChanged()V

    :cond_a
    return v6
.end method

.method public setTreeView(Lcom/metamoji/ui/cabinet/TreeView;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    return-void
.end method

.method public toggleExpand(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;

    .line 460
    iget-boolean v0, p1, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_isExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->changeOpenState(Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;Z)V

    :cond_0
    return-void
.end method

.method public updateState(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter;->_objectToNodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
