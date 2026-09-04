.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragContextMenuParam"
.end annotation


# instance fields
.field private _from:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field private _to:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;


# direct methods
.method static bridge synthetic -$$Nest$fget_from(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;->_from:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_to(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;->_to:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-object p0
.end method

.method public constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
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

    .line 5624
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5625
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;->_from:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 5626
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;->_to:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-void
.end method
