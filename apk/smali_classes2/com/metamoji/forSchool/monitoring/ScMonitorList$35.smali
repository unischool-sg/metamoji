.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$35;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Lcom/metamoji/forSchool/monitoring/ScMonitorList$Completion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->handleOfflineUserButtonTap()V
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

    .line 3311
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$35;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3314
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$35;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mhandleOfflineUserMenuTapped(Lcom/metamoji/forSchool/monitoring/ScMonitorList;I)V

    return-void
.end method
