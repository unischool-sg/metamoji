.class Lcom/metamoji/ui/HistoryBarDriver$8;
.super Ljava/lang/Object;
.source "HistoryBarDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/HistoryBarDriver;->onMruItemStatusChanged(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/HistoryBarDriver;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/HistoryBarDriver;I)V
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

    .line 1178
    iput-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver$8;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    iput p2, p0, Lcom/metamoji/ui/HistoryBarDriver$8;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1181
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$8;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    iget v1, p0, Lcom/metamoji/ui/HistoryBarDriver$8;->val$index:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/HistoryBarDriver;->updateTabContent(I)V

    return-void
.end method
