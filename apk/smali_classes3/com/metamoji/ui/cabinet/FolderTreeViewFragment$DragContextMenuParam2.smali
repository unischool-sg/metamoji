.class Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;
.super Ljava/lang/Object;
.source "FolderTreeViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragContextMenuParam2"
.end annotation


# instance fields
.field private _from:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field private _fromDocIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _to:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field final synthetic this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;


# direct methods
.method static bridge synthetic -$$Nest$fget_from(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->_from:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_fromDocIds(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->_fromDocIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->_to:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-object p0
.end method

.method public constructor <init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Ljava/util/ArrayList;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
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
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            ")V"
        }
    .end annotation

    .line 1526
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1527
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->_fromDocIds:Ljava/util/ArrayList;

    .line 1528
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->_from:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 1529
    iput-object p4, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->_to:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-void
.end method
