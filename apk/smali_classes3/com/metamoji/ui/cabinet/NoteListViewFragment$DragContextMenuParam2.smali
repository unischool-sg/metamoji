.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;
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

.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;


# direct methods
.method static bridge synthetic -$$Nest$fget_from(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->_from:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_fromDocIds(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->_fromDocIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_to(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->_to:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-object p0
.end method

.method public constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/util/ArrayList;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
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

    .line 5635
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5636
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->_fromDocIds:Ljava/util/ArrayList;

    .line 5637
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->_from:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 5638
    iput-object p4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->_to:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-void
.end method
