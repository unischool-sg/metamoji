.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$37;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Lcom/metamoji/forSchool/monitoring/ScMonitorList$Completion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->monitorLongLongPress(Lcom/metamoji/forSchool/monitoring/ScMonitorView;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3799
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$37;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 3803
    instance-of v0, p2, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3804
    check-cast p2, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_2

    .line 3812
    :cond_1
    check-cast p1, Lcom/metamoji/nt/NtCommand;

    .line 3813
    sget-object v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$57;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 3861
    :cond_2
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$37;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->monitorDoubleTap(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V

    goto :goto_1

    .line 3856
    :cond_3
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$37;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->monitorDoubleTap(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V

    goto :goto_1

    .line 3816
    :cond_4
    sget p1, Lcom/metamoji/noteanytime/R$string;->Share_Msg_UserList_Become_Presenter:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    .line 3817
    const-string v0, "%@"

    const-string v2, "%s"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 3818
    invoke-virtual {p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getLayerName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3819
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$37$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$37$1;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$37;Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V

    invoke-static {p1, v1, v0}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3866
    :goto_1
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$37;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 3867
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3869
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    .line 3870
    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->closeView()V

    :cond_5
    :goto_2
    return-void
.end method
