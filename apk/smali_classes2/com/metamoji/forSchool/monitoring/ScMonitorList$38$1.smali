.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$38$1;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList$38;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$38;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$38;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4103
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$38$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$38;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 4106
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$38$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$38;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$38;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mscrollPageUp(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    return-void
.end method
