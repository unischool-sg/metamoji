.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$27;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateMonitorUserStatus(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

.field final synthetic val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

.field final synthetic val$status:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 2853
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$27;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$27;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iput-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$27;->val$userId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$27;->val$status:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2856
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$27;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$27;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$27;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$27;->val$status:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mupdateUserStatus(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;Ljava/lang/String;)V

    .line 2857
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$27;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
