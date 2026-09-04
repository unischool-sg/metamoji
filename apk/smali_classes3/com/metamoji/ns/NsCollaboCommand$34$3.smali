.class Lcom/metamoji/ns/NsCollaboCommand$34$3;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand$34;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboCommand$34;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboCommand$34;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2888
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$34$3;->this$0:Lcom/metamoji/ns/NsCollaboCommand$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2891
    sput-object v0, Lcom/metamoji/ns/NsCollaboCommand;->s_bgTaskForLogin:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    if-eqz p1, :cond_0

    .line 2895
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$34$3;->this$0:Lcom/metamoji/ns/NsCollaboCommand$34;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$34;->val$offlineEditAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    if-nez p1, :cond_1

    .line 2900
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$34$3;->this$0:Lcom/metamoji/ns/NsCollaboCommand$34;

    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboCommand$34;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 2901
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->correctUserLoginName(Lcom/metamoji/nt/NtNoteController;)V

    .line 2903
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->collabolizeToOtherShareNoteFromCabinet()V

    :cond_1
    return-void
.end method
