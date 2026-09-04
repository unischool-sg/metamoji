.class Lcom/metamoji/nt/itemlist/NtItemList$11;
.super Ljava/lang/Object;
.source "NtItemList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtItemList;->purgeThumbnailAsync(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtItemList;

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 1234
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$11;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iput p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$11;->val$start:I

    iput p3, p0, Lcom/metamoji/nt/itemlist/NtItemList$11;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1240
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/itemlist/NtItemList$11$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/itemlist/NtItemList$11$1;-><init>(Lcom/metamoji/nt/itemlist/NtItemList$11;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
