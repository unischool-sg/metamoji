.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$7;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 1186
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$7;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1189
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$7;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mhandleOfflineUserButtonTap(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    return-void
.end method
