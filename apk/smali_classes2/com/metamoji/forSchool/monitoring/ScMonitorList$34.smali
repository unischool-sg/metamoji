.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$34;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Lcom/metamoji/forSchool/monitoring/ScMonitorList$Completion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->handleLabelTap(Landroid/view/View;)V
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

    .line 3257
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$34;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3260
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleResetPersonalStatusMenuTapped()V

    return-void
.end method
