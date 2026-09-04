.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->monitorDoubleTap(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

.field final synthetic val$isFeatureMode:Z

.field final synthetic val$isGroupFinal:Z

.field final synthetic val$layerId:Ljava/lang/String;

.field final synthetic val$layerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 3609
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iput-boolean p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;->val$isFeatureMode:Z

    iput-boolean p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;->val$isGroupFinal:Z

    iput-object p4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;->val$layerId:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;->val$layerName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3612
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method
