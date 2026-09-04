.class Lcom/metamoji/ui/UiToast$1;
.super Ljava/lang/Object;
.source "UiToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/UiToast;->showAtLocation(Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/UiToast;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/UiToast;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/metamoji/ui/UiToast$1;->this$0:Lcom/metamoji/ui/UiToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/UiToast$1;->this$0:Lcom/metamoji/ui/UiToast;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiToast;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 88
    const-string v1, "UIToast/dismiss error."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
