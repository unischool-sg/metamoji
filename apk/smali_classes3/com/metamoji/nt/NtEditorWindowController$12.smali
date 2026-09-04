.class Lcom/metamoji/nt/NtEditorWindowController$12;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1828
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$12;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 1

    .line 1832
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$12;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {p1}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_editorPage(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1833
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$12;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {p1}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_editorPage(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    check-cast p1, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->updateAttentionArea()V

    .line 1836
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    .line 1837
    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1838
    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->endPersonalMode()V

    return-void

    .line 1839
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1840
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolTeacherModeFree()V

    :cond_2
    return-void
.end method
