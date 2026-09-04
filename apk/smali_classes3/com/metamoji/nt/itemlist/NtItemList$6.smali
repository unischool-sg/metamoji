.class Lcom/metamoji/nt/itemlist/NtItemList$6;
.super Ljava/lang/Object;
.source "NtItemList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtItemList;->scroll(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtItemList;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemList;I)V
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

    .line 504
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$6;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iput p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$6;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget v1, p0, Lcom/metamoji/nt/itemlist/NtItemList$6;->val$position:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/metamoji/nt/itemlist/NtItemList;->-$$Nest$mscroll(Lcom/metamoji/nt/itemlist/NtItemList;IZ)V

    return-void
.end method
