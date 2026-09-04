.class Lcom/metamoji/ui/HistoryBarDriver$10$1$1;
.super Ljava/lang/Object;
.source "HistoryBarDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/HistoryBarDriver$10$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/ui/HistoryBarDriver$10$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/HistoryBarDriver$10$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1255
    iput-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver$10$1$1;->this$2:Lcom/metamoji/ui/HistoryBarDriver$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$10$1$1;->this$2:Lcom/metamoji/ui/HistoryBarDriver$10$1;

    iget-object v0, v0, Lcom/metamoji/ui/HistoryBarDriver$10$1;->this$1:Lcom/metamoji/ui/HistoryBarDriver$10;

    iget-object v0, v0, Lcom/metamoji/ui/HistoryBarDriver$10;->val$proc:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
