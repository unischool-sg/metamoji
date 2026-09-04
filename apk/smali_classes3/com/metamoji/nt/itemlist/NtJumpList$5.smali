.class Lcom/metamoji/nt/itemlist/NtJumpList$5;
.super Ljava/lang/Object;
.source "NtJumpList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtJumpList;->selectLinkJumpAsync(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtJumpList;

.field final synthetic val$cm:Lcom/metamoji/cm/CmTaskManager;

.field final synthetic val$needNotifyToNote:Z

.field final synthetic val$needScroll:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtJumpList;Lcom/metamoji/cm/CmTaskManager;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 356
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpList$5;->this$0:Lcom/metamoji/nt/itemlist/NtJumpList;

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtJumpList$5;->val$cm:Lcom/metamoji/cm/CmTaskManager;

    iput p3, p0, Lcom/metamoji/nt/itemlist/NtJumpList$5;->val$position:I

    iput-boolean p4, p0, Lcom/metamoji/nt/itemlist/NtJumpList$5;->val$needScroll:Z

    iput-boolean p5, p0, Lcom/metamoji/nt/itemlist/NtJumpList$5;->val$needNotifyToNote:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList$5;->val$cm:Lcom/metamoji/cm/CmTaskManager;

    new-instance v1, Lcom/metamoji/nt/itemlist/NtJumpList$5$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/itemlist/NtJumpList$5$1;-><init>(Lcom/metamoji/nt/itemlist/NtJumpList$5;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
