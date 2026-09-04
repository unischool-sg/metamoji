.class Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2;
.super Ljava/lang/Object;
.source "CabinetUserAccountBiz.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2;->this$0:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 141
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2$1;-><init>(Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
