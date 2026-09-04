.class Lcom/metamoji/nt/itemlist/NtPageList$4;
.super Ljava/lang/Object;
.source "NtPageList.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtPageList;->initializeList(Lcom/metamoji/nt/NtNoteController;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtPageList;

.field final synthetic val$note:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtPageList;Lcom/metamoji/nt/NtNoteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList$4;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtPageList$4;->val$note:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 144
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtPageList$4;->invoke(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/String;)V
    .locals 2

    .line 147
    const-string v0, "HasFrontCover"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 149
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList$4;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    iget-object p1, p1, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList$4;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtPageList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtPageList$4;->val$note:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getBaseIndex(Lcom/metamoji/nt/NtNoteController;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->initBaseIndex(I)V

    .line 150
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 152
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->updatePageLabel()V

    .line 154
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/nt/itemlist/NtPageList$4$1;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/itemlist/NtPageList$4$1;-><init>(Lcom/metamoji/nt/itemlist/NtPageList$4;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
