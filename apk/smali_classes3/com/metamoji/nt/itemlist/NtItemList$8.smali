.class Lcom/metamoji/nt/itemlist/NtItemList$8;
.super Ljava/util/TimerTask;
.source "NtItemList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtItemList;->autoScroll(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtItemList;

.field final synthetic val$isVertical:Z

.field final synthetic val$scrollerWidth:I

.field final synthetic val$threshold:I


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemList;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 633
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$8;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iput p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$8;->val$threshold:I

    iput p3, p0, Lcom/metamoji/nt/itemlist/NtItemList$8;->val$scrollerWidth:I

    iput-boolean p4, p0, Lcom/metamoji/nt/itemlist/NtItemList$8;->val$isVertical:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$8;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget v1, p0, Lcom/metamoji/nt/itemlist/NtItemList$8;->val$threshold:I

    iget v2, p0, Lcom/metamoji/nt/itemlist/NtItemList$8;->val$scrollerWidth:I

    iget-boolean v3, p0, Lcom/metamoji/nt/itemlist/NtItemList$8;->val$isVertical:Z

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/nt/itemlist/NtItemList;->-$$Nest$mautoScroll(Lcom/metamoji/nt/itemlist/NtItemList;IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 640
    :catch_0
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$8;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget v1, p0, Lcom/metamoji/nt/itemlist/NtItemList$8;->val$threshold:I

    invoke-static {v0, v1}, Lcom/metamoji/nt/itemlist/NtItemList;->-$$Nest$mautoScrollStop(Lcom/metamoji/nt/itemlist/NtItemList;I)V

    return-void
.end method
