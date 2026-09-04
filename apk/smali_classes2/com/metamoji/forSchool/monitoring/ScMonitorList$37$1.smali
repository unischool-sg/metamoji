.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$37$1;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList$37;->action(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$37;

.field final synthetic val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$37;Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V
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

    .line 3819
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$37$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$37;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$37$1;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 3823
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$37$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$37;

    iget-object p1, p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$37;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->dismiss()V

    .line 3828
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/metamoji/forSchool/ScSchoolManager;->lockScreen(Z)V

    .line 3830
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object p1

    .line 3832
    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 3833
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$37$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$37;

    iget-object p1, p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$37;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mgetSchoolPageType(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)I

    move-result p1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 3840
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$37$1;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3836
    :cond_0
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$37$1;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getLayerId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3844
    :cond_1
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$37$1;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 3847
    :goto_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->userIdFromDcUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3849
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/metamoji/ns/NsCollaboManager;->changePresenter(ZLjava/lang/String;)V

    :cond_2
    return-void
.end method
