.class Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;
.super Ljava/lang/Object;
.source "TreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/TreeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TreeNode"
.end annotation


# instance fields
.field _childNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/cabinet/TreeAdapter<",
            "TT;>.TreeNode;>;"
        }
    .end annotation
.end field

.field _depth:I

.field _hasChildItems:Z

.field _isChildLoaded:Z

.field _isExpanded:Z

.field _targetObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field _view:Landroid/view/View;

.field final synthetic this$0:Lcom/metamoji/ui/cabinet/TreeAdapter;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/cabinet/TreeAdapter;Ljava/lang/Object;Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/metamoji/ui/cabinet/TreeAdapter<",
            "TT;>.TreeNode;I)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->this$0:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_childNodes:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_isExpanded:Z

    .line 65
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_targetObject:Ljava/lang/Object;

    .line 66
    iput p4, p0, Lcom/metamoji/ui/cabinet/TreeAdapter$TreeNode;->_depth:I

    return-void
.end method
