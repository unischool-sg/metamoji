.class Lcom/metamoji/ns/ui/NsCollaboModeViewBase$1;
.super Ljava/lang/Object;
.source "NsCollaboModeViewBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->popupDismissPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 417
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$1;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 420
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$1$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase$1;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
