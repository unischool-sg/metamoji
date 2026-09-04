.class Lcom/metamoji/ui/flexible/FxManager$1;
.super Ljava/lang/Object;
.source "FxManager.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/flexible/FxManager;->showActionMenu(Ljava/util/ArrayList;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;ZLcom/metamoji/ui/MenuCloseEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/flexible/FxManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/flexible/FxManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1669
    iput-object p1, p0, Lcom/metamoji/ui/flexible/FxManager$1;->this$0:Lcom/metamoji/ui/flexible/FxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1672
    instance-of p1, p2, Lcom/metamoji/nt/NtCommand;

    if-eqz p1, :cond_0

    .line 1673
    iget-object p1, p0, Lcom/metamoji/ui/flexible/FxManager$1;->this$0:Lcom/metamoji/ui/flexible/FxManager;

    invoke-static {p1}, Lcom/metamoji/ui/flexible/FxManager;->-$$Nest$mgetCommandManager(Lcom/metamoji/ui/flexible/FxManager;)Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1675
    check-cast p2, Lcom/metamoji/nt/NtCommand;

    check-cast p3, Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_0
    return-void
.end method
