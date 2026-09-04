.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$15$1;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$15;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$15;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1368
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$15$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1371
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$15$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$15;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$15;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mcurrentPageChanged(Lcom/metamoji/forSchool/monitoring/ScMonitorList;ZZ)V

    return-void
.end method
