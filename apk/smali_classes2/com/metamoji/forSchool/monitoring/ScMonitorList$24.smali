.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$24;
.super Ljava/util/TimerTask;
.source "ScMonitorList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->onScrollChanged(Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;IIII)V
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

    .line 2394
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$24;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2397
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$24;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mrevalidateMonitorViewForScroll(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    return-void
.end method
