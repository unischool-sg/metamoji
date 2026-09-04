.class Lcom/metamoji/noteanytime/EditorActivity$74;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->onHistoryBarHeightChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 7069
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$74;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 7072
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$74;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-boolean v0, v0, Lcom/metamoji/noteanytime/EditorActivity;->_actionBarShown:Z

    if-eqz v0, :cond_2

    .line 7073
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$74;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 7074
    sget v1, Lcom/metamoji/noteanytime/R$id;->actionbar:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/ActionBar;

    if-eqz v0, :cond_0

    .line 7075
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/ActionBar;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 7077
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 7078
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$74;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-static {v1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$madjustEditingArea(Lcom/metamoji/noteanytime/EditorActivity;I)V

    .line 7096
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$74;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->editLayerInfoResetMargin()V

    .line 7097
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$74;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->personalModeInfoResetMargin()V

    .line 7098
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$74;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->updateScoreInfoViewPosition()V

    .line 7100
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$74;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->offlineEditModeInfoResetMargin()V

    .line 7104
    :cond_1
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$74;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManager;->updateHintHelp()V

    .line 7108
    :cond_2
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$74;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->updateSearchTextBarPosition()V

    return-void
.end method
