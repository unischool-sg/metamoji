.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$41;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Lcom/metamoji/ui/MenuCloseEventListener;


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

.field final synthetic val$menu:Lcom/metamoji/ui/CustomMenuView;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/ui/CustomMenuView;)V
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

    .line 4657
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$41;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$41;->val$menu:Lcom/metamoji/ui/CustomMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .line 4660
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$41;->val$menu:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView;->cancelAllMenus()V

    return-void
.end method
