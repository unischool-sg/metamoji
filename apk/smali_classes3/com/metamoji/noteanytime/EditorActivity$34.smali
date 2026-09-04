.class Lcom/metamoji/noteanytime/EditorActivity$34;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "EditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->initControls(Landroid/os/Bundle;)V
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

    .line 2621
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$34;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    const/4 v0, 0x0

    .line 2655
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 2656
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    .line 2657
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr p1, v2

    const/16 v2, 0x32

    int-to-float v2, v2

    cmpl-float v3, p1, v2

    const/16 v4, -0x32

    const/4 v5, 0x1

    const/16 v6, 0xc8

    if-lez v3, :cond_2

    int-to-float p1, v4

    cmpg-float p1, v1, p1

    if-gez p1, :cond_1

    .line 2660
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p2, v6

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 2661
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$34;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object p1, p1, Lcom/metamoji/noteanytime/EditorActivity;->_historyBarDriver:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-virtual {p1}, Lcom/metamoji/ui/HistoryBarDriver;->isHistoryBarVisible()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2665
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$34;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    if-nez p1, :cond_0

    .line 2663
    :try_start_1
    invoke-virtual {p2}, Lcom/metamoji/noteanytime/EditorActivity;->hideEditorBars()V

    goto :goto_0

    .line 2665
    :cond_0
    iget-object p1, p2, Lcom/metamoji/noteanytime/EditorActivity;->_historyBarDriver:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/HistoryBarDriver;->setVisibility(Z)V

    :goto_0
    return v5

    :cond_1
    cmpl-float p1, v1, v2

    if-lez p1, :cond_5

    .line 2668
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p2, v6

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    .line 2669
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$34;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object p1, p1, Lcom/metamoji/noteanytime/EditorActivity;->_historyBarDriver:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-virtual {p1, v5}, Lcom/metamoji/ui/HistoryBarDriver;->setVisibility(Z)V

    return v5

    :cond_2
    int-to-float p4, v4

    cmpg-float p1, p1, p4

    if-gez p1, :cond_4

    .line 2672
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$34;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    cmpg-float p1, p2, p4

    if-gez p1, :cond_3

    .line 2674
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p4, v6

    cmpl-float p1, p1, p4

    if-lez p1, :cond_3

    .line 2675
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$34;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object p1, p1, Lcom/metamoji/noteanytime/EditorActivity;->_modeBarController:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    invoke-virtual {p1, v0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->changeModeBarVisible(Z)V

    return v5

    :cond_3
    cmpl-float p1, p2, v2

    if-lez p1, :cond_5

    .line 2677
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p2, v6

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    .line 2678
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$34;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object p1, p1, Lcom/metamoji/noteanytime/EditorActivity;->_modeBarController:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    invoke-virtual {p1, v5}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->changeModeBarVisible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v5

    :cond_4
    return v0

    :catch_0
    move-exception p1

    .line 2686
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_5
    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2629
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->isShare()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2630
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$34;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object p1, p1, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    if-eqz p1, :cond_0

    .line 2632
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    .line 2633
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_DOCUMENT_SETTING2:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2634
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_DOCUMENT_SETTING2:Lcom/metamoji/nt/NtCommand;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
