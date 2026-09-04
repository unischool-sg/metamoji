.class Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$4$1;
.super Ljava/lang/Object;
.source "ScPersonalModeInfoView.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$4;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 455
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$4$1;->this$1:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 0

    if-nez p1, :cond_1

    .line 460
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    check-cast p1, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz p1, :cond_0

    .line 462
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->updateAttentionArea()V

    .line 465
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result p1

    if-nez p1, :cond_1

    .line 466
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$4$1;->this$1:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$4;

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$4;->this$0:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->-$$Nest$mhandleCancelButtonTap(Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;)V

    :cond_1
    return-void
.end method
