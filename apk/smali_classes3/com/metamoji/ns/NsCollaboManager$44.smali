.class Lcom/metamoji/ns/NsCollaboManager$44;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->parseRoomSetting(Ljava/lang/String;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$allowToEditOthersWritings:Z

.field final synthetic val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/nt/NtEditorWindowController;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4268
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$44;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager$44;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    iput-boolean p3, p0, Lcom/metamoji/ns/NsCollaboManager$44;->val$allowToEditOthersWritings:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4271
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$44;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 4272
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v1

    .line 4273
    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v1, v2, :cond_0

    .line 4274
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$44;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->changeToSelectModeIfNoteSelectMode()V

    .line 4278
    :cond_0
    new-instance v1, Lcom/metamoji/ns/NsRoomSettingChangedEventContext;

    invoke-direct {v1}, Lcom/metamoji/ns/NsRoomSettingChangedEventContext;-><init>()V

    .line 4279
    iget-boolean v2, p0, Lcom/metamoji/ns/NsCollaboManager$44;->val$allowToEditOthersWritings:Z

    iput-boolean v2, v1, Lcom/metamoji/ns/NsRoomSettingChangedEventContext;->allowToEditOthersWritings:Z

    const/4 v2, 0x0

    .line 4280
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    return-void
.end method
