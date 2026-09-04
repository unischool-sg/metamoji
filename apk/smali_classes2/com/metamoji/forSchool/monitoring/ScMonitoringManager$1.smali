.class Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1;
.super Ljava/lang/Object;
.source "ScMonitoringManager.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getPageChangedEventListener()Lcom/metamoji/cm/ICmEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/df/controller/PageEventContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/df/controller/PageEventContext;)V
    .locals 2

    .line 89
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1$1;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1;Lcom/metamoji/df/controller/PageEventContext;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 86
    check-cast p1, Lcom/metamoji/df/controller/PageEventContext;

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1;->invoke(Lcom/metamoji/df/controller/PageEventContext;)V

    return-void
.end method
