.class Lcom/metamoji/forSchool/ui/ScScoreListDialog$12;
.super Ljava/lang/Object;
.source "ScScoreListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScScoreListDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

.field final synthetic val$autoReloadSwitch:Lcom/metamoji/ui/common/UiSwitch;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Lcom/metamoji/ui/common/UiSwitch;)V
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

    .line 459
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$12;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$12;->val$autoReloadSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 462
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$12;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$12;->val$autoReloadSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    iput-boolean v0, p1, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_isAutoReload:Z

    return-void
.end method
