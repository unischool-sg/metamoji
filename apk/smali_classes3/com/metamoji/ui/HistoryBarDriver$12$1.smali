.class Lcom/metamoji/ui/HistoryBarDriver$12$1;
.super Ljava/lang/Object;
.source "HistoryBarDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/HistoryBarDriver$12;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/HistoryBarDriver$12;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/HistoryBarDriver$12;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1336
    iput-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver$12$1;->this$1:Lcom/metamoji/ui/HistoryBarDriver$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1339
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/HistoryBarDriver$12$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/HistoryBarDriver$12$1$1;-><init>(Lcom/metamoji/ui/HistoryBarDriver$12$1;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
