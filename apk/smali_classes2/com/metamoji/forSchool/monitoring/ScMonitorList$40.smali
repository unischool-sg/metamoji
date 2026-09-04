.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$40;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->showActionMenu(Ljava/util/List;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;ZLcom/metamoji/forSchool/monitoring/ScMonitorList$Completion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

.field final synthetic val$completion:Lcom/metamoji/forSchool/monitoring/ScMonitorList$Completion;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorList$Completion;)V
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

    .line 4652
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$40;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$40;->val$completion:Lcom/metamoji/forSchool/monitoring/ScMonitorList$Completion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 4655
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$40;->val$completion:Lcom/metamoji/forSchool/monitoring/ScMonitorList$Completion;

    invoke-interface {p1, p2, p3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$Completion;->action(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
