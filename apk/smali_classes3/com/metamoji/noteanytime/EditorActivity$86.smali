.class Lcom/metamoji/noteanytime/EditorActivity$86;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->showOfflineEditModeInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$modeBarController:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/String;Lcom/metamoji/noteanytime/EditorActivityModeBarController;)V
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

    .line 8880
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$86;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$86;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$86;->val$modeBarController:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 8883
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$86;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->updateOfflineEditModeInfoPosition()V

    .line 8884
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$86;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity;->_offlineEditModeInfoView:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$86;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->show(Ljava/lang/String;)V

    .line 8885
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$86;->val$modeBarController:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->collaboModeChanged()V

    return-void
.end method
