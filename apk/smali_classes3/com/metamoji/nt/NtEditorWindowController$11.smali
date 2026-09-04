.class Lcom/metamoji/nt/NtEditorWindowController$11;
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

    .line 1811
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$11;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 0

    if-nez p1, :cond_1

    .line 1816
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$11;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {p1}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_editorPage(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1817
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$11;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {p1}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_editorPage(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    check-cast p1, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->updateAttentionArea()V

    .line 1820
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->startPersonalModeByAttentionUser()V

    :cond_1
    return-void
.end method
