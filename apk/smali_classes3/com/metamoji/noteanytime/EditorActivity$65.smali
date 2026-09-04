.class Lcom/metamoji/noteanytime/EditorActivity$65;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->notifyEditModeChanged(Lcom/metamoji/nt/NtDocument$EditMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$editMode:Lcom/metamoji/nt/NtDocument$EditMode;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/nt/NtDocument$EditMode;)V
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

    .line 5782
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$65;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$65;->val$editMode:Lcom/metamoji/nt/NtDocument$EditMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 5785
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$65;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->updateDetailAndViewModeButton()V

    .line 5786
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$65;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$65;->val$editMode:Lcom/metamoji/nt/NtDocument$EditMode;

    sget-object v2, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$65;->val$editMode:Lcom/metamoji/nt/NtDocument$EditMode;

    sget-object v2, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    invoke-static {v0, v3, v1}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$msetScrollButtonsCondition(Lcom/metamoji/noteanytime/EditorActivity;IZ)V

    .line 5787
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$65;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$65;->val$editMode:Lcom/metamoji/nt/NtDocument$EditMode;

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->pageAddButtonSetting(Lcom/metamoji/nt/NtDocument$EditMode;)V

    return-void
.end method
